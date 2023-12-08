package live.chambando.ws.rest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import live.chambando.ws.model.ItemPedido;
import live.chambando.ws.model.Pedido;
import live.chambando.ws.model.dto.PedidoDTO;
import live.chambando.ws.repository.ItemPedidoRepository;
import live.chambando.ws.repository.PedidoRepository;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
public class PedidoREST {
	
	@Autowired
	private PedidoRepository pedidoRepository;
	
	@Autowired
	private ItemPedidoRepository itemPedidoRepository;
	
	@Autowired
	private ModelMapper mapper;

    @GetMapping("/pedidos")
    public List<PedidoDTO> obterTodosPedidos() {
    	List<Pedido> lista = pedidoRepository.findAll();
    	return lista.stream().map(e -> mapper.map(e,  PedidoDTO.class)).collect(Collectors.toList());
    }

    @GetMapping("/pedidos/{id}")
    public ResponseEntity<Pedido> obterPedidoPorId(@PathVariable("id") int id) {
        return pedidoRepository.findById((long) id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping("/pedidos")
    public ResponseEntity<PedidoDTO> inserirPedido(@RequestBody Pedido pedido) {
    	pedido.setUrlPedido(criarUrlPedido(pedido));
        pedidoRepository.save(pedido);
        pedido.getItens().forEach(e -> itemPedidoRepository.save(e));
        for (ItemPedido itemPedido : pedido.getItens()) {
        	System.out.println(itemPedido.getId());
            itemPedido.setPedido(pedido);
            itemPedidoRepository.save(itemPedido);
        }
        PedidoDTO pedidoDTO = mapper.map(pedido, PedidoDTO.class);
		return ResponseEntity.status(HttpStatus.CREATED).body(pedidoDTO);
    }

    @PutMapping("/pedidos/{id}")
    public ResponseEntity<PedidoDTO> alterarPedido(@PathVariable("id") Long id, @RequestBody Pedido pedidoAtualizado) {
        Optional<Pedido> optionalPedido = pedidoRepository.findById(id);

        if (optionalPedido.isPresent()) {
            Pedido pedidoExistente = optionalPedido.get();
            pedidoExistente.setLogradouro(pedidoAtualizado.getLogradouro());
            pedidoExistente.setNumeroPredial(pedidoAtualizado.getNumeroPredial());
            pedidoExistente.setBairro(pedidoAtualizado.getBairro());
            pedidoExistente.setCidade(pedidoAtualizado.getCidade());
            pedidoExistente.setReferencia(pedidoAtualizado.getReferencia());
            pedidoExistente.setNome_cliente(pedidoAtualizado.getNome_cliente());
            pedidoExistente.setTel_cliente(pedidoAtualizado.getNome_cliente());
            pedidoExistente.setUrlPedido(pedidoAtualizado.getUrlPedido());

            List<ItemPedido> itensAtualizados = pedidoAtualizado.getItens();
            for (ItemPedido itemAtualizado : itensAtualizados) {
                Optional<ItemPedido> optionalItemExistente = pedidoExistente.getItens().stream()
                        .filter(itemExistente -> itemExistente.getId() == itemAtualizado.getId())
                        .findFirst();

                if (optionalItemExistente.isPresent()) {
                    ItemPedido itemExistente = optionalItemExistente.get();
                    itemExistente.setQuantidade(itemAtualizado.getQuantidade());
                } else {
                    itemAtualizado.setPedido(pedidoExistente);
                    pedidoExistente.getItens().add(itemAtualizado);
                }
            }

            pedidoRepository.save(pedidoExistente);
            PedidoDTO pedidoDTO = mapper.map(pedidoExistente, PedidoDTO.class);

            return ResponseEntity.ok(pedidoDTO);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/pedidos/{id}")
    public ResponseEntity<PedidoDTO> removerPedido(@PathVariable("id") Long id) {
        Optional<Pedido> optionalPedido = pedidoRepository.findById(id);
        if (optionalPedido.isPresent()) {
            Pedido pedido = optionalPedido.get();

            itemPedidoRepository.deleteAll(pedido.getItens());
            pedidoRepository.delete(pedido);
            return ResponseEntity.ok(mapper.map(pedido, PedidoDTO.class));
        } else {
            return ResponseEntity.notFound().build();
        }
    }
    
    private String criarUrlPedido(Pedido pedido) {
        List<ItemPedido> itens = pedido.getItens();
        BigDecimal total = totalPedido(itens);
        
        String itensPedido = itens.stream()
                .map(item -> String.format("   %dx %s (R$%.2f)", item.getQuantidade(), item.getProduto().getNome(), item.getProduto().getPreco()))
                .collect(Collectors.joining("\n"));
        String dadosRetirada = String.format("   Nome: %s\n   Telefone: %s\n   Endereço: %s %s, %s - %s",
                pedido.getNome_cliente(), pedido.getTel_cliente(), pedido.getLogradouro(), pedido.getNumeroPredial(), pedido.getBairro(), pedido.getCidade());
        String pagamento = String.format("   PAGAMENTO %s", pedido.getOpcaoPagamento().toUpperCase());
        String stringPedido = String.format("✅ NOVO PEDIDO\n\n    Pedido #%d\n\n%s\n\n   TOTAL: R$%.2f\n\n   ------------------------------\n   ▶ DADOS PARA RETIRADA\n\n%s\n\n   ------------------------------\n   ▶ PAGAMENTO\n\n%s",
                pedido.getId(), itensPedido, total, dadosRetirada, pagamento);
        String url = "https://api.whatsapp.com/send?phone=41996110756&text=" + encodeURIComponent(stringPedido);

        return url;
    }

    private BigDecimal totalPedido(List<ItemPedido> itens) {
        BigDecimal total = BigDecimal.ZERO;
        for (ItemPedido item : itens) {
            BigDecimal quantidade = BigDecimal.valueOf(item.getQuantidade());
            double preco = item.getProduto().getPreco();
            total = total.add(quantidade.multiply(BigDecimal.valueOf(preco)));
        }
        return total;
    }


    private String encodeURIComponent(String value) {
        try {
            return URLEncoder.encode(value, StandardCharsets.UTF_8.toString());
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Erro ao codificar a URL", e);
        }
    }

}


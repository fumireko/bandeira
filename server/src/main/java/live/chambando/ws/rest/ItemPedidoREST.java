package live.chambando.ws.rest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import live.chambando.ws.model.ItemPedido;
import live.chambando.ws.model.dto.ItemPedidoDTO;
import live.chambando.ws.repository.ItemPedidoRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
public class ItemPedidoREST {

	@Autowired
	private ItemPedidoRepository repo;
	
	@Autowired
	private ModelMapper mapper;
	
    public static List<ItemPedido> listItemPedido = new ArrayList<>();

    @GetMapping("/itempedido")
    public List<ItemPedidoDTO> obterTodosItemPedidos() {
        List<ItemPedido> lista = repo.findAll();
        return lista.stream().map(e -> mapper.map(e, ItemPedidoDTO.class)).collect(Collectors.toList());
    }

    @GetMapping("/itempedido/{id}")
    public ItemPedido obterItemPedidoPorId(@PathVariable("id") int id) {
        ItemPedido ItemPedido = listItemPedido.stream().filter(p -> p.getId() == id).findAny().orElse(null);
        return ItemPedido;
    }

    @PostMapping("/itempedido")
    public ItemPedidoDTO inserirItemPedido(@RequestBody ItemPedidoDTO itempedido) {
    	repo.save(mapper.map(itempedido, ItemPedido.class));
    	Optional<ItemPedido> ip = repo.findById(itempedido.getId());
    	return mapper.map(ip, ItemPedidoDTO.class);    
    }

    @PutMapping("/itempedido/{id}")
    public ItemPedido alterarItemPedido(@PathVariable("id") int id, @RequestBody ItemPedido itempedido) {
        ItemPedido ip = listItemPedido.stream().filter(pd -> pd.getId() == id).findAny().orElse(null);

        if (ip != null) {
            ip.setId(itempedido.getId());
            ip.setPedido(itempedido.getPedido());
            ip.setProduto(itempedido.getProduto());
            ip.setQuantidade(itempedido.getQuantidade());
        }

        return ip;
    }

    @DeleteMapping("/itempedido/{id}")
    public ItemPedido removerItemPedido(@PathVariable("id") int id) {
        ItemPedido itempedido = listItemPedido.stream().filter(pd -> pd.getId() == id).findAny().orElse(null);

        if (itempedido != null) listItemPedido.removeIf(p -> p.getId() == id);
        return itempedido;
    }

}

package live.chambando.ws.rest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import live.chambando.ws.model.Pedido;
import live.chambando.ws.model.Produto;
import live.chambando.ws.model.dto.PedidoDTO;
import live.chambando.ws.model.dto.ProdutoDTO;
import live.chambando.ws.repository.ProdutoRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
public class ProdutoREST {

	@Autowired
	private ProdutoRepository produtoRepository;
	
	@Autowired
	private ModelMapper mapper;

    @GetMapping("/produtos")
    public List<ProdutoDTO> obterTodosProdutos() {
        List<Produto> lista = produtoRepository.findAll();
        return lista.stream().map(e -> mapper.map(e, ProdutoDTO.class)).collect(Collectors.toList());
    }

    @GetMapping("/produtos/{id}")
    public ResponseEntity<Produto> obterProdutoPorId(@PathVariable("id") int id) {
        return produtoRepository.findById((long) id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @PostMapping("/produtos")
    public ProdutoDTO inserirProduto(@RequestBody ProdutoDTO produto) {
    	produtoRepository.save(mapper.map(produto, Produto.class));
    	Produto pr = produtoRepository.findByNome(produto.getNome());
    	return mapper.map(pr, ProdutoDTO.class);    
    }

    @PutMapping("/produtos/{id}")
    public ResponseEntity<ProdutoDTO> alterarProduto(@PathVariable("id") Long id, @RequestBody Produto produtoAtualizado) {
        Optional<Produto> optionalProduto = produtoRepository.findById(id);

        if (optionalProduto.isPresent()) {
            Produto produtoExistente = optionalProduto.get();
            produtoExistente.setNome(produtoAtualizado.getNome());
            produtoExistente.setPreco(produtoAtualizado.getPreco());
            produtoExistente.setImagem(produtoAtualizado.getImagem());
           	produtoRepository.save(produtoExistente);
	        ProdutoDTO produtoDTO = mapper.map(produtoExistente, ProdutoDTO.class);
	
	        return ResponseEntity.ok(produtoDTO);
	    } else {
	        return ResponseEntity.notFound().build();
	    }
    }

    @DeleteMapping("/produtos/{id}")
    public ResponseEntity<ProdutoDTO> removerProduto(@PathVariable("id") Long id) {
    	Optional<Produto> optionalProduto = produtoRepository.findById(id);
        if (optionalProduto.isPresent()) {
        	Produto produto = optionalProduto.get();
            produtoRepository.delete(produto);
            return ResponseEntity.ok(mapper.map(produto, ProdutoDTO.class));
        } else {
            return ResponseEntity.notFound().build();
        }
    }

}

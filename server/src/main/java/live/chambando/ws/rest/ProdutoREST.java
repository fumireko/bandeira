package live.chambando.ws.rest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import live.chambando.ws.model.Categoria;
import live.chambando.ws.model.Pedido;
import live.chambando.ws.model.Produto;
import live.chambando.ws.model.dto.PedidoDTO;
import live.chambando.ws.model.dto.ProdutoDTO;
import live.chambando.ws.repository.CategoriaRepository;
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
	private CategoriaRepository categoriaRepository;
	
	@Autowired
	private ModelMapper mapper;

	@GetMapping("/produtos")
	public ResponseEntity<List<ProdutoDTO>> obterProdutos(@RequestParam(name = "categoria", required = false) Long categoriaId) {
	    if (categoriaId != null) {
	        Optional<Categoria> categoriaOptional = categoriaRepository.findById(categoriaId);
	        if (categoriaOptional.isEmpty())
	            return ResponseEntity.notFound().build();

	        List<ProdutoDTO> produtosDTO = produtoRepository.findByCategoria(categoriaOptional.get()).stream()
	                .map(produto -> mapper.map(produto, ProdutoDTO.class))
	                .collect(Collectors.toList());

	        return ResponseEntity.ok(produtosDTO);
	    } else {
	        List<ProdutoDTO> produtosDTO = produtoRepository.findAll().stream()
	                .map(produto -> mapper.map(produto, ProdutoDTO.class))
	                .collect(Collectors.toList());

	        return ResponseEntity.ok(produtosDTO);
	    }
	}
	
	@GetMapping("/produtos/ativos")
	public ResponseEntity<List<ProdutoDTO>> obterProdutosAtivos(@RequestParam(name = "categoria", required = false) Long categoriaId) {
	    List<ProdutoDTO> produtosDTO;

	    if (categoriaId != null) {
	        Optional<Categoria> categoriaOptional = categoriaRepository.findById(categoriaId);
	        if (categoriaOptional.isEmpty())
	            return ResponseEntity.notFound().build();

	        produtosDTO = produtoRepository.findByCategoria(categoriaOptional.get()).stream()
	                .filter(Produto::isDisponivel)
	                .map(produto -> mapper.map(produto, ProdutoDTO.class))
	                .collect(Collectors.toList());
	    } else {
	        produtosDTO = produtoRepository.findAll().stream()
	                .filter(Produto::isDisponivel)
	                .map(produto -> mapper.map(produto, ProdutoDTO.class))
	                .collect(Collectors.toList());
	    }

	    return ResponseEntity.ok(produtosDTO);
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
            produtoExistente.setCategoria(produtoAtualizado.getCategoria());
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
        	produto.setDisponivel(false);
            produtoRepository.save(produto);
            return ResponseEntity.ok(mapper.map(produto, ProdutoDTO.class));
        } else {
            return ResponseEntity.notFound().build();
        }
    }

}

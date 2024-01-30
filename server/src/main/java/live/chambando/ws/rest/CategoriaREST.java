package live.chambando.ws.rest;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import live.chambando.ws.model.Categoria;
import live.chambando.ws.model.dto.CategoriaDTO;
import live.chambando.ws.repository.CategoriaRepository;

@CrossOrigin
@RestController
public class CategoriaREST {

	@Autowired
	private CategoriaRepository categoriaRepository;
	
	@Autowired
	private ModelMapper mapper;
	
	@GetMapping("/categorias")
	public List<CategoriaDTO> obterTodasCategorias() {
		List<Categoria> list = categoriaRepository.findAll();
		return list.stream().map(e -> mapper.map(e, CategoriaDTO.class)).collect(Collectors.toList());
	}
	
	@GetMapping("/categorias/peso/")
	public List<CategoriaDTO> obterCategoriasPeso() {
		return categoriaRepository.findAll().stream().filter(Categoria::isUnidade).map(c -> mapper.map(c, CategoriaDTO.class)).collect(Collectors.toList());
	}
	
	@GetMapping("/categorias/unitario/")
	public List<CategoriaDTO> obterCategoriasUnitario() {
		return categoriaRepository.findAll().stream().filter(c -> !c.isUnidade()).map(c -> mapper.map(c, CategoriaDTO.class)).collect(Collectors.toList());
	}
	
	@PostMapping("/categorias")
	public CategoriaDTO inserirCategoria(@RequestBody CategoriaDTO categoria) {
		categoriaRepository.save(mapper.map(categoria, Categoria.class));
		Categoria ct = categoriaRepository.findByDescricao(categoria.getDescricao());
		return mapper.map(ct, CategoriaDTO.class);		
	}
	
	@PutMapping("/categorias/{id}")
	public ResponseEntity<CategoriaDTO> alterarCategoria(@PathVariable("id") Long id, @RequestBody Categoria categoriaAtualizada){
		Optional<Categoria> optionalCategoria = categoriaRepository.findById(id);
		
		if(optionalCategoria.isPresent()) {
			Categoria categoriaExistente = optionalCategoria.get();
			categoriaExistente.setDescricao(categoriaAtualizada.getDescricao());
			categoriaExistente.setUnidade(categoriaAtualizada.isUnidade());
			categoriaRepository.save(categoriaExistente);
			CategoriaDTO categoriaDTO = mapper.map(categoriaExistente, CategoriaDTO.class);
			return ResponseEntity.ok(categoriaDTO);
		}
		else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@DeleteMapping("/categorias/{id}")
	public ResponseEntity<CategoriaDTO> removerCategoria(@PathVariable("id") Long id){
		Optional<Categoria> optionalCategoria = categoriaRepository.findById(id);
		if(optionalCategoria.isPresent()) {
			Categoria categoria = optionalCategoria.get();
			categoriaRepository.delete(categoria);
			return ResponseEntity.ok(mapper.map(categoria, CategoriaDTO.class));
		}
		else {
			return ResponseEntity.notFound().build();
		}
	}
}

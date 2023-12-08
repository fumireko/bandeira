package live.chambando.ws.rest;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import live.chambando.ws.model.Cliente;
import live.chambando.ws.model.dto.ClienteDTO;
import live.chambando.ws.repository.ClienteRepository;

@CrossOrigin
@RestController
public class ClienteREST {
	@Autowired
	private ClienteRepository repo;
	
	@Autowired
	private ModelMapper mapper;
	
	public static List<Cliente> listaClientes = new ArrayList<>();
	
	@GetMapping("/clientes") 
	public List<ClienteDTO> obterTodosClientes() {
		List<Cliente> lista = repo.findAll();
		return lista.stream().map(e -> mapper.map(e, ClienteDTO.class)).collect(Collectors.toList());
	}
	
	@GetMapping("/clientes/{id}")
	public Cliente obterTodosClientes(@PathVariable("id") int id) {
		return listaClientes.stream().filter(cl -> cl.getId() == id).findAny().orElse(null);
	}
	
	@PostMapping("/clientes")
	public ClienteDTO inserirCliente(@RequestBody ClienteDTO cliente) {
		repo.save(mapper.map(cliente, Cliente.class));
		Cliente cl = repo.findByLogin(cliente.getLogin());
		return mapper.map(cl, ClienteDTO.class);
	}
	
	@PutMapping("/clientes/{id}")
	public Cliente alterarCliente(@PathVariable("id") int id, @RequestBody Cliente cliente) {
	    listaClientes.stream()
	        .filter(cl -> cl.getId() == id)
	        .findFirst()
	        .ifPresent(c -> {
	            c.setId(cliente.getId());
	            c.setLogin(cliente.getLogin());
	            c.setNome(cliente.getNome());
	            c.setSenha(cliente.getSenha());
	            c.setSalt(cliente.getSalt());
	        });

	    return listaClientes.stream()
	        .filter(cl -> cl.getId() == id)
	        .findFirst()
	        .orElse(null);
	}
	
	@DeleteMapping("/clientes/{id}")
	public Cliente removerCliente(@PathVariable("id") int id){
		Cliente cliente = listaClientes.stream().filter(cl -> cl.getId() == id).findAny().orElse(null);
		if(cliente != null) listaClientes.removeIf(c -> c.getId() == id);
		return cliente;
	}
}

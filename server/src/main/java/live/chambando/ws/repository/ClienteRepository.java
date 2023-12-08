package live.chambando.ws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import live.chambando.ws.model.Cliente;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long>{

	Cliente findByNome(String nome);
	Cliente findByLogin(String login);
	Cliente findBySenha(String senha);
	
}

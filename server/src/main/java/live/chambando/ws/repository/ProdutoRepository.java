package live.chambando.ws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import live.chambando.ws.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long>{

	Produto findByNome(String nome);
	Produto findByPreco(double preco);
	
}

package live.chambando.ws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import live.chambando.ws.model.Cliente;
import live.chambando.ws.model.Pedido;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, Long>{
	
	Pedido findByTelCliente(String telCliente);
	
}

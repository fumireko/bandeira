package live.chambando.ws.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import live.chambando.ws.model.ItemPedido;
import live.chambando.ws.model.Pedido;
import live.chambando.ws.model.Produto;

@Repository
public interface ItemPedidoRepository extends JpaRepository<ItemPedido, Long>{
	
	ItemPedido findByProduto(Produto p);
	ItemPedido findByPedido(Pedido p);
	
}

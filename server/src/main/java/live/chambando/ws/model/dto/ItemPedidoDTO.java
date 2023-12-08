package live.chambando.ws.model.dto;

import java.io.Serializable;

import live.chambando.ws.model.Pedido;
import live.chambando.ws.model.Produto;

public class ItemPedidoDTO implements Serializable{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
    private Pedido pedido;
    private Produto produto;
    private int quantidade;
    
    public ItemPedidoDTO(Pedido pedido, Produto produto, int quantidade) {
    	this.setPedido(pedido);
    	this.setProduto(produto);
    	this.setQuantidade(quantidade);
    }
    
    public ItemPedidoDTO() {
		// TODO Auto-generated constructor stub
	}
    
    public long getId() {
		return id;
	}
    public void setId(long id) {
		this.id = id;
	}
	public Pedido getPedido() {
		return pedido;
	}
	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}
	public Produto getProduto() {
		return produto;
	}
	public void setProduto(Produto produto) {
		this.produto = produto;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

}

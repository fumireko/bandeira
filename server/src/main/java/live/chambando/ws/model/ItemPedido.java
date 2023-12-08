package live.chambando.ws.model;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name="tb_itempedido")
public class ItemPedido implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name = "itempedido_seq", sequenceName = "tb_itempedido_id_itempedido_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "itempedido_seq")
	@Column(name="id_itempedido")
    private long id;
    
    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="fkPedido")
    @JsonBackReference
    private Pedido pedido;

    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="fkProduto")
    private Produto produto;
    
    @Column(name="qtde_itempedido")
    private int quantidade;
    
    public ItemPedido(Pedido pedido, Produto produto, int quantidade) {
    	this.setPedido(pedido);
    	this.setProduto(produto);
    	this.setQuantidade(quantidade);
    }
    
    public ItemPedido() {
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

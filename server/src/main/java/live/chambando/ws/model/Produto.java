package live.chambando.ws.model;

import java.io.Serializable;

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
@Table(name="tb_produtos")
public class Produto implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name = "produto_seq", sequenceName = "tb_produtos_id_produto_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "produto_seq")
	@Column(name="id_produto")
    private long id;
	
	@Column(name="nome_produto")
    private String nome;
	
	@Column(name="preco_produto")
    private double preco;
	
	@Column(name="imagem_produto", length=1024)
    private String imagem;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="fkCategoria")
	private Categoria categoria;
    
    public Produto(String nome, double preco, String imagem, Categoria categoria) {
		this.setNome(nome);
		this.setPreco(preco);
		this.setImagem(imagem);
		this.setCategoria(categoria);
	}
    
    public Produto() {
		// TODO Auto-generated constructor stub
	}
    
    public long getId() {
		return id;
	}
    public void setId(long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
}

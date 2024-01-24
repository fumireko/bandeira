package live.chambando.ws.model.dto;

import java.io.Serializable;
import java.time.LocalDateTime;

import live.chambando.ws.model.Categoria;

public class ProdutoDTO implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
    private String nome;
    private double preco;
    private String imagem;
    private Categoria categoria;
    
    public ProdutoDTO(String nome, double preco, String imagem, Categoria categoria) {
		this.setNome(nome);
		this.setPreco(preco);
		this.setImagem(imagem);
		this.setCategoria(categoria);
	}
    
    public ProdutoDTO() {
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

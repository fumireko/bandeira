package live.chambando.ws.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name="tb_categorias")
public class Categoria implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name = "categoria_seq", sequenceName = "tb_categorias_id_categoria_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "categoria_seq")
	@Column(name="id_categoria")
	private long id;
	
	@Column(name="desc_categoria")
	private String descricao;
	
	@Column(name="unidade_categoria")
	private boolean unidade;
	
	public Categoria(String descricao) {
		this.setDescricao(descricao);
	}
	
	public Categoria() {
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public boolean isUnidade() {
		return unidade;
	}
	
	public void setUnidade(boolean unidade) {
		this.unidade = unidade;
	}
	
}

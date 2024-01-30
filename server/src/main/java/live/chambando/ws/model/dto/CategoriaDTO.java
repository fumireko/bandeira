package live.chambando.ws.model.dto;

import java.io.Serializable;

public class CategoriaDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long id;
	private String descricao;
	private boolean unidade;
	
	public CategoriaDTO(String descricao) {
		this.setDescricao(descricao);
	}
	
	public CategoriaDTO() {
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

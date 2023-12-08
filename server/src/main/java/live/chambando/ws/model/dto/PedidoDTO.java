package live.chambando.ws.model.dto;

import java.io.Serializable;
import java.util.List;
import live.chambando.ws.model.Cliente;
import live.chambando.ws.model.ItemPedido;

public class PedidoDTO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String cidade;
	private String logradouro;
	private String numero_predial;
	private String bairro;
	private String referencia;
	private String nome_cliente;
	private String tel_cliente;
	private String opcaoPagamento;
	private String urlPedido;
	private List<ItemPedido> itens;
	
	public PedidoDTO(Cliente cliente, List<ItemPedido> itens) {
		this.setNome_cliente(nome_cliente);
		this.setTel_cliente(tel_cliente);
		this.setCidade(cidade);
		this.setLogradouro(logradouro);
		this.setNumeroPredial(numero_predial);
		this.setBairro(bairro);
		this.setReferencia(referencia);
		this.setItens(itens);
	}

	public PedidoDTO() {
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}

	public List<ItemPedido> getItens() {
		return itens;
	}

	public void setItens(List<ItemPedido> itens) {
		this.itens = itens;
	}
	
	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNumeroPredial() {
		return numero_predial;
	}

	public void setNumeroPredial(String numero_predial) {
		this.numero_predial = numero_predial;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getReferencia() {
		return referencia;
	}

	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}

	public String getNome_cliente() {
		return nome_cliente;
	}

	public void setNome_cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}

	public String getTel_cliente() {
		return tel_cliente;
	}

	public void setTel_cliente(String tel_cliente) {
		this.tel_cliente = tel_cliente;
	}

	public void setOpcaoPagamento(String opcaoPagamento) {
		this.opcaoPagamento = opcaoPagamento;
	}
	
	public String getOpcaoPagamento() {
		return opcaoPagamento;
	}

	public String getUrlPedido() {
		return urlPedido;
	}
	
	public void setUrlPedido(String urlPedido) {
		this.urlPedido = urlPedido;
	}

}


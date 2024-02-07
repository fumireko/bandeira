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
	private boolean entregue;
	private List<ItemPedido> itens;
    private String dataCriado;
    private String dataEntregue;
    private double precoFrete;
    private double totalPedido;
	
	public PedidoDTO(Cliente cliente, List<ItemPedido> itens) {
		this.setNome_cliente(nome_cliente);
		this.setTel_cliente(tel_cliente);
		this.setCidade(cidade);
		this.setLogradouro(logradouro);
		this.setNumeroPredial(numero_predial);
		this.setBairro(bairro);
		this.setReferencia(referencia);
		this.setItens(itens);
		this.setEntregue(false);
		this.setPrecoFrete(0);
		this.setTotalPedido(0);
		this.setDataCriado("");
		this.setDataEntregue("");
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

	public boolean isEntregue() {
		return entregue;
	}
	
	public void setEntregue(boolean entregue) {
		this.entregue = entregue;
	}
	
	public String getDataCriado() {
		return dataCriado;
	}
	
	public void setDataCriado(String dataCriado) {
		this.dataCriado = dataCriado;
	}
	
	public String getDataEntregue() {
		return dataEntregue;
	}
	
	public void setDataEntregue(String dataEntregue) {
		this.dataEntregue = dataEntregue;
	}
	
	public double getPrecoFrete() {
		return precoFrete;
	}
	
	public void setPrecoFrete(double precoFrete) {
		this.precoFrete = precoFrete;
	}
	
	public void setTotalPedido(double totalPedido) {
		this.totalPedido = totalPedido;
	}
	
	public double getTotalPedido() {
		return totalPedido;
	}
}


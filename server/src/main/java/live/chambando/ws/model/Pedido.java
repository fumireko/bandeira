package live.chambando.ws.model;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name="tb_pedidos")
public class Pedido implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name = "pedido_seq", sequenceName = "tb_pedidos_id_pedido_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pedido_seq")
	@Column(name="id_pedido")
	private long id;
	
	@Column(name="cidade_pedido")
	private String cidade;
	
	@Column(name="logradouro_pedido")
	private String logradouro;
	
	@Column(name="numero_predial_pedido")
	private String numero_predial;
	
	@Column(name="bairro_pedido")
	private String bairro;
	
	@Column(name="referencia_pedido")
	private String referencia;
	
	@Column(name="nome_cliente_pedido")
	private String nomeCliente;
	
	@Column(name="tel_cliente_pedido")
	private String telCliente;
	
	@Column(name="opcao_pagamento")
	private String opcaoPagamento;
	
	@Column(name="url_pedido", length=1024)
	private String urlPedido;
	
	@OneToMany(mappedBy="pedido")
	private List<ItemPedido> itens;
	
	public Pedido(String nome_cliente, String tel_cliente, String cidade, String logradouro, String numero_predial, String bairro, String referencia, List<ItemPedido> itens) {
		this.setNome_cliente(nome_cliente);
		this.setTel_cliente(tel_cliente);
		this.setCidade(cidade);
		this.setLogradouro(logradouro);
		this.setNumeroPredial(numero_predial);
		this.setBairro(bairro);
		this.setReferencia(referencia);
		this.setItens(itens);
	}

	public Pedido() {
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	

    @OneToMany(mappedBy = "pedido", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JsonManagedReference
	public List<ItemPedido> getItens() {
		return itens;
	}

	public void setItens(List<ItemPedido> itens) {
		this.itens = itens;
	}
	
	public void adicionarProduto(Produto produto, int quantidade) {
        ItemPedido itemPedido = new ItemPedido(this, produto, quantidade);
        this.itens.add(itemPedido);
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
		return nomeCliente;
	}

	public void setNome_cliente(String nome_cliente) {
		this.nomeCliente = nome_cliente;
	}

	public String getTel_cliente() {
		return telCliente;
	}

	public void setTel_cliente(String tel_cliente) {
		this.telCliente = tel_cliente;
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

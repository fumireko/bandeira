package live.chambando.ws.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
	
	@Column(name="entregue")
	private boolean entregue;
	
	@OneToMany(mappedBy="pedido")
	private List<ItemPedido> itens;
	
	@Column(name = "data_criado")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm:ss")
    private String dataCriado;

    @Column(name = "data_entregue")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm:ss")
    private String dataEntregue;
    
    @Column(name = "preco_frete")
    private double precoFrete;
    
    @Column(name = "total_pedido")
    private double totalPedido;
	
	public Pedido(String nome_cliente, String tel_cliente, String cidade, String logradouro, String numero_predial, String bairro, String referencia, List<ItemPedido> itens) {
		this.setNome_cliente(nome_cliente);
		this.setTel_cliente(tel_cliente);
		this.setCidade(cidade);
		this.setLogradouro(logradouro);
		this.setNumeroPredial(numero_predial);
		this.setBairro(bairro);
		this.setReferencia(referencia);
		this.setItens(itens);
		this.setEntregue(false);
		this.setDataCriado(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss").format(LocalDateTime.now()));
		this.setPrecoFrete(0);
		this.setTotalPedido(0);
	}

	public Pedido() {
		// TODO Auto-generated constructor stub
	}
	
    @Override
    public String toString() {
        return "Pedido{" +
                "id=" + id +
                ", cidade='" + cidade + '\'' +
                ", logradouro='" + logradouro + '\'' +
                ", numero_predial='" + numero_predial + '\'' +
                ", bairro='" + bairro + '\'' +
                ", referencia='" + referencia + '\'' +
                ", nomeCliente='" + nomeCliente + '\'' +
                ", telCliente='" + telCliente + '\'' +
                ", opcaoPagamento='" + opcaoPagamento + '\'' +
                ", urlPedido='" + urlPedido + '\'' +
                ", entregue=" + entregue +
                ", itens=" + itens +
                ", dataCriado='" + dataCriado + '\'' +
                ", dataEntregue='" + dataEntregue + '\'' +
                ", precoFrete=" + precoFrete +
                '}';
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
	
	public boolean isEntregue() {
		return entregue;
	}
	
	public void setEntregue(boolean entregue) {
		if(entregue) {
			System.out.println("true");
			this.entregue = entregue;
			this.setDataEntregue(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss").format(LocalDateTime.now()));
		}
		else this.entregue = entregue;
	}
	
	public void setDataCriado(String dataCriado) {
		this.dataCriado = dataCriado;
	}
	
	public String getDataCriado() {
		return dataCriado;
	}
	
	public void setDataEntregue(String dataEntregue) {
		this.dataEntregue = dataEntregue;
	}
	
	public String getDataEntregue() {
		return dataEntregue;
	}
	
	public void setPrecoFrete(double precoFrete) {
		this.precoFrete = precoFrete;
	}
	
	public double getPrecoFrete() {
		return precoFrete;
	}
	
	public void setTotalPedido(double totalPedido) {
		this.totalPedido = totalPedido;
	}
	
	public double getTotalPedido() {
		return totalPedido;
	}
}

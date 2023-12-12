import { Component, ElementRef, OnInit, Renderer2, ViewChild } from '@angular/core';
import { PedidoService } from 'src/app/pedido/services/pedido.service';
import { ProdutoService } from 'src/app/produto/services/produto.service';
import { Itempedido } from 'src/app/shared/models/itempedido.model';
import { FormControl, NgForm } from '@angular/forms';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { Router } from '@angular/router';


@Component({
  selector: 'app-pedido-cliente',
  templateUrl: './pedido-cliente.component.html',
  styleUrls: ['./pedido-cliente.component.css']
})

export class PedidoClienteComponent implements OnInit{

  @ViewChild("formEntrega") formEntrega! : NgForm;
  @ViewChild("formRetirada") formRetirada! : NgForm;
  @ViewChild('container', { static: true }) container!: ElementRef;
  static idPedido: number;
  static urlPedido: string;

  constructor(
    private pedidoService: PedidoService, 
    private produtoService: ProdutoService,
    private renderer: Renderer2,
    private router: Router
  ){}

  formEntregaControl!: FormControl;
  formRetiradaControl!: FormControl;
  urlPedidoString: string = '';
  ultimoIdServidor: number = 0;
  
  async ngOnInit() {
    this.formEntregaControl = new FormControl(this.formEntrega);
    this.formRetiradaControl = new FormControl(this.formRetirada);
    this.ultimoIdServidor = await this.pedidoService.getUltimoIdServidor();

    // Subscribe to value changes for the form controls
    this.formEntregaControl.valueChanges.subscribe(() => {
      console.log("muda");
      this.urlPedido()
        .then(url => {
          this.urlPedidoString = url;
          console.log("pedidoUrl");
        })
        .catch(error => {
          console.error('Error generating URL:', error);
          this.urlPedidoString = '';
        });

    });

    this.formRetiradaControl.valueChanges.subscribe(() => {
      console.log("muda");
      this.urlPedido()
        .then(url => {
          this.urlPedidoString = url;
          console.log("pedidoUrl");
        })
        .catch(error => {
          console.error('Error generating URL:', error);
          this.urlPedidoString = '';
        });
    });
  }

  stringPedido: string = '';
  pedido: Pedido | undefined;
  cidade: string = ''; 
  logradouro: string = ''; 
  numero_predial: string = ''; 
  bairro: string = ''; 
  referencia: string = ''; 
  nome_cliente: string = ''; 
  tel_cliente: string = ''; 
  opcaoSelecionada: string = ''; // Valor padrão
  opcaoPagamento: string = '';

  onRadioChange(event: any) {
    this.opcaoSelecionada = event.target.id;
  }

  selectPagamento(event: any) {
    this.opcaoPagamento = event.target.id;
  }

  parseFloat(a: any){
    return parseFloat(a);
  }

  totalPedido(itensPedido: Itempedido[]): number {
    return parseFloat(itensPedido.reduce((total, item) => {
      return total + item.quantidade * item.produto.preco;
    }, 0).toFixed(2));
  }

  getItens(){
    return this.pedidoService.getItens();
  }

  async criarPedido(): Promise<void> {

    const novoPedido: Pedido = {
      id: this.ultimoIdServidor,
      cidade: this.cidade,
      logradouro: this.logradouro,
      numero_predial: this.numero_predial,
      bairro: this.bairro,
      referencia: this.referencia,
      nome_cliente: this.nome_cliente,
      tel_cliente: this.tel_cliente,
      opcaoPagamento: this.opcaoPagamento,
      urlPedido: '',
      itens: this.getItens()
    };
  
    novoPedido.id = this.ultimoIdServidor++;
    console.log("criarPedido(): id " + novoPedido.id);
    this.pedidoService.enviarPedido(novoPedido);
    console.log("POST /pedidos: " + JSON.stringify(novoPedido));
    PedidoClienteComponent.idPedido = novoPedido.id;
    console.log("GET /pedidos/" + novoPedido.id);
    this.pedidoService.getPedido(novoPedido.id).subscribe((pedido: Pedido) => {
      PedidoClienteComponent.urlPedido = pedido.urlPedido;
      window.open(PedidoClienteComponent.urlPedido);
    });    
    this.router.navigate(['/enviar-pedido']);
  }

  async urlPedido(): Promise<string> {
    const pedido = await this.criarPedido();
    if (pedido != null) {
        return "https://api.whatsapp.com/send?phone=41996110756&text=" + encodeURIComponent(this.stringPedido);
    } else {
        return '';
    }
  }

  async enviarPedido(event: any) {
    event.preventDefault(); // Prevent the default behavior of the anchor tag

    const pedido = await this.criarPedido();
    if (pedido != null) {
      const url = "https://api.whatsapp.com/send?phone=41996110756&text=" + encodeURIComponent(this.stringPedido);

      const wi = window.open('about:blank', '_blank');

      setTimeout(() => {
        wi!.location.href = url;
      }, 500);

      console.log(JSON.stringify(pedido));

      if (this.formEntrega) {
        this.formEntrega.resetForm();
      }
      if (this.formRetirada) {
        this.formRetirada.resetForm();
      }
    } else {
      window.open("https://google.com", '_blank');
    }
  }
  
}

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

  constructor(
    private pedidoService: PedidoService, 
    private produtoService: ProdutoService,
    private renderer: Renderer2,
    private router: Router
  ){}

  ngOnInit() {
  }

  @ViewChild("formEntrega") formEntrega!: NgForm;
  @ViewChild("formRetirada") formRetirada!: NgForm;

  opcaoSelecionada: string = 'entrega'; // Valor padrão
  opcaoPagamento: string = 'cartao'; // Valor padrão
  cidade: string = '';
  logradouro: string = '';
  numero_predial: string = '';
  bairro: string = '';
  referencia: string = '';
  nome_cliente: string = '';
  tel_cliente: string = '';

  onRadioChange(event: any) {
    this.opcaoSelecionada = event.target.value;
  }

  selectPagamento(event: any) {
    this.opcaoPagamento = event.target.id;
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
  
    this.pedidoService.enviarPedido(novoPedido);
    this.router.navigate(['/enviar-pedido']);
  }  
}

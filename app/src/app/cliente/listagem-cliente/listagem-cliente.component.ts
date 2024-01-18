import { Component, Input } from '@angular/core';
import { Router } from '@angular/router';
import { ItemPedido } from 'src/app/shared/models/itempedido.model';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { PedidoService } from 'src/app/shared/services/pedido.service';
import { ProdutoService } from 'src/app/shared/services/produto.service';

@Component({
  selector: 'app-listagem-cliente',
  templateUrl: './listagem-cliente.component.html',
  styleUrls: ['./listagem-cliente.component.css']
})
export class ListagemClienteComponent {
  @Input() produto?: Produto;
  produtos: Produto[] = [];
  pedido: Pedido = new Pedido();
  itemPedido: ItemPedido = new ItemPedido();

  constructor(private router: Router, 
              private pedidoService: PedidoService, 
              private produtoService: ProdutoService){}

  ngOnInit(){
    this.itemPedido.pedido = this.pedido;
    this.produtoService.listarTodos().subscribe(
      (data) => {this.produtos = data},
      (error) => {console.error("Erro ao carregar os produtos");}
    );
  }

  adicionar(produto: Produto){
    this.pedidoService.adicionarItemPedido(this.pedido, produto);
  }

  remover(produto: Produto){
    this.pedidoService.removerItemPedido(this.pedido, produto);
  }

  getQuantidade(produto: Produto){
    return this.pedido.itens?.find(item => item.produto === produto)?.quantidade;
  }

  temItens = (): boolean => this.produtos.length > 0;
}

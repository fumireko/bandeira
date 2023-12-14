import { Component, Input } from '@angular/core';
import { Router } from '@angular/router';
import { PedidoService } from 'src/app/pedido/services/pedido.service';
import { ProdutoService } from 'src/app/produto/services/produto.service';
import { Itempedido } from 'src/app/shared/models/itempedido.model';
import { Produto } from 'src/app/shared/models/produto.model';

@Component({
  selector: 'app-listagem-cliente',
  templateUrl: './listagem-cliente.component.html',
  styleUrls: ['./listagem-cliente.component.css']
})

export class ListagemClienteComponent {
  @Input() produto?: Produto;
  produtos: Produto[] = [];

  constructor(private router: Router, private pedidoService: PedidoService, private produtoService: ProdutoService){}

  ngOnInit(){
    this.carregarProdutos();
  }

  carregarProdutos(){
    this.produtoService.listarTodos().subscribe(
      (data) => {this.produtos = data},
      (error) => {console.error("Erro ao carregar os produtos");}
    );
  }

  adicionar(produto: Produto){
    this.pedidoService.adicionar(produto);
  }

  remover(produto: Produto){
    this.pedidoService.remover(produto);
  }

  getQuantidade(produto: Produto){
    return this.pedidoService.getQuantidade(produto);
  }

  temItens(): boolean {
    return this.pedidoService.temItens();
  }

  tela(route: string){
    this.router.navigate([route]);
  }
}

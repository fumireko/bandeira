import { Component, Input } from '@angular/core';
import { Router } from '@angular/router';
import { Observable, forkJoin } from 'rxjs';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { ItemPedido } from 'src/app/shared/models/itempedido.model';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';
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
  filtrados: Produto[] = [];
  categorias: Categoria[] = [];
  pedido: Pedido = new Pedido();
  itemPedido: ItemPedido = new ItemPedido();

  constructor(private router: Router, 
              private pedidoService: PedidoService, 
              private produtoService: ProdutoService,
              private categoriaService: CategoriaService){}

  ngOnInit(){
    this.itemPedido.pedido = this.pedido;
    this.produtoService.listarTodos().subscribe(
      (data) => {this.produtos = data},
      (error) => {console.error("Erro ao carregar os produtos");}
    );
    this.categoriaService.listarTodas().subscribe(
      (data) => {this.categorias = data},
      (error) => {console.error("Erro ao carregar as categorias");}
    );
  }

  adicionar(produto: Produto){
    this.pedidoService.adicionarItemPedido(this.pedido, produto);
  }

  remover(produto: Produto){
    this.pedidoService.removerItemPedido(this.pedido, produto);
  }

  filtrarCategoria(id: number | undefined){
    this.produtoService.buscarPorCategoria(id).subscribe(
      (data) => {this.filtrados = data}
    )
  }

  getQuantidade(produto: Produto){
    return this.pedido.itens?.find(item => item.produto === produto)?.quantidade;
  }

  temItens = (): boolean => this.produtos.length > 0;
}

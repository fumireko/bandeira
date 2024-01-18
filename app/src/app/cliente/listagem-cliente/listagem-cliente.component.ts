import { Component, Input, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
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
  @ViewChild("formPedido") formPedido!: NgForm;
  @Input() produto?: Produto;
  produtos: Produto[] = [];
  categorias: Categoria[] = [];
  produtosCategoria: Produto[][] = [];
  finalizarPedido: boolean = false;
  urlPedido: string | undefined = "";

  pedido: Pedido = new Pedido();
  itens: ItemPedido[] = [];

  constructor(private router: Router, 
              private pedidoService: PedidoService, 
              private produtoService: ProdutoService,
              private categoriaService: CategoriaService){}

  ngOnInit() {
    this.categoriaService.listarTodas().subscribe(
      (data) => {
        this.categorias = data;
        for (let categoria of this.categorias) {
          this.produtoService.listarTodos(categoria.id).subscribe(
            (produtos) => {
              if(categoria.id) this.produtosCategoria[categoria.id] = produtos;
            },
            (error) => {
              console.error(`Erro ao carregar produtos da categoria ${categoria.id}`);
            }
          );
        }
      },
      (error) => {
        console.error("Erro ao carregar as categorias");
      }
    );
  }

  enviarPedido() {
    if (this.formPedido.valid) {
      this.pedido.itens = this.itens;
      this.pedidoService.inserir(this.pedido).subscribe(
        (pedidoInserido) => {
          console.log('Pedido inserido com sucesso:', pedidoInserido);
          this.urlPedido = pedidoInserido.urlPedido;
        },
        (error) => {
          console.error('Erro ao inserir pedido:', error);
        }
      );
    }
  }
  

  adicionar(produto: Produto){
    const item = this.itens?.find(
      item => item.produto?.id === produto.id
    );
    
    if (item) item.quantidade = (item.quantidade ?? 0) + 1; 

    else {
      this.itens?.push({
          quantidade: 1,
          produto: produto,
      });
    }
  }

  remover(produto: Produto){
    const item = this.itens?.find(
      item => item.produto?.id === produto.id
    );

    if (item) item.quantidade = (item.quantidade ?? 0) - 1;

    else this.itens.filter(
      item => item.produto?.id !== produto.id
    );

    console.log(JSON.stringify(this.itens));
  }

  selecionarCategoria(id: number | undefined){
    this.produtoService.listarTodos(id).subscribe(
      (data) => {console.log(data)}
    )
  }

  getQuantidade(produto: Produto){
    return this.itens?.find(item => item.produto === produto)?.quantidade;
  }

  subtotal(itens: ItemPedido[]): number {
    return itens.reduce((total, item) => {
      const precoProduto = item.produto?.preco || 0; // Certifica-se de que o preço não seja nulo ou indefinido
      return total + (precoProduto * item.quantidade);
    }, 0);
  }  

  temItens(): boolean {
    return this.itens ? this.itens.length > 0 : false;
  }

  checkUndefined(a: any) {if(a) return a;}
}

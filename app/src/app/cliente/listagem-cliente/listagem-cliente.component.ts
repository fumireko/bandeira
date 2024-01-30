import { Component, Input, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { Observable, forkJoin } from 'rxjs';
import { AppComponent } from 'src/app/app.component';
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
  categoriasPeso: Categoria[] = [];
  categoriasUnitario: Categoria[] = [];
  produtosCategoria: Produto[][] = [];
  finalizarPedido: boolean = false;
  urlPedido: string | undefined = "";
  fretesITP = AppComponent.fretesITP.sort((a, b) => a.bairro.localeCompare(b.bairro));;
  fretesRBS = AppComponent.fretesRBS.sort((a, b) => a.bairro.localeCompare(b.bairro));;

  pedido: Pedido = new Pedido();
  itens: ItemPedido[] = [];

  constructor(private router: Router, 
              private pedidoService: PedidoService, 
              private produtoService: ProdutoService,
              private categoriaService: CategoriaService){}

  ngOnInit() {
    this.categoriaService.listarUnitario().subscribe(
      (data) => {
        this.categoriasUnitario = data;
        for (let categoria of this.categoriasUnitario) {
          this.produtoService.listarAtivos(categoria.id).subscribe(
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
    this.categoriaService.listarPeso().subscribe(
      (data) => {
        this.categoriasPeso = data;
        for (let categoria of this.categoriasPeso) {
          this.produtoService.listarAtivos(categoria.id).subscribe(
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
      let dataAtual = new Date().toLocaleString('en-GB', { day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: false }).replace(/\//g, '-').replace(',', '');
      this.pedido.dataCriado = dataAtual;
      this.pedido.dataEntregue = dataAtual;
      this.pedido.precoFrete = this.getPrecoFrete(this.pedido.bairro, this.pedido.cidade);
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

  adicionarPeso(produto: Produto){
    const item = this.itens?.find(
      item => item.produto?.id === produto.id
    );
    
    if (item) item.quantidade = (item.quantidade ?? 0) + 0.1; 

    else {
      this.itens?.push({
          quantidade: 0.1,
          produto: produto,
      });
    }
  }

  removerPeso(produto: Produto){
    const item = this.itens?.find(
      item => item.produto?.id === produto.id
    );

    if (item) item.quantidade = (item.quantidade ?? 0.1) - 0.1;

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
  
  getPrecoFrete(bairro: string | undefined, cidade: string | undefined): number | undefined {
    const fretes = cidade === 'Rio Branco do Sul' ? AppComponent.fretesRBS : cidade === 'Itaperuçu' ? AppComponent.fretesITP : [];
    return fretes.find(item => item.bairro === bairro)?.precoFrete || 0;
  }

  temItens(): boolean {
    return this.itens ? this.itens.length > 0 : false;
  }

  getQuantidadeFormatada(produto: Produto): string {
    const quantidade = this.checkUndefined(this.getQuantidade(produto));
    
    if (quantidade && quantidade > 0) {
      const quantidadeArredondada = this.checkUndefined(this.round(quantidade * 1000));
      return quantidadeArredondada ? `${quantidadeArredondada}g selecionados` : '';
    }
  
    return '';
  }  

  calcularSubtotal(item: ItemPedido){
    return this.checkUndefined(item.produto?.preco) * item.quantidade;
  }

  countItensPedido(): number { return this.itens.length }

  checkUndefined(a: any) {if(a) return a;}

  round(a: any): number{
    if(a) return Math.round(a);
    else return 0;
  }
}

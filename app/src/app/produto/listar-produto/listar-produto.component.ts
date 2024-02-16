import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { CacheService } from 'src/app/shared/services/cache.service';
import { CategoriaService } from 'src/app/shared/services/categoria.service';
import { ProdutoService } from 'src/app/shared/services/produto.service';

@Component({
  selector: 'app-listar-produto',
  templateUrl: './listar-produto.component.html',
  styleUrls: ['./listar-produto.component.css']
})
export class ListarProdutoComponent implements OnInit {
  produtos: Produto[] = [];
  categorias: Categoria[] = [];
  filtrados: Produto[] = [];
  mostrarImagens: boolean = true;
  mostrarIndisponiveis: boolean = true;
  termoBusca: string = "";
  colunaOrdenacao: string = 'id';
  ordemAscendente: boolean = true;
  categoriaDescricao: string = "";

  constructor(private produtoService: ProdutoService,
              private router: Router,
              private categoriaService: CategoriaService,
              private cacheService: CacheService) {}

  ngOnInit() {
    const opcoesTela = this.cacheService.getOpcoesListarProdutos();
    this.mostrarImagens = opcoesTela.mostrarImagens;
    this.mostrarIndisponiveis = opcoesTela.mostrarIndisponiveis;
    this.termoBusca = opcoesTela.termoBusca;
    
    this.atualizarListagem();

    this.categoriaService.listarTodas().subscribe(categorias => {
      this.categorias = categorias;
    });
  }

  filtrarProdutos() {
    this.filtrados = this.produtos.filter(produto => {
      const nomeIncluido = produto.nome?.toLowerCase().includes(this.termoBusca.toLowerCase());
      const categoriaIncluida = this.categoriaDescricao === "" || produto.categoria?.descricao?.toLowerCase() === this.categoriaDescricao.toLowerCase();
      return nomeIncluido && categoriaIncluida;
    });
  
    this.ordenarProdutos();
  }    

  ordenarProdutos() {
    this.filtrados.sort((a, b) => {
      const valorA = this.obterValorOrdenacao(a, this.colunaOrdenacao);
      const valorB = this.obterValorOrdenacao(b, this.colunaOrdenacao);
      return (valorA < valorB ? -1 : valorA > valorB ? 1 : 0) * (this.ordemAscendente ? 1 : -1);
    });
  }

  obterValorOrdenacao(obj: any, coluna: string): any {
    return coluna.split('.').reduce((o, key) => (o && o[key] !== undefined ? o[key] : null), obj);
  }

  alternarOrdem(coluna: string) {
    this.ordemAscendente = this.colunaOrdenacao === coluna ? !this.ordemAscendente : true;
    this.colunaOrdenacao = coluna;
    this.ordenarProdutos();
  }

  gerarListagem(): Observable<Produto []> {
    return this.produtoService.listarTodos();
  }

  gerarListagemAtivos(): Observable<Produto []> {
    return this.produtoService.listarAtivos();
  }

  atualizarListagem() {
    if (this.mostrarIndisponiveis) {
      // Se a checkbox estiver marcada, listar todos os produtos
      this.gerarListagem().subscribe(produtos => {
        this.produtos = this.filtrados = produtos;
        this.ordenarProdutos();
        this.filtrarProdutos();
      });
    } else {
      // Se a checkbox estiver desmarcada, listar apenas os produtos ativos
      this.gerarListagemAtivos().subscribe(produtos => {
        this.produtos = this.filtrados = produtos;
        this.ordenarProdutos();
        this.filtrarProdutos();
      });
    }
  }

  atualizarOpcoesTela() {
    const opcoesTela = {
      mostrarImagens: this.mostrarImagens,
      mostrarIndisponiveis: this.mostrarIndisponiveis,
      termoBusca: this.termoBusca
    };
    this.cacheService.setOpcoesListarProdutos(opcoesTela);
  }

  remover(produto: Produto) {
    if (window.confirm(`Remover o produto ${produto.nome}?`)) {
      this.produtoService.remover(produto).subscribe(() => {
        this.atualizarListagem();
      });
    }
  }

  checkUndefined(e: any){
    if(e) return e;
  }
  
}

import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';
import { ProdutoService } from 'src/app/shared/services/produto.service';

@Component({
  selector: 'app-produtos-encarte',
  templateUrl: './produtos-encarte.component.html',
  styleUrls: ['./produtos-encarte.component.css']
})
export class ProdutosEncarteComponent implements OnInit {
  produtos: Produto[] = [];
  categorias: Categoria[] = [];
  filtrados: Produto[] = [];
  selecionados: Produto[] = []
  mostrarImagens: boolean = true;
  mostrarIndisponiveis: boolean = false;
  termoBusca: string = "";
  colunaOrdenacao: string = 'id';
  ordemAscendente: boolean = true;
  categoriaDescricao: string = "";

  constructor(private produtoService: ProdutoService,
              private router: Router,
              private categoriaService: CategoriaService) {}

  ngOnInit() {
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

  remover(produto: Produto) {
    if (window.confirm(`Remover o produto ${produto.nome}?`)) {
      this.produtoService.remover(produto).subscribe(() => {
        this.atualizarListagem();
      });
    }
  }

  toggleSelection(product: Produto) {
    if (this.isSelected(product)) {
      this.selecionados = this.selecionados.filter(p => p !== product);
    } else {
      this.selecionados.push(product);
    }
  }

  isSelected(product: Produto): boolean {
    return this.selecionados.includes(product);
  }

  gerarEncarte() {
    this.router.navigate(['encarte/gerar'], { state: { selecionados: this.selecionados } });
  }

  checkUndefined(e: any){
    if(e) return e;
  }

}

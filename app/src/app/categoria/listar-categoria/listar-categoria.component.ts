import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';

@Component({
  selector: 'app-listar-categoria',
  templateUrl: './listar-categoria.component.html',
  styleUrls: ['./listar-categoria.component.css']
})
export class ListarCategoriaComponent implements OnInit{
  categorias: Categoria[] = [];
  filtradas: Categoria[] = [];
  colunaOrdenacao: string = 'id';
  ordemAscendente: boolean = true;
  
  constructor(private router: Router,
              private categoriaService: CategoriaService) {}

  ngOnInit() {
    this.gerarListagem().subscribe(categorias => {
      this.categorias = this.filtradas = categorias;
      this.ordenarCategorias();
    });
  }    

  ordenarCategorias() {
    this.filtradas.sort((a, b) => {
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
    this.ordenarCategorias();
  }

  gerarListagem(): Observable<Categoria []> {
    return this.categoriaService.listarTodas();
  }

  remover(categoria: Categoria) {
    if (window.confirm(`Remover a categoria ${categoria.descricao}? Todos os produtos nesta categoria serão excluídos.`)) {
      this.categoriaService.remover(categoria?.id).subscribe(() => {
        this.gerarListagem().subscribe(categorias => {
          this.categorias = categorias;
          this.filtradas = this.categorias;
        });
      });
    }
  }
  
}

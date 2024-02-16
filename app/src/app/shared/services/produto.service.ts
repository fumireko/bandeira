import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable, of, tap } from 'rxjs';
import { AppComponent } from 'src/app/app.component';
import { Categoria } from '../models/categoria.model';
import { Produto } from '../models/produto.model';

@Injectable({
  providedIn: 'root'
})

export class ProdutoService {
  private produtosCache: Produto[] = [];

  constructor(private http: HttpClient) {
    setInterval(() => this.limparCache(), 60 * 60 * 1000); // 1 hora
  }

  private limparCache(): void {
    this.produtosCache = [];
  }

  listarTodos(categoria_id?: number): Observable<Produto[]> {
    let url = `${AppComponent.backendURL}/produtos`;
    if (categoria_id !== undefined)
      url += `?categoria=${categoria_id}`;
      
    if (this.produtosCache.length === 0) {
      return this.http.get<Produto[]>(url).pipe(
        tap(produtos => this.produtosCache = produtos)
      );
    } else {
      return of(this.produtosCache);
    }
  }  

  listarAtivos(categoria_id?: number): Observable<Produto[]> {
    let url = `${AppComponent.backendURL}/produtos/ativos`;
    if (categoria_id !== undefined)
      url += `?categoria=${categoria_id}`;
      
    if (this.produtosCache.length === 0) {
      return this.http.get<Produto[]>(url).pipe(
        tap(produtos => this.produtosCache = produtos)
      );
    } else {
      return of(this.produtosCache);
    }
  }

  buscarPorID(id: number): Observable<Produto | undefined>{
    return this.http.get<Produto>(`${AppComponent.backendURL}/produtos/${id}`);
  }

  inserir(produto: Produto): Observable<Produto> {
    this.produtosCache.push(produto); 
    return this.http.post<Produto>(`${AppComponent.backendURL}/produtos`, produto);
  }

  atualizar(produto: Produto): Observable<Produto> {
    const index = this.produtosCache.findIndex(p => p.id === produto.id);
    if (index !== -1) this.produtosCache[index] = produto; 
    return this.http.put<Produto>(`${AppComponent.backendURL}/produtos/${produto.id}`, produto);
  }

  remover(produto: Produto): Observable<Produto> {
    const index = this.produtosCache.findIndex(p => p.id === produto.id);
    if (index !== -1) this.produtosCache.splice(index, 1); 
    return this.http.delete<Produto>(`${AppComponent.backendURL}/produtos/${produto.id}`);
  }
}
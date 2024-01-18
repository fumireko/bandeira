import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';
import { AppComponent } from 'src/app/app.component';
import { Categoria } from '../models/categoria.model';
import { Produto } from '../models/produto.model';

@Injectable({
  providedIn: 'root'
})

export class ProdutoService {
  constructor(private http: HttpClient) { }

  listarTodos(categoria_id?: number): Observable<Produto[]> {
    let url = `${AppComponent.backendURL}/produtos`;
    if (categoria_id !== undefined)
      url += `?categoria=${categoria_id}`;
    return this.http.get<Produto[]>(url);
  }

  inserir(produto: Produto){
    return this.http.post<Produto>(`${AppComponent.backendURL}/produtos`, produto);
  }

  buscarPorID(id: number): Observable<Produto | undefined>{
    return this.http.get<Produto>(`${AppComponent.backendURL}/produtos/${id}`);
  }

  buscarPorCategoria(id: number | undefined): Observable<Produto[]>{
    return this.http.get<Produto[]>(`${AppComponent.backendURL}/produtos?categoria=${id}`);
  }

  atualizar(produto: Produto): Observable<Produto> {
    return this.http.put<Produto>(`${AppComponent.backendURL}/produtos/${produto.id}`, produto);
  }

  remover(produto: Produto): Observable<Produto> {
    return this.http.delete<Produto>(`${AppComponent.backendURL}/produtos/${produto.id}`);
  }
}
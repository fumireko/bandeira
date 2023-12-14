import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';
import { AppComponent } from 'src/app/app.component';
import { PedidoService } from 'src/app/pedido/services/pedido.service';
import { Produto } from 'src/app/shared/models/produto.model';

@Injectable({
  providedIn: 'root'
})
export class ProdutoService {
  constructor(private http: HttpClient) { }

  listarTodos(): Observable<Produto[]> {
    console.log(JSON.stringify(this.http.get<Produto[]>(`${AppComponent.backendURL}/produtos`)));
    return this.http.get<Produto[]>(`${AppComponent.backendURL}/produtos`);
  }

  inserir(produto: Produto){
    return this.http.post<Produto>(`${AppComponent.backendURL}/produtos`, produto);
  }

  buscarPorID(id: number): Observable<Produto | undefined>{
    return this.listarTodos().pipe(
      map(e => e.find(p => p.id == id))
    );
  }

  atualizar(produto: Produto): Observable<Produto> {
    return this.http.put<Produto>(`${AppComponent.backendURL}/produtos/${produto.id}`, produto);
  }

  remover(id: number): Observable<Produto> {
    return this.http.delete<Produto>(`${AppComponent.backendURL}/produtos/${id}`);
  }
}

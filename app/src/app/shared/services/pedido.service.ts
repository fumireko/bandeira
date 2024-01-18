import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, map, Observable } from 'rxjs';
import { AppComponent } from 'src/app/app.component';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { ItemPedido } from '../models/itempedido.model';

@Injectable({
  providedIn: 'root'
})
export class PedidoService {
  private pedidos: Pedido[] = [];
  public pedidosSubject: BehaviorSubject<Pedido[]> = new BehaviorSubject<Pedido[]>([]);
  pedidos$ = this.pedidosSubject.asObservable();

  constructor(private http: HttpClient) {}

  listarTodos(): Observable<Pedido[]> {
    console.log(JSON.stringify(this.http.get<Pedido[]>(`${AppComponent.backendURL}/pedidos`)));
    return this.http.get<Pedido[]>(`${AppComponent.backendURL}/pedidos`);
  }

  inserir(pedido: Pedido): Observable<Pedido> {
    return this.http.post<Pedido>(`${AppComponent.backendURL}/pedidos`, pedido);
  }

  buscarPorID(id: number): Observable<Pedido | undefined> {
    return this.listarTodos().pipe(
      map(pedidos => pedidos.find(pedido => pedido.id === id))
    );
  }

  atualizar(pedido: Pedido): Observable<Pedido> {
    return this.http.put<Pedido>(`${AppComponent.backendURL}/pedidos/${pedido.id}`, pedido);
  }

  remover(id: number): Observable<Pedido> {
    return this.http.delete<Pedido>(`${AppComponent.backendURL}/pedidos/${id}`);
  }

  marcarEntregue(pedido: Pedido): Observable<Pedido> {
    return this.http.put<Pedido>(`${AppComponent.backendURL}/pedidos/${pedido.id}/entregar`, pedido);
  }
}

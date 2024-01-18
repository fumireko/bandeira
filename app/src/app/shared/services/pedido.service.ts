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
    return this.http.put<Pedido>(`${AppComponent.backendURL}/pedidos/${pedido.id}/entregue`, pedido);
  }

  adicionarItemPedido(pedidoId: number, produto: Produto) {
    const pedido = this.pedidos.find(p => p.id === pedidoId);

    if (pedido) {
      const itemExistente = pedido.itens?.find(item => item.produto?.id === produto.id);

      if (itemExistente) {
        itemExistente.quantidade = (itemExistente.quantidade ?? 0) + 1;
      } else {
        const novoItem: ItemPedido = {
          quantidade: 1,
          produto: produto,
        };
        pedido.itens?.push(novoItem);
      }

      this.pedidosSubject.next([...this.pedidos]);
      console.log(JSON.stringify(this.pedidos));
    } else {
      console.error('Pedido não encontrado');
    }
  }

  limparItensPedido(pedidoId: number): void {
    const pedido = this.pedidos.find(p => p.id === pedidoId);

    if (pedido) {
      pedido.itens = [];
      this.pedidosSubject.next([...this.pedidos]);
      console.log(JSON.stringify(this.pedidos));
    } else {
      console.error('Pedido não encontrado');
    }
  }
}

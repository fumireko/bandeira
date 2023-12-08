import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Itempedido } from 'src/app/shared/models/itempedido.model';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { Produto } from 'src/app/shared/models/produto.model';

@Injectable({
  providedIn: 'root'
})
export class PedidoService {
  private backendURL = 'http://localhost:8081';
  private itensPedido: Itempedido[] = [];
  public itensPedidoSubject: BehaviorSubject<Itempedido[]> = new BehaviorSubject<Itempedido[]>([]);
  itensPedido$ = this.itensPedidoSubject.asObservable();

  constructor(private http: HttpClient){}

  adicionar(produto: Produto) {
    const itemExistente = this.itensPedido.find(item => item.produto.id === produto.id);

    if (itemExistente) itemExistente.quantidade++;
    else {
      const novoItem: Itempedido = {
        quantidade: 1,
        produto: produto,
      };
      this.itensPedido.push(novoItem);
    }

    this.itensPedidoSubject.next([...this.itensPedido]);
    console.log(JSON.stringify(this.itensPedido));
  }

  remover(produto: Produto) {
    const itemExistente = this.itensPedido.find(item => item.produto.id === produto.id);
  
    if (itemExistente) {
      itemExistente.quantidade--;
  
      if (itemExistente.quantidade === 0) {
        const index = this.itensPedido.indexOf(itemExistente);
        if (index !== -1) {
          this.itensPedido.splice(index, 1);
        }
      }
    } else {
      // Se o item não existe, não faz nada ou pode emitir um aviso/log
      console.warn('Tentativa de remover um item que não existe no pedido.');
    }
  
    this.itensPedidoSubject.next([...this.itensPedido]);
    console.log(JSON.stringify(this.itensPedido));
  }  

  getQuantidade(produto: Produto){
    return this.itensPedido.find(item => item.produto.id === produto.id)?.quantidade;
  }

  atualizar(){
    this.itensPedidoSubject.next([...this.itensPedido]);
  }

  getItens(){
    return this.itensPedido;
  }

  temItens(): boolean {
    return this.itensPedido.length > 0;
  }

  getUltimoIdServidor(): Promise<number> {
    // Faz a chamada HTTP GET para obter os pedidos
    return this.http.get<any[]>(`${this.backendURL}/pedidos`).toPromise()
      .then(pedidos => {
        if (pedidos && pedidos.length > 0) {
          // Se houver pedidos, retorna o maior ID encontrado
          const maxId = Math.max(...pedidos.map(pedido => pedido.id));
          return maxId;
        } else {
          // Se não houver pedidos, retorna 0
          return 0;
        }
      })
      .catch(error => {
        console.error('Erro ao obter pedidos do servidor', error);
        throw error; // Você pode manipular o erro conforme necessário
      });
  }

  getPedido(id: number): Observable<Pedido> {
    const url = `${this.backendURL}/pedidos/${id}`;
    return this.http.get<Pedido>(url);
  }

  enviarPedido(pedido: Pedido): void {
    this.http.post(`${this.backendURL}/pedidos`, pedido)
      .subscribe(
        (response: any) => {
          console.log('Pedido enviado com sucesso', response);
          this.limparItensPedido();
        },
        (error: any) => {
          console.error('Erro ao enviar o pedido', error);
        }
      );
  }

  private limparItensPedido(): void {
    this.itensPedido = [];
    this.itensPedidoSubject.next([...this.itensPedido]);
  }
}

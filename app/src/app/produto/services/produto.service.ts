import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { PedidoService } from 'src/app/pedido/services/pedido.service';
import { Produto } from 'src/app/shared/models/produto.model';

@Injectable({
  providedIn: 'root'
})
export class ProdutoService {
  constructor(private http: HttpClient) { }

  getProdutos(): Observable<Produto[]> {
    return this.http.get<Produto[]>(`${PedidoService.backendURL}/produtos`);
  }

}

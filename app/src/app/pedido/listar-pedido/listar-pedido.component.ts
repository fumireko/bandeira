import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { PedidoService } from 'src/app/shared/services/pedido.service';

@Component({
  selector: 'app-listar-pedido',
  templateUrl: './listar-pedido.component.html',
  styleUrls: ['./listar-pedido.component.css']
})
export class ListarPedidoComponent implements OnInit {
  pedidos: Pedido[] = [];
  filtrados: Pedido[] = [];
  colunaOrdenacao: string = 'id';
  ordemAscendente: boolean = true;
  
  constructor(private router: Router,
              private pedidoService: PedidoService) {}

  ngOnInit() {
    this.gerarListagem().subscribe(pedidos => {
      this.pedidos = this.filtrados = pedidos;
      this.ordenarPedidos();
    });
  }    

  ordenarPedidos() {
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
    this.ordenarPedidos();
  }

  gerarListagem(): Observable<Pedido []> {
    return this.pedidoService.listarTodos();
  }

  remover(pedido: Pedido) {
    if (window.confirm(`Marcar o pedido ${pedido.id} como entregue?`)) {
      this.pedidoService.marcarEntregue(pedido).subscribe(
        (pedidoInserido) => {
          console.log('Pedido marcado como entregue:', pedidoInserido);
          this.gerarListagem().subscribe(pedidos => {
            this.pedidos = pedidos;
            this.filtrados = this.pedidos;
          });
        },
        (error) => {
          console.error('Erro ao marcar como entregue:', error);
        }        
      );
    }
  }
  
}

import { Component } from '@angular/core';
import { PedidoService } from 'src/app/pedido/services/pedido.service';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { PedidoClienteComponent } from '../pedido-cliente/pedido-cliente.component';

@Component({
  selector: 'app-enviar-pedido',
  templateUrl: './enviar-pedido.component.html',
  styleUrls: ['./enviar-pedido.component.css']
})
export class EnviarPedidoComponent {
  constructor(
    private pedidoService: PedidoService
  ){}

  getUrl(): string{
    return ''
  }

  limpar() {
    this.pedidoService.limparItensPedido();
  }
}

import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PedidoService } from './services/pedido.service';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    FormsModule
  ],
  providers: [
    PedidoService
  ]
})
export class PedidoModule { }

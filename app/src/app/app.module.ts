import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { ProdutoComponent } from './produto/produto.component';
import { PedidoComponent } from './pedido/pedido.component';
import { EditarPedidoComponent } from './pedido/editar-pedido/editar-pedido.component';
import { ListarPedidoComponent } from './pedido/listar-pedido/listar-pedido.component';
import { InserirPedidoComponent } from './pedido/inserir-pedido/inserir-pedido.component';
import { EditarProdutoComponent } from './produto/editar-produto/editar-produto.component';
import { InserirProdutoComponent } from './produto/inserir-produto/inserir-produto.component';
import { ListarProdutoComponent } from './produto/listar-produto/listar-produto.component';
import { ClienteComponent } from './cliente/cliente.component';
import { ListagemClienteComponent } from './cliente/listagem-cliente/listagem-cliente.component';
import { PedidoClienteComponent } from './cliente/pedido-cliente/pedido-cliente.component';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    ProdutoComponent,
    PedidoComponent,
    EditarPedidoComponent,
    ListarPedidoComponent,
    InserirPedidoComponent,
    EditarProdutoComponent,
    InserirProdutoComponent,
    ListarProdutoComponent,
    ClienteComponent,
    ListagemClienteComponent,
    PedidoClienteComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
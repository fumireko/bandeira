import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { ListarProdutoComponent } from './produto/listar-produto/listar-produto.component';
import { EditarProdutoComponent } from './produto/editar-produto/editar-produto.component';
import { InserirProdutoComponent } from './produto/inserir-produto/inserir-produto.component';
import { EditarCategoriaComponent } from './categoria/editar-categoria/editar-categoria.component';
import { ListarCategoriaComponent } from './categoria/listar-categoria/listar-categoria.component';
import { InserirCategoriaComponent } from './categoria/inserir-categoria/inserir-categoria.component';
import { ListarPedidoComponent } from './pedido/listar-pedido/listar-pedido.component';
import { EditarPedidoComponent } from './pedido/editar-pedido/editar-pedido.component';


@NgModule({
  declarations: [
    AppComponent,
    ListarProdutoComponent,
    EditarProdutoComponent,
    InserirProdutoComponent,
    EditarCategoriaComponent,
    ListarCategoriaComponent,
    InserirCategoriaComponent,
    ListarPedidoComponent,
    EditarPedidoComponent,
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
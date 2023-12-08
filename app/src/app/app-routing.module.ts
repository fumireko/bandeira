import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ListagemClienteComponent } from './cliente/listagem-cliente/listagem-cliente.component';
import { PedidoClienteComponent } from './cliente/pedido-cliente/pedido-cliente.component';
import { EditarPedidoComponent } from './pedido/editar-pedido/editar-pedido.component';
import { InserirPedidoComponent } from './pedido/inserir-pedido/inserir-pedido.component';
import { ListarPedidoComponent } from './pedido/listar-pedido/listar-pedido.component';
import { EditarProdutoComponent } from './produto/editar-produto/editar-produto.component';
import { InserirProdutoComponent } from './produto/inserir-produto/inserir-produto.component';
import { ListarProdutoComponent } from './produto/listar-produto/listar-produto.component';

const routes: Routes = [
  {
    path: 'pedidos/listar',
    component: ListarPedidoComponent
  },
  {
    path: 'pedidos/novo',
    component: InserirPedidoComponent
  },
  {
    path: 'pedidos/editar/:id',
    component: EditarPedidoComponent
  },
  {
    path: 'produtos/listar',
    component: ListarProdutoComponent
  },
  {
    path: 'produtos/novo',
    component: InserirProdutoComponent
  },
  {
    path: 'produtos/editar/:id',
    component: EditarProdutoComponent
  },
  {
    path: '',
    component: ListagemClienteComponent
  },
  {
    path: 'pedido',
    component: PedidoClienteComponent
  }
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule { }

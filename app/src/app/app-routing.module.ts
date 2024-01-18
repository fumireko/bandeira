import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';
import { ListarProdutoComponent } from './produto/listar-produto/listar-produto.component';
import { InserirProdutoComponent } from './produto/inserir-produto/inserir-produto.component';
import { EditarProdutoComponent } from './produto/editar-produto/editar-produto.component';
import { EditarCategoriaComponent } from './categoria/editar-categoria/editar-categoria.component';
import { InserirCategoriaComponent } from './categoria/inserir-categoria/inserir-categoria.component';
import { ListarCategoriaComponent } from './categoria/listar-categoria/listar-categoria.component';
import { ListarPedidoComponent } from './pedido/listar-pedido/listar-pedido.component';
import { ListagemClienteComponent } from './cliente/listagem-cliente/listagem-cliente.component';

const routes: Routes = [
  {
    path: 'produtos',
    component: ListarProdutoComponent
  },
  {
    path: 'produtos/inserir',
    component: InserirProdutoComponent
  },
  {
    path: 'produtos/editar/:id',
    component: EditarProdutoComponent
  },
  {
    path: 'categorias',
    component: ListarCategoriaComponent
  },
  {
    path: 'categorias/inserir',
    component: InserirCategoriaComponent
  },
  {
    path: 'categorias/editar/:id',
    component: EditarCategoriaComponent
  },
  {
    path: 'pedidos',
    component: ListarPedidoComponent
  },
  {
    path: '',
    component: ListagemClienteComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule { }

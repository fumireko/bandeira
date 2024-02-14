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
import { AutenticacaoComponent } from './cliente/autenticacao/autenticacao.component';
import { EditarPedidoComponent } from './pedido/editar-pedido/editar-pedido.component';
import { ProdutosEncarteComponent } from './encarte/produtos-encarte/produtos-encarte.component';
import { GerarEncarteComponent } from './encarte/gerar-encarte/gerar-encarte.component';

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
    path: 'pedidos/editar/:id',
    component: EditarPedidoComponent
  },
  {
    path: 'encartes/produtos',
    component: ProdutosEncarteComponent
  },
  {
    path: 'encartes/gerar',
    component: GerarEncarteComponent,
    data: {
      selecionados: [] // This is just a placeholder. Route data will be dynamically set.
    }
  },
  {
    path: 'autenticacao',
    component: AutenticacaoComponent
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

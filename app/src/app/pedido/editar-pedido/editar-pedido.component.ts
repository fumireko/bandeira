import { Component, ViewChild } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { ItemPedido } from 'src/app/shared/models/itempedido.model';
import { Pedido } from 'src/app/shared/models/pedido.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { PedidoService } from 'src/app/shared/services/pedido.service';
import { ProdutoService } from 'src/app/shared/services/produto.service';
import { AppComponent } from 'src/app/app.component';

@Component({
  selector: 'app-editar-pedido',
  templateUrl: './editar-pedido.component.html',
  styleUrls: ['./editar-pedido.component.css']
})
export class EditarPedidoComponent {
  itens: ItemPedido[] = [];
  filtrados: ItemPedido[] = [];
  mostrarImagens: boolean = true;
  colunaOrdenacao: string = 'id';
  ordemAscendente: boolean = true;

  public pedido: Pedido = new Pedido();
  public layout: string = "itens";
  public siteURL: string = AppComponent.siteUrl;
  private id = this.route.snapshot.params['id'];

  constructor(
    private pedidoService: PedidoService,
    private produtoService: ProdutoService,
    private route: ActivatedRoute
  ){}

  ngOnInit(){
    this.pedidoService.buscarPorID(this.id).subscribe(
      pedido => {
        if (pedido) this.pedido = pedido;
        else alert("Pedido não encontrado " + this.id);
      },
      error => {
        alert("Erro ao buscar o pedido:" + JSON.stringify(error));
      }
    );
  }   

  view(layout: string){
    this.layout = layout;
  }
}

import { Component } from '@angular/core';
import { Produto } from 'src/app/shared/models/produto.model';
import { ProdutoService } from '../services/produto.service';

@Component({
  selector: 'app-listar-produto',
  templateUrl: './listar-produto.component.html',
  styleUrls: ['./listar-produto.component.css']
})
export class ListarProdutoComponent {
  produtos?: Produto[];

  constructor(private produtoService: ProdutoService){}

  ngOnInit(){
    this.produtoService.listarTodos().subscribe(
      produtos => {
        this.produtos = produtos;
      }
    )
  }
}

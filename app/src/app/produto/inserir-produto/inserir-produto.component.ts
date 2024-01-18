import { Component, OnInit, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';
import { ProdutoService } from 'src/app/shared/services/produto.service';

@Component({
  selector: 'app-inserir-produto',
  templateUrl: './inserir-produto.component.html',
  styleUrls: ['./inserir-produto.component.css']
})
export class InserirProdutoComponent implements OnInit {
  @ViewChild("formProduto") formProduto!: NgForm;
  produto: Produto = new Produto();
  categorias: Categoria[] = [];
  categoriaProdutoID: number = 0;

  constructor(
    private produtoService: ProdutoService,
    private categoriaService: CategoriaService,
    private route: ActivatedRoute,
    private router: Router,
  ) { }

  ngOnInit(): void {
    this.categoriaService.listarTodas().subscribe(categorias => {
      this.categorias = categorias;
    });
  }

  inserir(): void {
    if (this.formProduto.form.valid) {
      this.categoriaService.buscarPorID(this.categoriaProdutoID).subscribe(categoria => {
        this.produto.categoria = categoria;
        this.produtoService.inserir(this.produto).subscribe({
          next: (res: any) => {
            alert("Inserido com sucesso.");
            this.router.navigate(['../']);
          },
          error: (error: any) => {
            alert("Erro ao inserir o produto: " + JSON.stringify(error));
          }
        });
      });
    }
  }
}

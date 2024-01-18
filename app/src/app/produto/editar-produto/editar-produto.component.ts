import { Component, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { Produto } from 'src/app/shared/models/produto.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';
import { ProdutoService } from 'src/app/shared/services/produto.service';

@Component({
  selector: 'app-editar-produto',
  templateUrl: './editar-produto.component.html',
  styleUrls: ['./editar-produto.component.css']
})
export class EditarProdutoComponent {
  @ViewChild("formProduto") formProduto!: NgForm;
  categorias: Categoria[] = [];
  categoriaProdutoID: number | undefined = 0;
  private id = this.route.snapshot.params['id'];
  produto: Produto = new Produto();

  constructor(
    private produtoService: ProdutoService,
    private categoriaService: CategoriaService,
    private route: ActivatedRoute,
    private router: Router,
  ) { }

  ngOnInit(): void {
    this.produtoService.buscarPorID(this.id).subscribe(
      produto => {
        if (produto){
          this.produto = produto;
          this.categoriaProdutoID = this.produto.categoria?.id;
        }
        else alert("Produto não encontrado.");
      },
      error => {
        alert("Erro ao buscar o produto:" + JSON.stringify(error));
      }
    );
    this.categoriaService.listarTodas().subscribe(categorias => {
      this.categorias = categorias;
    })
  }

  atualizar(): void {
    if (this.formProduto.form.valid) {
      this.categoriaService.buscarPorID(this.categoriaProdutoID).subscribe(categoria => {
        this.produto.categoria = categoria;
        this.produtoService.atualizar(this.produto).subscribe({
          next: (res: any) => {
            alert("Alterado com sucesso.");
            this.router.navigate(['../']);
          },
          error: (error: any) => {
            alert("Erro ao alterar o produto: " + JSON.stringify(error));
          }
        });
      });
    }
  }
}

import { Component, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';

@Component({
  selector: 'app-inserir-categoria',
  templateUrl: './inserir-categoria.component.html',
  styleUrls: ['./inserir-categoria.component.css']
})
export class InserirCategoriaComponent {
  @ViewChild("formCategoria") formCategoria!: NgForm;
  categoria: Categoria = new Categoria();

  constructor(
    private categoriaService: CategoriaService,
    private router: Router,
  ) { }

  ngOnInit(): void {}

  inserir(): void {
    if (this.formCategoria.form.valid) {
      this.categoriaService.inserir(this.categoria).subscribe({
        next: (res: any) => {
          alert("Inserido com sucesso.");
          this.router.navigate(['../']);
        },
        error: (error: any) => {
          alert("Erro ao inserir a categoria: " + JSON.stringify(error));
        }
      });
    }
  }
}

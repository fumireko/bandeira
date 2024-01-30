import { Component, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Categoria } from 'src/app/shared/models/categoria.model';
import { CategoriaService } from 'src/app/shared/services/categoria.service';

@Component({
  selector: 'app-editar-categoria',
  templateUrl: './editar-categoria.component.html',
  styleUrls: ['./editar-categoria.component.css']
})
export class EditarCategoriaComponent {
  @ViewChild("formCategoria") formCategoria!: NgForm;
  categoria: Categoria = new Categoria();
  private id = this.route.snapshot.params['id'];

  constructor(
    private categoriaService: CategoriaService,
    private route: ActivatedRoute,
    private router: Router,
  ) { }

  ngOnInit(): void {
    this.categoriaService.buscarPorID(this.id).subscribe(
      categoria => {
        if (categoria) this.categoria = categoria;
        else alert("Categoria não encontrada.");
      },
      error => {
        alert("Erro ao buscar a categoria:" + JSON.stringify(error));
      }
    );
  }

  atualizar(): void {
    if (this.formCategoria.form.valid) {
      this.categoriaService.atualizar(this.categoria).subscribe({
        next: (res: any) => {
          alert("Editado com sucesso.");
          this.router.navigate(['../']);
        },
        error: (error: any) => {
          alert("Erro ao editar a categoria: " + JSON.stringify(error));
        }
      });
    }
  }
}

import { HttpClient } from '@angular/common/http';
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
    private http: HttpClient
  ) { }

  ngOnInit(): void {
    this.categoriaService.listarTodas().subscribe(categorias => {
      this.categorias = categorias;
    });
  }

  onImagePaste(event: any): void {
    const items = (event.clipboardData || event.originalEvent.clipboardData).items;
    let blob = null;
    for (const item of items) {
      if (item.type.indexOf('image') === 0) {
        this.uploadImage(item.getAsFile());
      }
    }
  }

  uploadImage(file: File): void {
    const formData = new FormData();
    formData.append('file', file);

    this.http.post<any>('http://fubi.ca/upload_json.php', formData).subscribe(
      (response) => {
        if (response && response.path) {
          this.produto.imagem = response.path;
        } else {
          console.error('Error: "path" property not found or invalid in the response.');
        }
      },
      (error) => {
        console.error('Error uploading file:', error);
      }
    );
  }

  inserir(): void {
    if (this.formProduto.form.valid) {
      this.categoriaService.buscarPorID(this.categoriaProdutoID).subscribe(categoria => {
        this.produto.categoria = categoria;
        this.produtoService.inserir(this.produto).subscribe({
          next: (res: any) => {
            alert("Inserido com sucesso.");
            this.router.navigate(['/produtos']);
          },
          error: (error: any) => {
            alert("Erro ao inserir o produto: " + JSON.stringify(error));
          }
        });
      });
    }
  }
}

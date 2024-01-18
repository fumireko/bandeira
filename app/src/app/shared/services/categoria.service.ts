import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';
import { AppComponent } from 'src/app/app.component';
import { Categoria } from '../models/categoria.model';

@Injectable({
  providedIn: 'root'
})

export class CategoriaService {
  constructor(private http: HttpClient) { }

  listarTodas(): Observable<Categoria[]> {
    return this.http.get<Categoria[]>(`${AppComponent.backendURL}/categorias`);
  }

  inserir(categoria: Categoria){
    return this.http.post<Categoria>(`${AppComponent.backendURL}/categorias`, categoria);
  }

  buscarPorID(id?: number): Observable<Categoria | undefined>{
    return this.listarTodas().pipe(
      map(e => e.find(c => c.id == id))
    );
  }

  atualizar(categoria: Categoria): Observable<Categoria> {
    return this.http.put<Categoria>(`${AppComponent.backendURL}/categorias/${categoria.id}`, categoria);
  }

  remover(id: number | undefined): Observable<Categoria> {
    return this.http.delete<Categoria>(`${AppComponent.backendURL}/categorias/${id}`);
  }
}
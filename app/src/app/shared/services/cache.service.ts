import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CacheService {
  private opcoesListarProdutos = {
    mostrarImagens: true,
    mostrarIndisponiveis: true,
    termoBusca: ''
  };

  constructor() {}

  getOpcoesListarProdutos(): any {
    return this.opcoesListarProdutos;
  }

  setOpcoesListarProdutos(opcoes: any): void {
    this.opcoesListarProdutos = opcoes;
  }
}

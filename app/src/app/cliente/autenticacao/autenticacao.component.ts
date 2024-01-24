import { Component, ViewChild } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { AppComponent } from 'src/app/app.component';

@Component({
  selector: 'app-autenticacao',
  templateUrl: './autenticacao.component.html',
  styleUrls: ['./autenticacao.component.css']
})
export class AutenticacaoComponent {
  @ViewChild("formAutenticacao") formAutenticacao!: NgForm;
  chaveForm: string = "";

  constructor(private router: Router){}

  autenticar(){
    if(this.formAutenticacao.valid && this.chaveForm == AppComponent.chaveAcesso)
    this.router.navigate(['/pedidos']);
  }
}

import domtoimage from 'dom-to-image';
import { Component } from '@angular/core';
import { Produto } from 'src/app/shared/models/produto.model';
import { AppComponent } from 'src/app/app.component';
import { ProdutoService } from 'src/app/shared/services/produto.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-gerar-encarte',
  templateUrl: './gerar-encarte.component.html',
  styleUrls: ['./gerar-encarte.component.css']
})
export class GerarEncarteComponent {
  itens: Produto[] = [];
  selecionados: Produto[] = [];
  public siteURL: string = AppComponent.siteUrl;
  navigation: any;

  constructor(
    private produtoService: ProdutoService,
    private route: ActivatedRoute,
    private router: Router
  ){    
    this.navigation = this.router.getCurrentNavigation();
  }

  ngOnInit() {
    this.selecionados = this.navigation.extras.state['selecionados'];
    console.log(JSON.stringify(this.selecionados));
  } 

  checkUndefined(a: any) { if(a) return a }

  async captureImage() {
    const element = document.getElementById('imagem');
    if (element) {
      try {
        domtoimage.toPng(element)
        .then(function (dataUrl: string) {
            var link = document.createElement('a');
            link.download = 'encarte_' + Math.floor(new Date().getTime() / 1000) + '.png';
            link.href = dataUrl;
            link.click();
        });
      } catch (error) {
        console.error('Error capturing image:', error);
      }
    } else {
      console.error('Element not found.');
    }
  }
}

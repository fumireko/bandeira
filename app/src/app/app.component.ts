import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Mercado Bandeira';
  public static chaveAcesso = '123';
  public static backendURL = 'https://api.mercadobandeira.com';
  public static siteUrl = 'https://img.mercadobandeira.com';
  public static fretesRBS = [
    { bairro: "Centro - Rio Branco do Sul", precoFrete: 5.00 },
    { bairro: "Jardim Itacuri", precoFrete: 5.00 },
    { bairro: "Jardim Paraíso", precoFrete: 5.00 },
    { bairro: "Madre", precoFrete: 5.00 },
    { bairro: "Nossa Senhora de Fátima", precoFrete: 5.00 },
    { bairro: "Papanduva", precoFrete: 5.00 },
    { bairro: "Vila Abrão", precoFrete: 5.00 },
    { bairro: "Vila Costa", precoFrete: 5.00 },
    { bairro: "Vila Velha", precoFrete: 5.00 },
    { bairro: "Jardim São José (RBS)", precoFrete: 5.50 },
    { bairro: "Johnson", precoFrete: 5.50 },
    { bairro: "Natânea", precoFrete: 5.50 },
    { bairro: "Pedro Wosch", precoFrete: 5.50 },
    { bairro: "São Pedro", precoFrete: 5.50 },
    { bairro: "Jardim Garcia", precoFrete: 5.50 },
    { bairro: "Jardim dos Minérios", precoFrete: 6.00 },
    { bairro: "Jardim Santo Antônio", precoFrete: 6.00 },
    { bairro: "La Santa", precoFrete: 6.00 },
    { bairro: "Santa Terezinha", precoFrete: 7.00 },
    { bairro: "São Luiz", precoFrete: 7.00 },
    { bairro: "Vila Ricarda", precoFrete: 7.00 },
    { bairro: "Albarana", precoFrete: 8.00 },
    { bairro: "Jardim Marli do Rocio", precoFrete: 8.00 },
    { bairro: "Vila Artigas (Jd. São Gabriel)", precoFrete: 8.00 },
    { bairro: "Nodari I", precoFrete: 8.00 },
    { bairro: "Nodari II", precoFrete: 8.00 },
    { bairro: "Vila Buava", precoFrete: 8.00 },
    { bairro: "Jardim Record", precoFrete: 8.00 },
    { bairro: "Santaria", precoFrete: 10.00 },
    { bairro: "Tacaniça dos Falcões", precoFrete: 10.00 }
  ];
  public static fretesITP = [
    { bairro: "Canha", precoFrete: 10.00 },
    { bairro: "Jardim Itaú I", precoFrete: 10.00 },
    { bairro: "Jardim Itaú II", precoFrete: 11.00 },
    { bairro: "Capinzal", precoFrete: 11.50 },
    { bairro: "Catarinas", precoFrete: 12.00 },
    { bairro: "Jardim Saara", precoFrete: 12.00 },
    { bairro: "Santa Maria", precoFrete: 12.00 },
    { bairro: "Jardim Verona", precoFrete: 12.00 },
    { bairro: "Vila Isaac", precoFrete: 12.00 },
    { bairro: "Jardim Roberta", precoFrete: 12.00 },
    { bairro: "São João", precoFrete: 12.00 },
    { bairro: "Santa Cecília (COHAB)", precoFrete: 12.00 },
    { bairro: "Centro - Itaperuçu", precoFrete: 12.00 },
    { bairro: "São Miguel", precoFrete: 12.00 },
    { bairro: "Santiago", precoFrete: 12.50 },
    { bairro: "Jardim Fabiana", precoFrete: 12.50 },
    { bairro: "Vila Tomé", precoFrete: 12.50 },
    { bairro: "São Domingos", precoFrete: 13.00 },
    { bairro: "Vila Pinheiro", precoFrete: 13.50 },
    { bairro: "Santa Clara", precoFrete: 14.00 },
    { bairro: "Butieirinho", precoFrete: 15.00 },
    { bairro: "Cândidos", precoFrete: 15.00 },
    { bairro: "Vila Gulin", precoFrete: 15.00 },
    { bairro: "Vila Lovato", precoFrete: 15.00 },
    { bairro: "Campina do Cabral", precoFrete: 16.00 },
    { bairro: "Jardim Alvorada", precoFrete: 16.00 },
    { bairro: "Bela Vista", precoFrete: 16.00 }
  ];
  
}


# bandeira
### Instale as dependências
```bash
npm install
npm i @angular/cli
npm i dom-to-image
npm i --save-dev @types/dom-to-image
```

### Configure o ``app.component.ts``
```ts
  public static chaveAcesso = '';
  public static backendURL = ''; // URL do backend
  public static siteUrl = ''; // URL das imagens e upload_json.php
```

### Testes
```
# Rodar o servidor na porta 8080
ng serve -- --host 0.0.0.0 --port 8080 --disable-host-check  
```

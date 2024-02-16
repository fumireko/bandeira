
# bandeira
### Instale as dependências
```bash
sudo apt-get install -y maven
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

### Configure o ``application.properties``
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/seu_banco_de_dados
spring.datasource.username= # Usuário 
spring.datasource.password= # Senha do BD
```

### Testes
```bash
# Rodar o servidor na porta 8080
ng serve -- --host 0.0.0.0 --port 8080 --disable-host-check

# Build e rodar o backend 
mvn install
cd server/target/
java -jar demo-0.0.1-SNAPSHOT.jar
```

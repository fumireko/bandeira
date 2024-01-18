import requests
from bs4 import BeautifulSoup

def extrair_dados(url):
    response = requests.get(url)

    if response.status_code != 200:
        print(f"Erro ao acessar a página. Código de status: {response.status_code}")
        return None

    soup = BeautifulSoup(response.content, 'html.parser')

    inserts = []
    count = 111

    for div_produto in soup.find_all('div', class_='product-relative'):
        # Extrair preço
        preco_div = div_produto.find('div', class_='area-bloco-preco')
        preco_str = preco_div.text.strip().replace('R$', '').replace('\xa0', '').replace(',', '.').replace('kg', '').strip()

        # Verificar se o preço é um número válido
        try:
            preco = float(preco_str)
        except ValueError:
            print(f"Erro ao converter preço para float: {preco_str}")
            preco = 0.00

        # Extrair nome
        nome_div = div_produto.find('h3', class_='txt-desc-product-item')
        nome = nome_div.text.strip()

        # Extrair imagem
        imagem_div = div_produto.find('div', class_='img-prd')
        imagem = imagem_div.find('img')['src']

        # Gerar comando SQL INSERT
        insert_sql = f"INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES ({preco}, {count}, '{imagem}', '{nome}', 5);"
        count += 1

        inserts.append(insert_sql)

    return inserts

# Exemplo de utilização
url = 'https://www.sitemercado.com.br/condor/curitiba-loja-super-condor-ahu-ahu-av-anita-garibaldi/produtos/congelados/aperitivos-e-empanados'
dados = extrair_dados(url)

if dados:
    for produto in dados:
        print(produto)

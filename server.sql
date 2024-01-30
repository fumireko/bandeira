--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-30 20:10:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 41505)
-- Name: tb_categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categorias (
    id_categoria integer NOT NULL,
    desc_categoria character varying(255),
    unidade_categoria boolean
);


ALTER TABLE public.tb_categorias OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 41508)
-- Name: tb_categorias_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_categorias_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_categorias_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 41509)
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_categorias_id_categoria_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_categorias_id_categoria_seq1 OWNER TO postgres;

--
-- TOC entry 4831 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categorias_id_categoria_seq1 OWNED BY public.tb_categorias.id_categoria;


--
-- TOC entry 218 (class 1259 OID 41510)
-- Name: tb_itempedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_itempedido (
    id_itempedido integer NOT NULL,
    qtde_itempedido integer,
    fk_pedido bigint,
    fk_produto bigint
);


ALTER TABLE public.tb_itempedido OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 41513)
-- Name: tb_itempedido_id_itempedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_itempedido_id_itempedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_itempedido_id_itempedido_seq OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 41514)
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_itempedido_id_itempedido_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_itempedido_id_itempedido_seq1 OWNER TO postgres;

--
-- TOC entry 4832 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_itempedido_id_itempedido_seq1 OWNED BY public.tb_itempedido.id_itempedido;


--
-- TOC entry 221 (class 1259 OID 41515)
-- Name: tb_pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pedidos (
    id_pedido integer NOT NULL,
    entregue boolean,
    total_pedido double precision,
    valor_frete double precision,
    url_pedido character varying(1024),
    bairro_pedido character varying(255),
    cidade_pedido character varying(255),
    logradouro_pedido character varying(255),
    nome_cliente_pedido character varying(255),
    numero_predial_pedido character varying(255),
    opcao_pagamento character varying(255),
    referencia_pedido character varying(255),
    tel_cliente_pedido character varying(255),
    data_criado character varying(255),
    data_entregue character varying(255),
    preco_frete double precision
);


ALTER TABLE public.tb_pedidos OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 41520)
-- Name: tb_pedidos_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pedidos_id_pedido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pedidos_id_pedido_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 41521)
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_pedidos_id_pedido_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_pedidos_id_pedido_seq1 OWNER TO postgres;

--
-- TOC entry 4833 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pedidos_id_pedido_seq1 OWNED BY public.tb_pedidos.id_pedido;


--
-- TOC entry 224 (class 1259 OID 41522)
-- Name: tb_produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_produtos (
    id_produto integer NOT NULL,
    preco_produto double precision,
    fk_categoria bigint,
    imagem_produto character varying(1024),
    nome_produto character varying(255),
    produto_disponivel boolean
);


ALTER TABLE public.tb_produtos OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 41527)
-- Name: tb_produtos_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_produtos_id_produto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_produtos_id_produto_seq OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 41528)
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_produtos_id_produto_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_produtos_id_produto_seq1 OWNER TO postgres;

--
-- TOC entry 4834 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_produtos_id_produto_seq1 OWNED BY public.tb_produtos.id_produto;


--
-- TOC entry 227 (class 1259 OID 41529)
-- Name: usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_seq OWNER TO postgres;

--
-- TOC entry 4654 (class 2604 OID 41530)
-- Name: tb_categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.tb_categorias_id_categoria_seq1'::regclass);


--
-- TOC entry 4655 (class 2604 OID 41531)
-- Name: tb_itempedido id_itempedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido ALTER COLUMN id_itempedido SET DEFAULT nextval('public.tb_itempedido_id_itempedido_seq1'::regclass);


--
-- TOC entry 4656 (class 2604 OID 41532)
-- Name: tb_pedidos id_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.tb_pedidos_id_pedido_seq1'::regclass);


--
-- TOC entry 4657 (class 2604 OID 41533)
-- Name: tb_produtos id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos ALTER COLUMN id_produto SET DEFAULT nextval('public.tb_produtos_id_produto_seq1'::regclass);


--
-- TOC entry 4813 (class 0 OID 41505)
-- Dependencies: 215
-- Data for Name: tb_categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_categorias VALUES (1, 'Alimentos basicos', false);
INSERT INTO public.tb_categorias VALUES (4, 'Frios e laticinios', false);
INSERT INTO public.tb_categorias VALUES (5, 'Biscoitos e salgadinhos', false);
INSERT INTO public.tb_categorias VALUES (6, 'Bebidas', false);
INSERT INTO public.tb_categorias VALUES (7, 'Molhos condimentos e conservas', false);
INSERT INTO public.tb_categorias VALUES (8, 'Leites e iogurtes', false);
INSERT INTO public.tb_categorias VALUES (9, 'Doces e sobremesas', false);
INSERT INTO public.tb_categorias VALUES (10, 'Congelados', false);
INSERT INTO public.tb_categorias VALUES (11, 'Matinais', false);
INSERT INTO public.tb_categorias VALUES (12, 'Padaria', false);
INSERT INTO public.tb_categorias VALUES (13, 'Utensilios para o lar', false);
INSERT INTO public.tb_categorias VALUES (14, 'Limpeza', false);
INSERT INTO public.tb_categorias VALUES (15, 'Higiene e cuidados pessoais', false);
INSERT INTO public.tb_categorias VALUES (16, 'Rações e Pets', false);
INSERT INTO public.tb_categorias VALUES (2, 'Feira', true);
INSERT INTO public.tb_categorias VALUES (3, 'Carnes aves e peixes', true);


--
-- TOC entry 4816 (class 0 OID 41510)
-- Dependencies: 218
-- Data for Name: tb_itempedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_itempedido VALUES (1, 1, 11, 17);
INSERT INTO public.tb_itempedido VALUES (2, 1, 11, 24);
INSERT INTO public.tb_itempedido VALUES (3, 1, 11, 26);
INSERT INTO public.tb_itempedido VALUES (4, 1, 11, 36);
INSERT INTO public.tb_itempedido VALUES (9, 2, 13, 9);
INSERT INTO public.tb_itempedido VALUES (10, 1, 13, 10);
INSERT INTO public.tb_itempedido VALUES (11, 1, 13, 17);


--
-- TOC entry 4819 (class 0 OID 41515)
-- Dependencies: 221
-- Data for Name: tb_pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_pedidos VALUES (11, true, 38.15, NULL, 'https://api.whatsapp.com/send?phone=41996110756&text=%E2%9C%85+NOVO+PEDIDO%0A%0A++++Pedido+%230%0A%0A+++1x+Ovos+Brancos+Tipo+Grande+Mantiqueira+Bandeja+30+Un+%28R%2416%2C99%29%0A+++1x+A%C3%A7%C3%BAcar+Refinado+Especial+Caravelas+1kg+%28R%243%2C98%29%0A+++1x+Ado%C3%A7ante+L%C3%ADquido+Sacar+Zero+Cal+100Ml+%28R%247%2C49%29%0A+++1x+Sal+Marinho+Zaeli+Natural+1Kg+%28R%244%2C69%29%0A%0A+++FRETE%3A+R%245%2C00%0A+TOTAL%3A+R%2438%2C15%0A%0A+++------------------------------%0A+++%E2%96%B6+DADOS+PARA+RETIRADA%0A%0A+++Nome%3A+Fulano+%0A+++Telefone%3A+999569334%0A+++Endere%C3%A7o%3A+Manoel+bandeira++215%2C+Madre+-+Rio+Branco+do+Sul%0A%0A+++------------------------------%0A+++%E2%96%B6+PAGAMENTO%0A%0A+++PAGAMENTO+DINHEIRO', 'Madre', 'Rio Branco do Sul', 'Manoel bandeira ', 'Fulano ', '215', 'dinheiro', 'Campo ', '999569334', '27-01-2024 16:29:40', '27-01-2024 16:35:53', 5);
INSERT INTO public.tb_pedidos VALUES (13, false, 38.12, NULL, 'https://api.whatsapp.com/send?phone=41996110756&text=%E2%9C%85+NOVO+PEDIDO%0A%0A++++Pedido+%230%0A%0A+++2x+%C3%93leo+de+Soja+Coamo+900ml+%28R%245%2C49%29%0A+++1x+Vinagre+de+%C3%81lcool+Chemim+750Ml+%28R%242%2C15%29%0A+++1x+Ovos+Brancos+Tipo+Grande+Mantiqueira+Bandeja+30+Un+%28R%2416%2C99%29%0A%0A+++FRETE%3A+R%248%2C00%0A+TOTAL%3A+R%2438%2C12%0A%0A+++------------------------------%0A+++%E2%96%B6+DADOS+PARA+RETIRADA%0A%0A+++Nome%3A+Ero%0A+++Telefone%3A+419999999999%0A+++Endere%C3%A7o%3A+Rua+Santa+Cruz+89%2C+Nodari+II+-+Rio+Branco+do+Sul%0A%0A+++------------------------------%0A+++%E2%96%B6+PAGAMENTO%0A%0A+++PAGAMENTO+DINHEIRO', 'Nodari II', 'Rio Branco do Sul', 'Rua Santa Cruz', 'Ero', '89', 'dinheiro', 'Reducino ', '419999999999', '28-01-2024 12:46:51', '28-01-2024 12:46:51', 8);


--
-- TOC entry 4822 (class 0 OID 41522)
-- Dependencies: 224
-- Data for Name: tb_produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_produtos VALUES (11, 34.9, 1, '//img.sitemercado.com.br/produtos/0aef4fd021cfa82d16575640793698359e8feb3e93413d12f0aacbdf4c57c172_hero_mini.jpg', 'Azeite Português Extra Virgem Andorinha 250ml', false);
INSERT INTO public.tb_produtos VALUES (1055, 38.89, 3, NULL, 'Bife Patinho kg', true);
INSERT INTO public.tb_produtos VALUES (1103, 11.99, 3, NULL, 'Lombo Agulha', true);
INSERT INTO public.tb_produtos VALUES (1054, 39.99, 3, NULL, 'File c/Mignon kg', true);
INSERT INTO public.tb_produtos VALUES (1062, 9.8, 3, NULL, 'Coxa Frango kg', true);
INSERT INTO public.tb_produtos VALUES (886, 8.99, 9, 'http://fubi.ca/img/image_file_1706376511.webp', 'Bis Branco 100g', true);
INSERT INTO public.tb_produtos VALUES (3, 23.97, 1, '//img.sitemercado.com.br/produtos/8abbc27035547f45a37e936cf5a504f7d25a3bc8444e39f2d9abe4edd8f90df7_mini.jpg', 'Arroz Parboilizado Tipo 1 Namorado 5Kg', false);
INSERT INTO public.tb_produtos VALUES (9, 5.49, 1, '//img.sitemercado.com.br/produtos/04d9059cee26a5c4067eb434319c307b2fc52299012539f11ebf16df2b6ead40_mini.jpg', 'Óleo de Soja Coamo 900ml', false);
INSERT INTO public.tb_produtos VALUES (10, 2.15, 1, '//img.sitemercado.com.br/produtos/94bc5b92be1d7df71566c9e6a788b57eaf769425c447c168751c77236cc92dbb_mini.jpg', 'Vinagre de Álcool Chemim 750Ml', false);
INSERT INTO public.tb_produtos VALUES (12, 10.19, 1, '//img.sitemercado.com.br/produtos/4f0e5a1cab6f67a77be96a3a6ed2af52f35bc2ef4fb4900cef5e2b4bed22d5ef_mini.jpg', 'Vinagre Maçã Castelo 750ml', false);
INSERT INTO public.tb_produtos VALUES (4, 6.29, 1, '//img.sitemercado.com.br/produtos/1a0c8c610dabfbff753f1a442d7e93d64936255faef402b3f085154bd0d49e43_mini.jpg', 'Arroz Integral Buriti Pacote 1Kg', true);
INSERT INTO public.tb_produtos VALUES (84, 4.99, 2, '//img.sitemercado.com.br/produtos/590002c20d6fee25526838d66c6121aeb02ff61af144494ef2486df6672659c3_mini.jpg', 'Tomate Italiano', true);
INSERT INTO public.tb_produtos VALUES (85, 8.59, 2, '//img.sitemercado.com.br/produtos/26552fbcd68f25b2eae9c4b541c74a308e64c9c4afd99b00dddd5a5d30c3058a_mini.jpg', 'Cenoura', true);
INSERT INTO public.tb_produtos VALUES (128, 12.99, 3, '//img.sitemercado.com.br/produtos/c7e0867cda276a231de8821b103eb4308390ecd7ad5e12f2239fb30e8052cf9c_hero_mini.jpg', 'Linguiça de Frango Copacol Fina Congelada 800G', true);
INSERT INTO public.tb_produtos VALUES (206, 4.99, 5, '//img.sitemercado.com.br/produtos/d674951a18b066497b9881edbb13ebe15962a54157fc6579cd179506e66c4496_mini.jpg', 'Biscoito de Água e Sal Marilan 350G', true);
INSERT INTO public.tb_produtos VALUES (253, 46.74, 6, '//img.sitemercado.com.br/produtos/797825facb3b247c446822230ad1900f2b0106704828b0fc958a13f962cc610f_mini.jpg', 'Energético Red Bull 250Ml com 6Un', true);
INSERT INTO public.tb_produtos VALUES (286, 1.89, 7, '//img.sitemercado.com.br/produtos/76d345213c7316ef330a40d31218e36db620cff0f106d7f4d34fde453f803d11_mini.jpg', 'Molho de Tomate Tradicional Predilecta 300G', true);
INSERT INTO public.tb_produtos VALUES (356, 9.99, 9, '//img.sitemercado.com.br/produtos/41f5e63c89958567c386c74f2193a1822a1aa6f082ab9c32ebd9f738a9eb6fe3_mini.jpg', 'Nata Santa Clara 300Gr', true);
INSERT INTO public.tb_produtos VALUES (444, 14.49, 11, '//img.sitemercado.com.br/produtos/a0fd81e293c96cd192ee5678acbbe65715cf7317fb2c3c3a7c1eebf8bb8a10e3_mini.jpg', 'Achocolatado em Pó Chocolatto 3 Corações 700G', true);
INSERT INTO public.tb_produtos VALUES (484, 5.19, 11, '//img.sitemercado.com.br/produtos/8befb8fba3fa31d00221743be9506f4bad2aa5bb69953391abb97a94d908b6dd_hero_mini.jpg', 'Chá Mate Natural Leão 40G com 25Un', true);
INSERT INTO public.tb_produtos VALUES (569, 41.9, 13, '//img.sitemercado.com.br/produtos/c739943e842825756575bea647029d8ef824e14a599319a083e393d71c28e740_mini.jpg', 'Grelha Super Grill 02 Mor', true);
INSERT INTO public.tb_produtos VALUES (604, 20.49, 14, '//img.sitemercado.com.br/produtos/8f12495711502738be5b1bec9e6fe489cdf8e39b59bffb043043a6e67f4fe7f6_mini.jpg', 'Anil Imperial Reckitt 44G', true);
INSERT INTO public.tb_produtos VALUES (731, 4.79, 9, 'http://fubi.ca/img/image_file_1706302589.webp', 'Creme de Leite Frimesa 200g', true);
INSERT INTO public.tb_produtos VALUES (1099, 33.99, 3, NULL, 'Setinho Bovino', true);
INSERT INTO public.tb_produtos VALUES (732, 7.99, 9, 'http://fubi.ca/img/image_file_1706302664.webp', 'Leite Condensado Piracanjuba 395g', true);
INSERT INTO public.tb_produtos VALUES (735, 2.99, 14, 'http://fubi.ca/img/image_file_1706303393.webp', 'Detergente Ypê 500ml', true);
INSERT INTO public.tb_produtos VALUES (1058, 24.99, 3, NULL, 'Costela Bovina Ripa', true);
INSERT INTO public.tb_produtos VALUES (530, 5.99, 13, '//img.sitemercado.com.br/produtos/a3d59446d95333e9a17e114169a6af2e6c71f5928173e7ab637b01ba4fc29986_mini.jpg', 'Filtro Papel Melitta 103 C/30', true);
INSERT INTO public.tb_produtos VALUES (793, 6.49, NULL, 'http://fubi.ca/img/image_file_1706363392.webp', 'Açúcar Cristal Caravelas Colombo 1kg', true);
INSERT INTO public.tb_produtos VALUES (796, 6.25, NULL, 'http://fubi.ca/img/image_file_1706363553.webp', 'Açúcar Refinado Caravelas 1kg', true);
INSERT INTO public.tb_produtos VALUES (789, 4.49, NULL, 'http://fubi.ca/img/image_file_1706362914.webp', 'Cha Mate Real 32g c/20', true);
INSERT INTO public.tb_produtos VALUES (790, 5.49, 6, 'http://fubi.ca/img/image_file_1706363045.webp', 'Cha Matte Leao 40g c/25', true);
INSERT INTO public.tb_produtos VALUES (2, 8.99, 1, '//img.sitemercado.com.br/produtos/79569f2df93ab2e1bfd24fec9e34a9744d29fe1a80ed69fe2fe241c62e92fcb4_mini.jpg', 'Arroz Parboilizado Tipo 1 Buriti Pacote 1Kg', true);
INSERT INTO public.tb_produtos VALUES (791, 6.99, NULL, 'http://fubi.ca/img/image_file_1706363241.webp', 'Arroz Buriti Parboilizado Integral 1kg', true);
INSERT INTO public.tb_produtos VALUES (792, 6.25, NULL, 'http://fubi.ca/img/image_file_1706363328.webp', 'Açúcar Refinado Alto Alegre 1kg', true);
INSERT INTO public.tb_produtos VALUES (794, 7.89, NULL, 'http://fubi.ca/img/image_file_1706363437.webp', 'Açúcar Demerara Caravelas 1kg', true);
INSERT INTO public.tb_produtos VALUES (795, 7.89, NULL, 'http://fubi.ca/img/image_file_1706363487.webp', 'Açúcar Demerara Alto Alegre 1kg', true);
INSERT INTO public.tb_produtos VALUES (797, 6.99, 1, 'http://fubi.ca/img/image_file_1706363978.webp', 'Farinha de Mandioca Biju Pinduca 500g', true);
INSERT INTO public.tb_produtos VALUES (798, 11.99, 1, 'http://fubi.ca/img/image_file_1706365127.webp', 'Farinha de Mandioca Torrada Pinduca 1kg', true);
INSERT INTO public.tb_produtos VALUES (799, 11.99, 1, 'http://fubi.ca/img/image_file_1706366438.webp', 'Feijão Preto Pé Vermelho 1kg', true);
INSERT INTO public.tb_produtos VALUES (800, 12.99, 1, 'http://fubi.ca/img/image_file_1706370271.webp', 'Feijão Preto Caldobom 1kg ', true);
INSERT INTO public.tb_produtos VALUES (801, 2.99, 1, 'http://fubi.ca/img/image_file_1706370645.webp', 'Sal Marinho Divina Mesa 1kg', true);
INSERT INTO public.tb_produtos VALUES (802, 4.49, 1, 'http://fubi.ca/img/image_file_1706371782.webp', 'Fubá Amarelo Cecato 1kg', true);
INSERT INTO public.tb_produtos VALUES (803, 10.89, 1, 'http://fubi.ca/img/image_file_1706371858.webp', 'Fubá Branco Cecato 1kg', true);
INSERT INTO public.tb_produtos VALUES (804, 4.49, 1, 'http://fubi.ca/img/image_file_1706371979.webp', 'Farinha de Milho Biju Amarela Cecato 1kg', true);
INSERT INTO public.tb_produtos VALUES (805, 5.49, 1, 'http://fubi.ca/img/image_file_1706372067.webp', 'Fubá Amarelo Campo Largo 1kg', true);
INSERT INTO public.tb_produtos VALUES (806, 4.75, 1, 'http://fubi.ca/img/image_file_1706372175.webp', 'Farinha de Milho Biju Amarela Sant'' Ana', true);
INSERT INTO public.tb_produtos VALUES (807, 6.49, 1, 'http://fubi.ca/img/image_file_1706372223.webp', 'Farinha de Milho Amarela Campo Largo 1kg', true);
INSERT INTO public.tb_produtos VALUES (808, 13.49, 1, 'http://fubi.ca/img/image_file_1706372262.webp', 'Farinha de Milho Amarela Campo Largo 1kg', true);
INSERT INTO public.tb_produtos VALUES (856, 16.49, 5, 'http://fubi.ca/img/image_file_1706374965.webp', 'Bolacha Agua e Sal Parati 740g', true);
INSERT INTO public.tb_produtos VALUES (892, 7.99, 5, 'http://fubi.ca/img/image_file_1706376843.webp', 'Bolacha Cracker Vida Integral Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (893, 7.99, 5, 'http://fubi.ca/img/image_file_1706376861.webp', 'Bolacha Cream Cracker Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (894, 7.99, 5, 'http://fubi.ca/img/image_file_1706376874.webp', 'Bolacha Maria Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (895, 7.99, 5, 'http://fubi.ca/img/image_file_1706376903.webp', 'Bolacha Coco Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (896, 7.99, 5, 'http://fubi.ca/img/image_file_1706376914.webp', 'Bolacha Leite Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (897, 7.99, 5, 'http://fubi.ca/img/image_file_1706376934.webp', 'Bolacha Maisena Chocolate Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (898, 7.99, 5, 'http://fubi.ca/img/image_file_1706376948.webp', 'Bolacha Maisena Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (908, 9.99, 14, 'http://fubi.ca/img/image_file_1706377393.webp', 'Amaciante de Roupas Mon Bijou Bombril 1,7L +Cuidado', true);
INSERT INTO public.tb_produtos VALUES (899, 5.99, 5, 'http://fubi.ca/img/image_file_1706376974.webp', 'Bolacha Cream Cracker Sol 350g', true);
INSERT INTO public.tb_produtos VALUES (900, 5.99, 5, 'http://fubi.ca/img/image_file_1706376995.webp', 'Bolacha Maisena Sol 350g', true);
INSERT INTO public.tb_produtos VALUES (957, 7.89, 1, 'http://fubi.ca/img/image_file_1706382883.webp', 'Oleo de Soja Liza 900ml', true);
INSERT INTO public.tb_produtos VALUES (960, 6.25, 1, 'http://fubi.ca/img/image_file_1706383156.webp', 'Farofa Sabor Bacon Caldobom 250g', true);
INSERT INTO public.tb_produtos VALUES (1018, 6.99, 15, 'http://fubi.ca/img/image_file_1706549939.webp', 'Creme Dental Colgate Maxima Protecao 90g', true);
INSERT INTO public.tb_produtos VALUES (1019, 6.49, 15, 'http://fubi.ca/img/image_file_1706549959.webp', 'Creme Dental Sorriso 90g Dentes Branco', true);
INSERT INTO public.tb_produtos VALUES (1020, 3.99, 15, 'http://fubi.ca/img/image_file_1706550010.webp', 'Hastes Flexiveis Mili 75 un.', true);
INSERT INTO public.tb_produtos VALUES (1022, 6.49, 1, 'http://fubi.ca/img/image_file_1706550414.webp', 'Cup Noodles Galinha Caipira Nissin 72g', true);
INSERT INTO public.tb_produtos VALUES (1021, 3.99, 15, 'http://fubi.ca/img/image_file_1706550165.webp', 'Agua Oxigenada Farmax 90ml', true);
INSERT INTO public.tb_produtos VALUES (1023, 4.99, 15, 'http://fubi.ca/img/image_file_1706550584.webp', 'Acetona Pétalas 100ml', true);
INSERT INTO public.tb_produtos VALUES (771, 37.89, 6, 'http://fubi.ca/img/image_file_1706360289.webp', 'Free Afrika Marula 900ml', true);
INSERT INTO public.tb_produtos VALUES (1024, 14.99, 5, 'http://fubi.ca/img/image_file_1706550876.webp', 'Batata Pringles Churrasco 104g', true);
INSERT INTO public.tb_produtos VALUES (1025, 14.99, 5, 'http://fubi.ca/img/image_file_1706550908.webp', 'Batata Pringles Creme e Cebola 104g', true);
INSERT INTO public.tb_produtos VALUES (1026, 14.99, 5, 'http://fubi.ca/img/image_file_1706550923.webp', 'Batata Pringles Original 104g', true);
INSERT INTO public.tb_produtos VALUES (1027, 14.99, 5, 'http://fubi.ca/img/image_file_1706550942.webp', 'Batata Pringles Queijo 104g', true);
INSERT INTO public.tb_produtos VALUES (1028, 14.99, 5, 'http://fubi.ca/img/image_file_1706550974.webp', 'Batata Pringles Cheddar Bacon 104g', true);
INSERT INTO public.tb_produtos VALUES (959, 3.49, 1, 'http://fubi.ca/img/image_file_1706383011.webp', 'Vinagre de Alcool Divina Mesa 750ml', true);
INSERT INTO public.tb_produtos VALUES (1029, 12.79, 15, 'http://fubi.ca/img/image_file_1706551139.webp', 'Shampoo Seda Ceramidas 325ml', true);
INSERT INTO public.tb_produtos VALUES (1030, 12.79, 15, 'http://fubi.ca/img/image_file_1706551201.webp', 'Shampoo Seda Pretos Luminosos 325ml', true);
INSERT INTO public.tb_produtos VALUES (1031, 12.79, 15, 'http://fubi.ca/img/image_file_1706551219.webp', 'Shampoo Seda Liso Perfeito 325ml', true);
INSERT INTO public.tb_produtos VALUES (1032, 11.89, 15, 'http://fubi.ca/img/image_file_1706551308.webp', 'Shampoo Quimica Sem Drama Monange 325ml', true);
INSERT INTO public.tb_produtos VALUES (1033, 15.89, 15, 'http://fubi.ca/img/image_file_1706551392.webp', 'Condicionador Quimica Sem Drama Monange 325ml', true);
INSERT INTO public.tb_produtos VALUES (1034, 11.89, 15, 'http://fubi.ca/img/image_file_1706551475.webp', 'Shampoo Hidrata Monange 325ml', true);
INSERT INTO public.tb_produtos VALUES (1035, 15.89, 15, 'http://fubi.ca/img/image_file_1706551498.webp', 'Condicionador Hidrata Monange 325ml', true);
INSERT INTO public.tb_produtos VALUES (1036, 11.89, 15, 'http://fubi.ca/img/image_file_1706551549.webp', 'Shampoo Detox Monange 325ml', true);
INSERT INTO public.tb_produtos VALUES (1037, 15.89, 15, 'http://fubi.ca/img/image_file_1706551563.webp', 'Condicionador Detox Monange 325ml', true);
INSERT INTO public.tb_produtos VALUES (1038, 11.89, 15, 'http://fubi.ca/img/image_file_1706551592.webp', 'Shampoo Monange Cachos 325ml', true);
INSERT INTO public.tb_produtos VALUES (1039, 15.89, 15, 'http://fubi.ca/img/image_file_1706551609.webp', 'Condicionador Monange Cachos 325ml', true);
INSERT INTO public.tb_produtos VALUES (1040, 8.99, 15, 'http://fubi.ca/img/image_file_1706551678.webp', 'Toalhas Umedecidas Mili 50un', true);
INSERT INTO public.tb_produtos VALUES (1041, 17.99, 15, 'http://fubi.ca/img/image_file_1706551735.webp', 'Lenco Umedecido Mili 100un', true);
INSERT INTO public.tb_produtos VALUES (1042, 9.99, 15, 'http://fubi.ca/img/image_file_1706551780.webp', 'Gel Fixador Ny Looks 240g', true);
INSERT INTO public.tb_produtos VALUES (1043, 2.99, 15, 'http://fubi.ca/img/image_file_1706551875.webp', 'Aparelho de Barbear Probak II', true);
INSERT INTO public.tb_produtos VALUES (1044, 3.75, 15, 'http://fubi.ca/img/image_file_1706551905.webp', 'Aparelho de Barbear Bic Comfort2', true);
INSERT INTO public.tb_produtos VALUES (1045, 4.79, 15, 'http://fubi.ca/img/image_file_1706551973.webp', 'Aparelho de Barbear Gilette Prestobarba2 Fixo', true);
INSERT INTO public.tb_produtos VALUES (1046, 6.99, 15, 'http://fubi.ca/img/image_file_1706552051.webp', 'Aparelho de Barbear Bic Comfort3 ', true);
INSERT INTO public.tb_produtos VALUES (1047, 8.99, 15, 'http://fubi.ca/img/image_file_1706552087.webp', 'Aparelho de Barbear Gilette Prestobarba3 Champions', true);
INSERT INTO public.tb_produtos VALUES (1048, 6.99, 15, 'http://fubi.ca/img/image_file_1706552227.webp', 'Escova de Dente Colgate Macia/Suave', true);
INSERT INTO public.tb_produtos VALUES (1067, 15.49, 3, NULL, 'Paleta Suína kg', true);
INSERT INTO public.tb_produtos VALUES (1071, 17.99, 3, NULL, 'Salsicha Hot Dog Perdigao kg', true);
INSERT INTO public.tb_produtos VALUES (1073, 9.69, 3, NULL, 'Linguica Frango kg', true);
INSERT INTO public.tb_produtos VALUES (1075, 41.99, 3, NULL, 'Carne Moida 1a kg', true);
INSERT INTO public.tb_produtos VALUES (1084, 39.99, 3, NULL, 'Charque kg', true);
INSERT INTO public.tb_produtos VALUES (1086, 7.99, 3, NULL, 'Suan kg', true);
INSERT INTO public.tb_produtos VALUES (1092, 14.99, 3, NULL, 'Linguica Calabresa kg', true);
INSERT INTO public.tb_produtos VALUES (1070, 17.99, 3, NULL, 'Bisteca Suina kg', true);
INSERT INTO public.tb_produtos VALUES (1076, 21.99, 3, NULL, 'Linguica Toscana Aurora kg', true);
INSERT INTO public.tb_produtos VALUES (1078, 15.99, 3, NULL, 'Linguica Toscana Alegra', true);
INSERT INTO public.tb_produtos VALUES (1080, 27.99, 3, NULL, 'Salsicha Belvedere kg', true);
INSERT INTO public.tb_produtos VALUES (1072, 13.99, 3, NULL, 'Patinho c/osso kg', true);
INSERT INTO public.tb_produtos VALUES (1081, 9.99, 3, NULL, 'Salsicha Sereno kg', true);
INSERT INTO public.tb_produtos VALUES (1088, 29.99, 3, 'http://fubi.ca/img/image_file_1706555563.webp', 'Tulipa Frango kg', true);
INSERT INTO public.tb_produtos VALUES (1074, 28.99, 3, NULL, 'Carne Moida 2a kg', true);
INSERT INTO public.tb_produtos VALUES (1077, 22.99, 3, NULL, 'Linguica Pernil Aurora', true);
INSERT INTO public.tb_produtos VALUES (1079, 42.99, 3, NULL, 'Linguica Fina Belvedere', true);
INSERT INTO public.tb_produtos VALUES (1083, 12.99, 3, NULL, 'Morcela kg', true);
INSERT INTO public.tb_produtos VALUES (1087, 54.89, 3, NULL, 'Costelinha Defumada kg', true);
INSERT INTO public.tb_produtos VALUES (1091, 17.99, 3, NULL, 'Costelinha Carneiro kg', true);
INSERT INTO public.tb_produtos VALUES (1096, 15.99, 3, NULL, 'Linguica Alegra kg', true);
INSERT INTO public.tb_produtos VALUES (1085, 12.99, 3, NULL, 'Frango a Passarinho kg', true);
INSERT INTO public.tb_produtos VALUES (16, 5.98, 1, '//img.sitemercado.com.br/produtos/3b462ebe47d9ca8064e11d4a3ddfe8a3ab50b8fabae85ccae5c15f1968c8babf_hero_mini.jpg', 'Ovos Brancos Real Agro c/12un', true);
INSERT INTO public.tb_produtos VALUES (17, 16.99, 1, '//img.sitemercado.com.br/produtos/bddac251b059a4bbf8ac88299ba66d2a6e6bf1a9c4b282c38ee128b247d2f022_mini.jpg', 'Ovos Brancos Tipo Grande Mantiqueira Bandeja 30 Un', true);
INSERT INTO public.tb_produtos VALUES (18, 15.99, 1, '//img.sitemercado.com.br/produtos/a3be5bc2e04ff340e4898b1f83c3be5dfc2e5b622f2a352b175125550abc50ec_mini.jpg', 'Ovo Branco Bandeja 30Un', true);
INSERT INTO public.tb_produtos VALUES (20, 15.99, 1, '//img.sitemercado.com.br/produtos/b115f102a573e99d8402dd43611c41b38c880f8881182e377bc5f6962a9a4482_mini.jpg', 'Ovos Brancos Grande Granja Feliz com 30Un', true);
INSERT INTO public.tb_produtos VALUES (932, 15.99, 6, 'http://fubi.ca/img/image_file_1706380808.webp', 'Cachaca Jamel 966ml', true);
INSERT INTO public.tb_produtos VALUES (21, 15.99, 1, '//img.sitemercado.com.br/produtos/90f5e0c3a8e6fbaed788adf098c75eae6fe8aa1ef19c16c6bbb7981509f1b0ba_mini.jpg', 'Ovos Brancos Médios 30 Unidades', true);
INSERT INTO public.tb_produtos VALUES (24, 3.98, 1, '//img.sitemercado.com.br/produtos/8525664bc0baf0717e944ba276f00daf72900c274085a83b04d52d661412b3d7_mini.jpg', 'Açúcar Refinado Especial Caravelas 1kg', true);
INSERT INTO public.tb_produtos VALUES (26, 7.49, 1, '//img.sitemercado.com.br/produtos/ec42bf85ae2ffa3247f0750c5f1ba42bafcad80941ef4103487765e85a69cf16_mini.jpg', 'Adoçante Líquido Sacar Zero Cal 100Ml', true);
INSERT INTO public.tb_produtos VALUES (27, 5.99, 1, '//img.sitemercado.com.br/produtos/003c0c4e5912b75a5c414fbc2eca4584bf4185d519497e925913d6492af68f21_mini.jpg', 'Açúcar Mascavo Condor', true);
INSERT INTO public.tb_produtos VALUES (28, 10.99, 1, '//img.sitemercado.com.br/produtos/dc75584f2f733b9619c398a81825a36d615baeaf215002c4255e0dc628a79e23_mini.jpg', 'Adoçante de Sucralose Zero Cal 100Ml', true);
INSERT INTO public.tb_produtos VALUES (29, 6.29, 1, '//img.sitemercado.com.br/produtos/0f7e21d092d864f969f41aa7c42e4e8ea097d3f63ec24612fe57ea3f2cbb4056_mini.jpg', 'Adoçante com Stévia Magro de 65Ml', true);
INSERT INTO public.tb_produtos VALUES (30, 3.99, 1, '//img.sitemercado.com.br/produtos/ef9cab1901a2674fc6e75f712d4a3459b8ebde16357f67c5b332331d1881f96b_mini.jpg', 'Adoçante Líquido Adocyl 100Ml', true);
INSERT INTO public.tb_produtos VALUES (31, 6.39, 1, '//img.sitemercado.com.br/produtos/6078f88f74e174b2852956e77cae0395c4de854f57b64a381bf26f6149e5e3d9_hero_mini.jpg', 'Açúcar Demerara Naturale União 1Kg', true);
INSERT INTO public.tb_produtos VALUES (32, 86.45, 1, '//img.sitemercado.com.br/produtos/2f0bef6007a4f49b6155b574f405bb317f96ac20d5c8248fa8c916634d84d452_mini.jpg', 'Cesta Basica Aurora Tropical 11 Itens', true);
INSERT INTO public.tb_produtos VALUES (33, 39.9, 1, '//img.sitemercado.com.br/produtos/7e9e53de8995d36c9e2d9a437a021d7b6289af3ec58cd3e6d9d0aad2112ff8cc_hero_mini.jpg', 'Cesta de Natal Alegria Condor', true);
INSERT INTO public.tb_produtos VALUES (34, 2.49, 1, '//img.sitemercado.com.br/produtos/39e9bfccd1fb4477a70f6204a71d5d2faef56caac997f05d799d14c06c2a41eb_mini.jpg', 'Sal Refinado Moc 1kg', true);
INSERT INTO public.tb_produtos VALUES (36, 4.69, 1, '//img.sitemercado.com.br/produtos/82fe205625c0d477249494b0eab53e257a9c2571747065a5cc41ab71a269c1db_mini.jpg', 'Sal Marinho Zaeli Natural 1Kg', true);
INSERT INTO public.tb_produtos VALUES (37, 8.49, 1, '//img.sitemercado.com.br/produtos/bf05f37173a6bd0fd1014fdab9306f0363b3502bb52e2b1544f00a08f866ae8e_mini.jpg', 'Sal Marinho Jasmine Atlantis Pacote 1kg', true);
INSERT INTO public.tb_produtos VALUES (38, 3.05, 1, '//img.sitemercado.com.br/produtos/8a11d77b2f016a55e367e2ef79a05ce605f5c5832122d31c0242c8faf4037090_mini.jpg', 'Sal Grosso Diana 1Kg', true);
INSERT INTO public.tb_produtos VALUES (39, 12.29, 1, '//img.sitemercado.com.br/produtos/061456aef514404c3f5dae808c8680de5d824e8fd8916f943ab4f6da2c4fe70e_mini.jpg', 'Sal do Himalaia Zaeli Fino 250G', true);
INSERT INTO public.tb_produtos VALUES (40, 9.99, 1, '//img.sitemercado.com.br/produtos/3595a71d2e657c684c5d97c58084bd776513d4e854523e2d616e4c930367de58_mini.jpg', 'Tempero de Churrasco Ajinomoto 500G', true);
INSERT INTO public.tb_produtos VALUES (41, 15.99, 1, '//img.sitemercado.com.br/produtos/d482c83e3e8355e84a0c24ae4fb4a42f33283f15e2e37c00b9a19c0bb2780f74_mini.jpg', 'Sal Rosa Himalaia Strafit Moedor 90G', true);
INSERT INTO public.tb_produtos VALUES (14, 57.9, 1, '//img.sitemercado.com.br/produtos/4a376a567d0737dfb6db5c006a435bbe2d0a7419bf6d5a7d4f97b9e7c9a2eb56_mini.jpg', 'Azeite Oliva Borges Ev Vd 500Ml Clas', false);
INSERT INTO public.tb_produtos VALUES (13, 45.99, 1, '//img.sitemercado.com.br/produtos/08171e51c32d68364ee90fc42f372b4804bff180cef440532f29a671f06c47c2_mini.jpg', 'Azeite Oliva Extra Virgem Gallo 500ml', false);
INSERT INTO public.tb_produtos VALUES (42, 2.29, 1, '//img.sitemercado.com.br/produtos/82ccaa905dc9af2a914008c13be9c42d10a4ffe0bd2016f796f7a6746c057072_mini.jpg', 'Feijão Carioca Tchê 1Kg', true);
INSERT INTO public.tb_produtos VALUES (7, 7.49, 1, '//img.sitemercado.com.br/produtos/fb1a862decbf2b2448cd740d8514df118eb498cbb4e823c03de13078fb025848_mini.jpg', 'Arroz Agulhinha Tipo 1 Buriti', true);
INSERT INTO public.tb_produtos VALUES (35, 4.89, 1, '//img.sitemercado.com.br/produtos/989d8b4a35a997b1e8ff1e20df7dd65520f505285c35d135f2ebc449d150a4a5_mini.jpg', 'Sal Refinado Diana 1Kg', true);
INSERT INTO public.tb_produtos VALUES (25, 22.99, 1, '//img.sitemercado.com.br/produtos/cde0e10308fe65dadb69e164811abb4035616e6f4a261ab0192aa4744961ddae_mini.jpg', 'Açúcar Refinado Caravelas 5kg', true);
INSERT INTO public.tb_produtos VALUES (1, 34.99, 1, '//img.sitemercado.com.br/produtos/b7be90bc5f20d704557c305438973ebfffe1923c88df7eb860deb5b3eb947062_mini.jpg', 'Arroz Parboilizado Buriti Pacote 5Kg.', true);
INSERT INTO public.tb_produtos VALUES (43, 6.19, 1, '//img.sitemercado.com.br/produtos/a51e36e9788ddfb52f8737b77124cab0995b1f1a9da808538ab329d4c6361776_mini.jpg', 'Feijão Fradinho Caldo Bom 500G', true);
INSERT INTO public.tb_produtos VALUES (44, 6.99, 1, '//img.sitemercado.com.br/produtos/dac980c74a12a67f126ae8655719c137c3bb2faefe44176bb3c47e4b1c3f9a7f_mini.jpg', 'Feijão Vermelho Caldo Bom 500G', true);
INSERT INTO public.tb_produtos VALUES (45, 8.79, 1, '//img.sitemercado.com.br/produtos/87c264eb4eb5d4ba6ed5cbdb790b1dcd0418f1d26afd3bb10ff469edda0d8776_mini.jpg', 'Feijão Cavalo Caldo Bom 500G', true);
INSERT INTO public.tb_produtos VALUES (46, 8.79, 1, '//img.sitemercado.com.br/produtos/20ced64801de772523a18a8ec1ab85e56fc62b47563ea7e27eb526b74f15d5a1_mini.jpg', 'Feijão Branco Caldo Bom Alubia 500G', true);
INSERT INTO public.tb_produtos VALUES (47, 16.58, 1, '//img.sitemercado.com.br/produtos/7e0c61a91125e0d4044764645e75eb20452233ed678b8db83387f680b14d8eae_mini.jpg', 'Feijao Carioca Vapza 500G', true);
INSERT INTO public.tb_produtos VALUES (1082, 21.99, 3, NULL, 'Cabo de Reio Serena kg', true);
INSERT INTO public.tb_produtos VALUES (48, 9.5, 1, '//img.sitemercado.com.br/produtos/c0bd6f7cefcaabe77decb40d04695c1ffaf299f6d5cd09c739b4b069ccad55cb_mini.jpg', 'Feijão Branco Jandira 500G', true);
INSERT INTO public.tb_produtos VALUES (49, 6.29, 1, '//img.sitemercado.com.br/produtos/b7ee3977f48d9ee6f2250abf3053e742a00151424987a36493d6bfcfcb072896_mini.jpg', 'Feijão Preto a Vapor Caldo Bom 250G', true);
INSERT INTO public.tb_produtos VALUES (50, 8.18, 1, '//img.sitemercado.com.br/produtos/b3d2bd17208a718ecaed0bc672cb4abec6b68966d59153725a516b99681f72a5_mini.jpg', 'Lentilha Camil Pacote 500G', true);
INSERT INTO public.tb_produtos VALUES (51, 8.19, 1, '//img.sitemercado.com.br/produtos/a7c4894154d063bd31c8b115484c39d2e7da74efa79faaa5a37b758a5fa0a636_mini.jpg', 'Lentilha Caldo Bom Pacote 400g', true);
INSERT INTO public.tb_produtos VALUES (52, 7.09, 1, '//img.sitemercado.com.br/produtos/a8aac65faa1a920b9f12bbd705cb18f747327829e9b5c4652ffd31c945eb45e9_mini.jpg', 'Milho para Pipoca Zaeli 500G', true);
INSERT INTO public.tb_produtos VALUES (53, 3.39, 1, '//img.sitemercado.com.br/produtos/68c5a480ebb72e11fd272e04098035b9d1aafb2cf96c62202ea646cfd0d2470e_mini.jpg', 'Quirerinha Campo Largo Embalagem 500G', true);
INSERT INTO public.tb_produtos VALUES (55, 6.69, 1, '//img.sitemercado.com.br/produtos/d79d9aaa877b72ca76467c2acbe03f91fe8ad1630911dc94c6b8052f066ca310_mini.jpg', 'Trigo para Quibe Caldo Bom 500G', true);
INSERT INTO public.tb_produtos VALUES (56, 4.79, 1, '//img.sitemercado.com.br/produtos/34cde5fd94405aef6cd830403a5490e09b39a885760613ecf5c002372eaef4db_mini.jpg', 'Quirera Fina Caldo Bom 400G', true);
INSERT INTO public.tb_produtos VALUES (57, 15.99, 1, '//img.sitemercado.com.br/produtos/d5837f0fed100377822dd1dce4d8d3ebf6a8af8a650eb5ed1e8bbc3cf2ea7cb6_mini.jpg', 'Chia em Grãos Vitao 150G', true);
INSERT INTO public.tb_produtos VALUES (58, 5.29, 1, '//img.sitemercado.com.br/produtos/d177a217055f2c8132a99082d0adc2abe10277bb6b4bf4bcff75ffb62872a2f0_mini.jpg', 'Farofa Pronta de Milho Caldo Bom 500G', true);
INSERT INTO public.tb_produtos VALUES (59, 9.75, 1, '//img.sitemercado.com.br/produtos/a72b3aa1faea7fa3f4b352caf96f0365dca478715d9aab7c7854387fcda92cf3_mini.jpg', 'Polvilho Azedo Jandira Embalagem 500G', true);
INSERT INTO public.tb_produtos VALUES (60, 5.59, 1, '//img.sitemercado.com.br/produtos/f74a88c941103b8d346d2dfd53fc360f0f05e7d4a8b8d33a73197bd3cbad9b92_mini.jpg', 'Farofa de Mandioca Tradicional Yoki 250G', true);
INSERT INTO public.tb_produtos VALUES (61, 12.89, 1, '//img.sitemercado.com.br/produtos/9b2cadec9b834db1174833765ad61f79022e58683075d12b720083e4af413a5b_mini.jpg', 'Tapioca Rocha 1Kg', true);
INSERT INTO public.tb_produtos VALUES (107, 24.97, 3, '//img.sitemercado.com.br/produtos/2f6774453a41d95a3193958d39096ecdd22d719e8b16754fac3612a7ca5c0bb4_mini.jpg', 'Carne Bovino Musculo 1Kg', true);
INSERT INTO public.tb_produtos VALUES (62, 10.59, 1, '//img.sitemercado.com.br/produtos/60327479d6faf17dfd6939afaf8709f32ea73db41e7640367e868fcf2b1e6675_mini.jpg', 'Fécula de Mandioca para Tapioca Pinduca Embalagem 1Kg', true);
INSERT INTO public.tb_produtos VALUES (63, 5.99, 1, '//img.sitemercado.com.br/produtos/48f43cad1b711b95e53df988f7827f4ede40bb028eb76a283e947cde2f6af73f_mini.jpg', 'Fubá Mimoso Zaeli 1Kg', true);
INSERT INTO public.tb_produtos VALUES (64, 4.99, 1, '//img.sitemercado.com.br/produtos/f40e2743fea853168814649b56247ca06024dda6d9d609ca4a2484399e65c276_mini.jpg', 'Farofa Pronta Caldo Bom Cebola Crocante 250G', true);
INSERT INTO public.tb_produtos VALUES (65, 4.29, 1, '//img.sitemercado.com.br/produtos/3923bca0ceb8ccf0852aca81e2a7b2b31704ef837da061e296cec8af46e52df3_mini.jpg', 'Fubá de Milho Amarelo Campo Largo Pacote 1Kg', true);
INSERT INTO public.tb_produtos VALUES (66, 12.99, 1, '//img.sitemercado.com.br/produtos/18fb90593544b00af2c7e7299a39619cc2b4e6622aca360b53c066cd3af6f3ac_mini.jpg', 'Macarrão Instantâneo Lámen Galinha Caipira 85G Nissin Leve6 Pague5un', true);
INSERT INTO public.tb_produtos VALUES (68, 4.59, 1, '//img.sitemercado.com.br/produtos/0e04af244830cab8be07f2aaa3c1308ac1fc1a5e5e10d8fc20308d9d53b24a34_mini.jpg', 'Macarrão Espaguete N5 Todeschini com Ovos Pacote 500G', true);
INSERT INTO public.tb_produtos VALUES (69, 5.5, 1, '//img.sitemercado.com.br/produtos/44f72233ed41ec049ffd95dbdc712461a72cee14a3d3633d414f866127bdb0c8_mini.jpg', 'Macarrão com Ovos Espaguete Nº8 Barilla 500G', true);
INSERT INTO public.tb_produtos VALUES (71, 5.39, 1, '//img.sitemercado.com.br/produtos/9f16acff549282a9eefd1d459daad8eb59100f03d0ee99bada3b0af07b8e5d20_mini.jpg', 'Macarrão Fettuccini Todeschini com Ovos Pacote 500G', true);
INSERT INTO public.tb_produtos VALUES (72, 5.49, 1, '//img.sitemercado.com.br/produtos/74a860eb73eff9ff4029839dfd6c6e92a338c65f19b5ae7b6fc71f305581610e_mini.jpg', 'Massa Condor Caseira Speciale 500G', true);
INSERT INTO public.tb_produtos VALUES (73, 3.45, 1, '//img.sitemercado.com.br/produtos/46a988ec8f676ab16c3049c4a1d9d3364bfb165fa818324e468ca6263125b4ed_mini.jpg', 'Massa para Macarrão de Sêmola Espaguete Isabela 400G', true);
INSERT INTO public.tb_produtos VALUES (74, 6.99, 2, '//img.sitemercado.com.br/produtos/66b597ce2d6db8d689f6bc2b9b46a1abf54c3193e7aa2967c71a299806c17218_mini.jpg', 'Banana Prata...', true);
INSERT INTO public.tb_produtos VALUES (75, 2.14, 2, '//img.sitemercado.com.br/produtos/68fd5fdecfee878b34fd05472038587bb1b9e47e7615ed61daccefb5f8c736f0_mini.jpg', 'Limão Taiti', true);
INSERT INTO public.tb_produtos VALUES (76, 3.79, 2, '//img.sitemercado.com.br/produtos/e64345495623f5a22572046d14787ea67103fe91ad5ac576d8c298591ef85a4e_mini.jpg', 'Banana Caturra', true);
INSERT INTO public.tb_produtos VALUES (77, 4.49, 2, '//img.sitemercado.com.br/produtos/0632faa35d818029123d03881edc80ff321428e0ba39b751fa2f0672e10179f3_mini.jpg', 'Laranja Pera', true);
INSERT INTO public.tb_produtos VALUES (78, 7.99, 2, '//img.sitemercado.com.br/produtos/ac289b689f4cd05f7b90e88ae844daf50754fba1b80fd37c88ea229f59e843de_mini.jpg', 'Mamão Havai Papaia', true);
INSERT INTO public.tb_produtos VALUES (79, 14.98, 2, '//img.sitemercado.com.br/produtos/dcea498bf02d9f68878cb573d583339a9bca615b8d0bdd689f16e8898463875e_mini.jpg', 'Maçã', true);
INSERT INTO public.tb_produtos VALUES (694, 6.89, NULL, 'http://fubi.ca/img/image_file_1706295929.webp', 'Farinha de Trigo Anaconda 1kg', true);
INSERT INTO public.tb_produtos VALUES (80, 3.87, 2, '//img.sitemercado.com.br/produtos/b28da5a8b218d0c2f8591368b413e9a48a9edb1ba95a0ade114f60eb7ea23f26_mini.jpg', 'Melão Espanhol  Kg', true);
INSERT INTO public.tb_produtos VALUES (81, 6.29, 2, '//img.sitemercado.com.br/produtos/b14293de73d02b172f1af13fbd28893b29222f0e36b91695505d5f0ca73e5387_mini.jpg', 'Manga Palmer', true);
INSERT INTO public.tb_produtos VALUES (82, 9.99, 2, '//img.sitemercado.com.br/produtos/47de6637d1c14f541c9ecf122debef2011031b412869a695cdf8a038f8134ba7_mini.jpg', 'Batata', true);
INSERT INTO public.tb_produtos VALUES (83, 4.16, 2, '//img.sitemercado.com.br/produtos/dd4141363ffcf805cc94568e0c246a980777d15616dbc660df79ea655fcf70aa_mini.jpg', 'Cebola', true);
INSERT INTO public.tb_produtos VALUES (67, 2.99, 1, '//img.sitemercado.com.br/produtos/03fec1b7be058fa236bb4a323e2dad7315157790036f8d4069cfe1b18bb70574_hero_mini.jpg', 'Macarrão Instantâneo Sabor Galinha Caipira Nissin 85G', true);
INSERT INTO public.tb_produtos VALUES (70, 2.99, 1, '//img.sitemercado.com.br/produtos/2d795d8d75a86a8f586d34bbad3994e7af4eb8f42efa6a9e189a593e16c2f3b8_mini.jpg', 'Miojo Lámen de Tomate Suave Nissin 85G', true);
INSERT INTO public.tb_produtos VALUES (1051, 36.99, 3, NULL, 'Contra File Duplo kg', true);
INSERT INTO public.tb_produtos VALUES (1052, 44.99, 3, NULL, 'Alcatra s/osso kg', true);
INSERT INTO public.tb_produtos VALUES (1053, 49.99, 3, NULL, 'Contra File s/osso kg', true);
INSERT INTO public.tb_produtos VALUES (86, 5.39, 2, '//img.sitemercado.com.br/produtos/4bcac55f0cea08c2c3f334a70f49bc2110af906b389747fbf3f7fded7b9fc7d5_mini.jpg', 'Beterraba kgl', true);
INSERT INTO public.tb_produtos VALUES (87, 6.99, 2, '//img.sitemercado.com.br/produtos/6f4ad4f6bb61d9d9715742fd39c8e670d887a51a5b13169e98f5042a89901ac5_mini.jpg', 'Chuchu', true);
INSERT INTO public.tb_produtos VALUES (88, 5.79, 2, '//img.sitemercado.com.br/produtos/218bf97110b782efe3557a705faef97131ac63caf52146b0d0528c343a58fabb_mini.jpg', 'Pepino   Japonês Kg', true);
INSERT INTO public.tb_produtos VALUES (89, 5.69, 2, '//img.sitemercado.com.br/produtos/455ff0b6ccfae461c091489fb4c668e7485df2b8187154f97c30b9ac773d645f_mini.jpg', 'Abobrinha Verde', true);
INSERT INTO public.tb_produtos VALUES (90, 18.7, 2, '//img.sitemercado.com.br/produtos/6168eb76ce4f7c7384607786738285f1aee45a74d21b615946fef3574bfe517a_mini.jpg', 'Alho', true);
INSERT INTO public.tb_produtos VALUES (756, 15.49, 11, 'http://fubi.ca/img/image_file_1706305703.webp', 'Erva Mate Chimarrão Natural 1kg', true);
INSERT INTO public.tb_produtos VALUES (91, 2.29, 2, '//img.sitemercado.com.br/produtos/4fb4ee0fce783a77ca697666266ce0a1a8bdae27376713da6a6b9f95935b07bc_mini.jpg', 'Cheiro Verde Maço Unidade', true);
INSERT INTO public.tb_produtos VALUES (92, 2.99, 2, '//img.sitemercado.com.br/produtos/d71bf29b4661ccc803c49adaf401e55b9e0b50503270fb7db49ede81846e6f00_mini.jpg', 'Salsinha Maço', true);
INSERT INTO public.tb_produtos VALUES (93, 6.79, 2, '//img.sitemercado.com.br/produtos/10d2468c30d5e09f1e6d6c02f952a1abbefea15b1abadfc31cc5b5b23e5eaa3e_mini.jpg', 'Alho Descascado Hoshina 150G', true);
INSERT INTO public.tb_produtos VALUES (94, 17.99, 2, '//img.sitemercado.com.br/produtos/4b99385a21ddd80da35180ecbcf1c1538db3641e64346799a8fa72b32939ec0f_mini.jpg', 'Alho Hoshina Descascado 400G', true);
INSERT INTO public.tb_produtos VALUES (95, 28.9, 2, '//img.sitemercado.com.br/produtos/53fa211b2dd8809f0fb987e4e1fa230025186aaf73e236a13d63f7ddce51a857_mini.jpg', 'Gengibre', true);
INSERT INTO public.tb_produtos VALUES (97, 5.99, 2, '//img.sitemercado.com.br/produtos/95831be0a6d0504a8c9d788b42be1601c69138bca75f74bcbee475c0aa9a0400_mini.jpg', 'Coentro Strapasson Embalagem 100G', true);
INSERT INTO public.tb_produtos VALUES (98, 3.99, 2, '//img.sitemercado.com.br/produtos/4053bbbf12d68870cb03b57d3590c3c392f86053026a9d9d09b04ff321b3f5bb_mini.jpg', 'Escarola Un', true);
INSERT INTO public.tb_produtos VALUES (99, 3.99, 2, '//img.sitemercado.com.br/produtos/65bd98521f5383282a3c9a671d8ec70babd4eab3328e24253e57fbe5d0b59926_mini.jpg', 'Alface Crespa Unidade', true);
INSERT INTO public.tb_produtos VALUES (100, 4.79, 2, '//img.sitemercado.com.br/produtos/070d9941886d258c8aebfbe5b09be9c303a9c833b3e79c60ec0c49dce713f355_mini.jpg', 'Rúcula Maço', true);
INSERT INTO public.tb_produtos VALUES (101, 8.49, 2, '//img.sitemercado.com.br/produtos/4256650a02a8db6b134d8c8496b62188754c4026a3fe0c0c8fc41dcabb368bd2_mini.jpg', 'Repolho Verde Un', true);
INSERT INTO public.tb_produtos VALUES (102, 3.99, 2, '//img.sitemercado.com.br/produtos/62f19a73c06c07e1fc26724497dddc97b7ddd43fb5ce4e1a9fc35221fa37a34a_mini.jpg', 'Couve Manteiga Maço', true);
INSERT INTO public.tb_produtos VALUES (103, 7.49, 2, '//img.sitemercado.com.br/produtos/56fc9c8330a8d57edceba863a1c20891298ff826f4cebc2d215c75efaa655541_mini.jpg', 'Brócolis', true);
INSERT INTO public.tb_produtos VALUES (105, 7.99, 2, '//img.sitemercado.com.br/produtos/8b13a76d41d9b90378815dbdde3ae487c6fab0a6bd9c04d9a9ebedaf2d73e4db_mini.jpg', 'Acelga Unid.', true);
INSERT INTO public.tb_produtos VALUES (712, 6.49, 11, 'http://fubi.ca/img/image_file_1706298693.webp', 'Aveia em Flocos Nestlé 170g', true);
INSERT INTO public.tb_produtos VALUES (108, 29.73, 3, '//img.sitemercado.com.br/produtos/6e9775b6a81b970d685fced5b735312a8da8c7e467cf687652f3e49ff239c982_mini.jpg', 'Coxão Mole Resfriado', true);
INSERT INTO public.tb_produtos VALUES (109, 14.98, 3, '//img.sitemercado.com.br/produtos/afdb5ca182fe2608460958dcdd581453fd659827bb71793040a3ec902a53ef12_mini.jpg', 'Carne Moída Bovina Congelada Friboi 500G', true);
INSERT INTO public.tb_produtos VALUES (111, 69.9, 3, '//img.sitemercado.com.br/produtos/beb818d99011f1feaee665fa5f05563256b834d3bd7d1b36170f2eb53fe72b59_mini.jpg', 'Filé Mignon Bovino', true);
INSERT INTO public.tb_produtos VALUES (112, 35.97, 3, '//img.sitemercado.com.br/produtos/bc8c566491d31c38028bdee929ef5b2309d755bafe6ae16afff13a5fa5210a3f_mini.jpg', 'Miolo da Alcatra Bovina Pedaço a Vácuo Kg', true);
INSERT INTO public.tb_produtos VALUES (113, 36.69, 3, '//img.sitemercado.com.br/produtos/16305979546294cfc171ba1e1ba46ea940c028f8c738e840cc59d641a7f599eb_mini.jpg', 'Posta Vermelha Bovina Bife Kg', true);
INSERT INTO public.tb_produtos VALUES (114, 8.79, 3, '//img.sitemercado.com.br/produtos/83e06c111c26fef2a439df87c720ce93ca59d54dcd8d706f5e665d257e6d3a26_mini.jpg', 'Frango Coxa Sobre Coxa', true);
INSERT INTO public.tb_produtos VALUES (115, 14.08, 3, '//img.sitemercado.com.br/produtos/c0970f1331ec076f87c409e18359b14b4d5741120fdd8e4480d4cd8b12f743df_mini.jpg', 'Carne Frango Filé de Peito Congelado Kg', true);
INSERT INTO public.tb_produtos VALUES (116, 11.9, 3, '//img.sitemercado.com.br/produtos/db711842270ac7db7bb91576c660d6787b2e6328e223af9b65f646f60d8b7fb9_mini.jpg', 'Coxinha da Asa Congelada   Kg', true);
INSERT INTO public.tb_produtos VALUES (117, 10.9, 3, '//img.sitemercado.com.br/produtos/d79f4a8c997da8cde7737a3145f221af7361c8f339e023e086d50510a3da7f54_mini.jpg', 'Frango Maringá  Kg', true);
INSERT INTO public.tb_produtos VALUES (118, 17.59, 3, '//img.sitemercado.com.br/produtos/73fd1cc65654b2f6621f5a2c87471cb5b747ef4f3078cd2ca7a4dc385988f14f_mini.jpg', 'Frango Caipira Nhô Bento Kgs', true);
INSERT INTO public.tb_produtos VALUES (119, 13.89, 3, '//img.sitemercado.com.br/produtos/ef7b79514551a4bea8253f8d55ea36789328b332228d456aab869d1cac898ed3_mini.jpg', 'Coxinha da Asa de Frango Congelado Nat 1Kg', true);
INSERT INTO public.tb_produtos VALUES (120, 22.99, 3, '//img.sitemercado.com.br/produtos/60d5877c1304c4d3b72ead677ef4c29460a9506269c84a8f8f95d4b246025d76_mini.jpg', 'Filézinho Sassami de Frango Congelado e Temperado Marinados Sadia 1Kg', true);
INSERT INTO public.tb_produtos VALUES (121, 15.99, 3, '//img.sitemercado.com.br/produtos/fd123f370cc46fb52e9b90afa4deb8047693a09031b01154fb8f3760ec69ef74_hero_mini.jpg', 'Filé de Peito de Frango Temperado Cozido Desfiado Congelado Copacol 400G', true);
INSERT INTO public.tb_produtos VALUES (122, 17.98, 3, '//img.sitemercado.com.br/produtos/b8f2a42f8664dd246ad340825e3a42e59f257c74485d1dfcde8e686c11e9bd74_mini.jpg', 'Linguiça Mista Frescal Bizinelli 1Kg', true);
INSERT INTO public.tb_produtos VALUES (123, 19.59, 3, '//img.sitemercado.com.br/produtos/cb00fcb07dac6b136378ccae490c00cce831752104f52c5f7a4696b3255c05b0_mini.jpg', 'Linguiça Calabresa Fricasa', true);
INSERT INTO public.tb_produtos VALUES (124, 19.99, 3, '//img.sitemercado.com.br/produtos/389b4e8ad2bcd202e7df9ba5b7c7ebf16783d63635e416d55587fb45715d7902_mini.jpg', 'Linguiça Calabresa Alegra', true);
INSERT INTO public.tb_produtos VALUES (125, 23.9, 3, '//img.sitemercado.com.br/produtos/3ea6939d13ff13a36fd7e06e2caf74a1ad2dff3258812b81429ca49d6ac88336_mini.jpg', 'Linguiça Calabresa Defumada Frimesa Kg', true);
INSERT INTO public.tb_produtos VALUES (126, 31.98, 3, '//img.sitemercado.com.br/produtos/3cc2eb24bd2ed396e54278cbaf811d04200369070d59fa11223cf5f348c5183a_mini.jpg', 'Linguica Bizinelli Fina Especial Kg', true);
INSERT INTO public.tb_produtos VALUES (127, 32.49, 3, '//img.sitemercado.com.br/departamentos/carnes-aves-e-peixes_ind.jpg', 'Linguiça  Calabresa Perdigão', true);
INSERT INTO public.tb_produtos VALUES (106, 88.99, 3, '//img.sitemercado.com.br/produtos/73a484f23d11a8eb4dc971cbba588650c46c20877b3900c5edbac3928dd11d4e_mini.jpg', 'Picanha Bovina Kg', true);
INSERT INTO public.tb_produtos VALUES (129, 18.39, 3, '//img.sitemercado.com.br/produtos/de23e6375502f395b69d1a0b29156d3ac31a8007be7162d64bf64525da10e752_mini.jpg', 'Linguiça de Frango Fina Copacol Pacote 800G', true);
INSERT INTO public.tb_produtos VALUES (130, 33.79, 3, '//img.sitemercado.com.br/produtos/8ad7a4e03face101db4a9ba433a806cec81ee05bb77b60ba9492dd544fe0c200_mini.jpg', 'Bacon Defumado Sadia', true);
INSERT INTO public.tb_produtos VALUES (131, 19.99, 3, '//img.sitemercado.com.br/produtos/71ba2df4bc006701f2b650bb0389eb6ca22f1f6f485386180bc0796125bff7b8_mini.jpg', 'Bacon Alegra Tablete', true);
INSERT INTO public.tb_produtos VALUES (132, 30.89, 3, '//img.sitemercado.com.br/produtos/036301a9fbd7d4a5d093d4d5657f06e16eeb0246d77c54d71958c2508738599d_mini.jpg', 'Bacon Alegra Pedaço', true);
INSERT INTO public.tb_produtos VALUES (133, 13.89, 3, '//img.sitemercado.com.br/produtos/8463c77f4dee44a409b1f154297d01851fe17c68fce760ce334e2886b146136f_hero_mini.jpg', 'Bacon Seara em Cubos 140G', true);
INSERT INTO public.tb_produtos VALUES (134, 15.98, 3, '//img.sitemercado.com.br/produtos/98666c949376cdd588fd31990d66520963bc2602751fb90200b182c8a58c4186_mini.jpg', 'Bacon em Fatias Perdigão 250G', true);
INSERT INTO public.tb_produtos VALUES (135, 31.99, 3, '//img.sitemercado.com.br/produtos/b3303a84367fd6a8a35fe00de816a6a7d04a59f2cc67ba2e0a04fd7dff23011d_mini.jpg', 'Bacon Paleta Fricasa Extra', true);
INSERT INTO public.tb_produtos VALUES (136, 38.82, 3, '//img.sitemercado.com.br/produtos/bd1e9591693208a1f0932a4423b9a18eac82a4ae633dd1152ec199c77f39d9dc_mini.jpg', 'Costela Suína Defumada Bizinelli', true);
INSERT INTO public.tb_produtos VALUES (137, 16.69, 3, '//img.sitemercado.com.br/produtos/79e8105455bfa9ffe6bd2c5460025b3de6fbd3c1b2329ad7970d3769e0942bb0_mini.jpg', 'Bacon Defumado em Fatias Aurora 250G', true);
INSERT INTO public.tb_produtos VALUES (138, 27.79, 3, '//img.sitemercado.com.br/produtos/6babf9194083bd8efbb1f4bfa78a9daa6c93a91cdf692fc97c6183da946754b5_mini.jpg', 'Tilápia Congelada Copacol Filé Pacote 400G', true);
INSERT INTO public.tb_produtos VALUES (139, 19.55, 3, '//img.sitemercado.com.br/produtos/82a86cc3f851e33ea5cba7cae28361c9ba8ed2cc29ab08be0e558390087893ec_mini.jpg', 'Filé de Tilápia Smartfish Congelado Pacote 400G', true);
INSERT INTO public.tb_produtos VALUES (140, 42.9, 3, '//img.sitemercado.com.br/produtos/3eb4c604aa810bb47c8ebe80e20c77faeac629468d00e3d6b90dde81b70d8071_hero_mini.jpg', 'Filé de Tilápia Congelada Copacol 800G', true);
INSERT INTO public.tb_produtos VALUES (141, 21.9, 3, '//img.sitemercado.com.br/produtos/49cede4ebdc7691cbc1e67d4f872cf5fc1fbedeed14962a6e3ee380bc79a7ce7_mini.jpg', 'Posta de Tilápia Copacol 800G', true);
INSERT INTO public.tb_produtos VALUES (142, 31.08, 3, '//img.sitemercado.com.br/produtos/2d823365a5a8148c4e21528dce50d143ed969f92789be7c4f9058f304c4226f5_mini.jpg', 'Tilápia Congelada Copacol Petisco Pacote 600G', true);
INSERT INTO public.tb_produtos VALUES (143, 21.9, 3, '//img.sitemercado.com.br/produtos/28b6905253085366515397de20cae95da2a6f8b073155f621d6aa932a8ef9d56_mini.jpg', 'Filé de Tilápia Congelado Canção 400G', true);
INSERT INTO public.tb_produtos VALUES (144, 80.9, 3, '//img.sitemercado.com.br/produtos/04258006e0a9d0ff3ee1904947276aabf4c131e7b2f8ab2ce3d8680503b15679_mini.jpg', 'Filé de Salmão Congelado Costa Sul 500G', true);
INSERT INTO public.tb_produtos VALUES (145, 32.59, 3, '//img.sitemercado.com.br/produtos/68e875717143263d1c2df70093c8857bd38a9a2f855412f5728c709751b21f21_mini.jpg', 'Filé de Pescada Costa Sul Pacote 500G', true);
INSERT INTO public.tb_produtos VALUES (146, 19.89, 3, '//img.sitemercado.com.br/produtos/53ce9bd2ead7e87f5483613430bfa12d6762ffc161fd6ae58b7cf541dafc166a_mini.jpg', 'Filé Mignon Suíno Sadia sem Osso Congelado 1Kg', true);
INSERT INTO public.tb_produtos VALUES (148, 37.88, 3, '//img.sitemercado.com.br/produtos/c19b35b97c5651c0bc0f802111d103c6391d703e9672bcf494df2628592851cd_mini.jpg', 'Kit Feijoada Bizinelli Defumado Kg', true);
INSERT INTO public.tb_produtos VALUES (149, 26.9, 3, '//img.sitemercado.com.br/produtos/a4df35800071df77348d5996953b68e13fb0e499a2aef2f4dc3d8b6fd609a2ee_mini.jpg', 'Costela Suína Sulita Kg', true);
INSERT INTO public.tb_produtos VALUES (713, 6.99, 9, 'http://fubi.ca/img/image_file_1706298935.webp', 'Doce de Morango Divina Mesa 400g', true);
INSERT INTO public.tb_produtos VALUES (150, 25.59, 3, '//img.sitemercado.com.br/produtos/4eece7407b59bf6366ef224a924f979a8c737c5a759e85d10fc0efa8e7d8def3_mini.jpg', 'Sadia Costelinha Suína', true);
INSERT INTO public.tb_produtos VALUES (151, 27.9, 3, '//img.sitemercado.com.br/produtos/3caa51981b3e487b8b18fc73cffa5d5c73ba005e641e41cfa596bcb0988f9eda_mini.jpg', 'Filé-Mignon Suíno Alegra Temperado Kg', true);
INSERT INTO public.tb_produtos VALUES (152, 23.9, 3, '//img.sitemercado.com.br/produtos/0a4b2a64d618562c33179b4fc72165f95d4eeebb37dce782c971ad250e357632_mini.jpg', 'Costela Suína Grill', true);
INSERT INTO public.tb_produtos VALUES (153, 18.99, 3, '//img.sitemercado.com.br/produtos/5e6f22f942275918a3fbd26cd177689f9a5e7721200363a5f3c23c86d1434a7f_mini.jpg', 'Bisteca Suína Sadia Fatiada Congelada', true);
INSERT INTO public.tb_produtos VALUES (154, 57.9, 3, '//img.sitemercado.com.br/produtos/74ed5bdf974c29b5dfd5947b2c5cc2fda3c5139e985dd4ef6f2d5ce3cc955e5b_hero_mini.jpg', 'Camarão Sete Barbas Descascado Congelado 400G', true);
INSERT INTO public.tb_produtos VALUES (155, 52.9, 3, '//img.sitemercado.com.br/produtos/4aed3a71c4ddcecffa868637f655ddb62e70fb0e93a7fd8c9e596c1cbb0cb64b_mini.jpg', 'Camarão Vannamei Copacol Descascado Cozido Congelado 380G', true);
INSERT INTO public.tb_produtos VALUES (156, 40.9, 3, '//img.sitemercado.com.br/produtos/ff5a10a2795293c2a082ee04acd2daf00453b97252b0c1d5a5a9c87d2324b477_mini.jpg', 'Camarão Vanamei Inteiro Costa Sul Cozido Congelado Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (157, 52.9, 3, '//img.sitemercado.com.br/produtos/d81e9554ebce646e00d5e2b04d5e6ab78603372b4c1c5c56b0bc82780ee15b93_mini.jpg', 'Ingredientes para Paella Lula, Mexilhão, Polvo e Camarão Costa do Sul 400G', true);
INSERT INTO public.tb_produtos VALUES (158, 19.98, 3, '//img.sitemercado.com.br/produtos/07b6e676be8d7cee2e934d89d4b1aebc99c19a0673f699ba597e69a2691673e4_mini.jpg', 'Carne Moída 100% Vegetal Seara Incrível 200g', true);
INSERT INTO public.tb_produtos VALUES (159, 17.98, 3, '//img.sitemercado.com.br/produtos/b6bc29f9ea6b301e21079f332e097ece931a40f8af5bea821892ba58ed0150f7_hero_mini.jpg', 'Cubos de Frango 100% Vegetal Seara Incrível 200g', true);
INSERT INTO public.tb_produtos VALUES (160, 17.39, 3, '//img.sitemercado.com.br/produtos/43fa7d26e56be6a1d7e6653e191fbab93efef7fd3612d690510c9137bef08a67_mini.jpg', 'Mistura Vegana Caldo Bom Almondega 250G', true);
INSERT INTO public.tb_produtos VALUES (161, 17.98, 3, '//img.sitemercado.com.br/produtos/e793b698aac4830511c3b5c8dad3077257b1b52cb68a0d52c47726feac96b1e6_hero_mini.jpg', 'Tiras de Carne 100% Vegetal Seara Incrível 200g', true);
INSERT INTO public.tb_produtos VALUES (162, 13.19, 3, '//img.sitemercado.com.br/produtos/bfd3f4cc84b81a1c9105d03e4d898a5330be6aeac7e6651ccc7aa983ba95af7f_mini.jpg', 'Mistura Vegana Caldo Bom Quibe 250G', true);
INSERT INTO public.tb_produtos VALUES (163, 26.98, 3, '//img.sitemercado.com.br/produtos/fb1184dde00067c8418441a0962773828d1eb30e762952c17781ddae3747e886_hero_mini.jpg', 'Pernil Desfiado Pulled Pork 100% Vegetal Seara Incrível 350g', true);
INSERT INTO public.tb_produtos VALUES (166, 13.69, 4, '//img.sitemercado.com.br/produtos/000d271db56f15213ccc760f113e53e1e15669b6e8e1bf38972f7a1b1d535ef1_mini.jpg', 'Manteiga com Sal Aviação 200G', true);
INSERT INTO public.tb_produtos VALUES (1061, 9.29, 3, NULL, 'Frango Congelado kg', true);
INSERT INTO public.tb_produtos VALUES (165, 10.99, 4, '//img.sitemercado.com.br/produtos/e3ddfa917054ac2ae477b2cb95640bcf73973bc6259b1083dbe104539db2ae31_mini.jpg', 'Margarina sem Sal Qualy 500 g', true);
INSERT INTO public.tb_produtos VALUES (147, 14.99, 3, '//img.sitemercado.com.br/produtos/48cad7c43c533dd60ce8797fcac53da02f7d93dddfba31c2d8adc0e7e9753e3d_mini.jpg', 'Pernil Suíno com Osso com Pele', true);
INSERT INTO public.tb_produtos VALUES (167, 15.29, 4, '//img.sitemercado.com.br/produtos/fa1d0988f6e978def4a521371aeb85a28bb56983c91c3a62e668f1c2916fbed8_mini.jpg', 'Requeijão Tradicional Cremoso Vigor 400g', true);
INSERT INTO public.tb_produtos VALUES (168, 19.39, 4, '//img.sitemercado.com.br/produtos/9d87c258b27beafa3adaa7fbb888e7df24195b7c4358dfe1fb2a6599bc0ef597_mini.jpg', 'Requeijão Cremoso Tirolez 480G', true);
INSERT INTO public.tb_produtos VALUES (169, 7.99, 4, '//img.sitemercado.com.br/produtos/2ce0668970b41ce37138d4c349516d8d9f2532dc962f3b856acfc952b6aa55a4_mini.jpg', 'Creme de Ricota Tirolez 200G', true);
INSERT INTO public.tb_produtos VALUES (170, 14.99, 4, '//img.sitemercado.com.br/produtos/ec383bd8058e490d89c81da3e3ad677b6ad74ae614aa12fb39c426deb9556f77_mini.jpg', 'Requeijão Cremoso Tradicional Catupiry 420G', true);
INSERT INTO public.tb_produtos VALUES (171, 13.99, 4, '//img.sitemercado.com.br/produtos/ed790fe5fbc71f844dcf94f51906c2c20dfa872af002dbb724e4419682261f5a_mini.jpg', 'Requeijão Santa Clara Tradicional 400G', true);
INSERT INTO public.tb_produtos VALUES (172, 17.99, 4, '//img.sitemercado.com.br/produtos/608a6c552b634256f002d49fa5592bf96350acaf116dad60e89f9fd024560578_mini.jpg', 'Queijo Mussarela Santa Clara Fatiado Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (173, 28.33, 4, '//img.sitemercado.com.br/produtos/18885859ec3162a2bfaf4dea81a4dc2367b65370a55739336fa0f5e49149b265_mini.jpg', 'Queijo Mussarela Litoral Pedaço a Vácuo Kg', true);
INSERT INTO public.tb_produtos VALUES (174, 8.59, 4, '//img.sitemercado.com.br/produtos/c85a22a8f81fca6cf5742864f963d6a117aa3af3267c98130f5488571b5a82c7_mini.jpg', 'Queijo Mussarela Tirol Fatiado 150G', true);
INSERT INTO public.tb_produtos VALUES (175, 7.09, 4, '//img.sitemercado.com.br/produtos/468e643459d8f99205f8261ad476682f2f777d9e61017edc33ec10c29ad41dae_mini.jpg', 'Queijo Mussarela Santa Clara Fatiado Embalagem 150G', true);
INSERT INTO public.tb_produtos VALUES (911, 8.99, 14, 'http://fubi.ca/img/image_file_1706378948.webp', 'Amaciante Baby Soft 2L Azul', true);
INSERT INTO public.tb_produtos VALUES (176, 8.69, 4, '//img.sitemercado.com.br/produtos/37f78e38ae7b15706411ae8d6a47fa02f508801f220303eff749e45dab44e519_mini.jpg', 'Queijo Mussarela Fatiado Président 150G', true);
INSERT INTO public.tb_produtos VALUES (177, 15.99, 4, '//img.sitemercado.com.br/produtos/c065e885c9a56b05ec67b4fee931003082b6900ec63a665eb7a86cbb523993dd_mini.jpg', 'Queijo Mussarela Fatiado Président Embalagem 300G', true);
INSERT INTO public.tb_produtos VALUES (178, 5.79, 4, '//img.sitemercado.com.br/produtos/fe7eab1ad99e7b1a087491aadea921f5835092122347f503680130c6db3c11a9_mini.jpg', 'Queijo Parmesão Ralado Vigor 50G', true);
INSERT INTO public.tb_produtos VALUES (179, 17.99, 4, '//img.sitemercado.com.br/produtos/b06b844e6f874aabaed6e956a06cea481fd36081489845b9954723a79e5a60a1_mini.jpg', 'Queijo Prato Santa Clara Fatiado Lanche Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (180, 10.45, 4, '//img.sitemercado.com.br/produtos/c3ce9117b0e760850b4502b473c46b1bd0bc59e5e55ab62d56905df614f2a648_mini.jpg', 'Salame Tipo de Hambúrguer Fatiado Alegra 100G', true);
INSERT INTO public.tb_produtos VALUES (181, 10.9, 4, '//img.sitemercado.com.br/produtos/1910114c8f3bd7772d882eaa39ac3d7a6c70e97b53818a5b0c2a2bd59c41e803_mini.jpg', 'Presunto Cozido Fatiado Soltíssimo Sadia 200G', true);
INSERT INTO public.tb_produtos VALUES (182, 9.45, 4, '//img.sitemercado.com.br/produtos/e52b0f177e806ade1309bc9f06216ba82234752337dee92f501b444269bfb398_mini.jpg', 'Presunto Cozido Fatiado Perdigão 200G', true);
INSERT INTO public.tb_produtos VALUES (183, 10.45, 4, '//img.sitemercado.com.br/produtos/c3ade2e1f8fffc597ae7a5fc4bc2e2badd1fa2f3021846c628ac2fb71254c173_mini.jpg', 'Salame Italiano Alegra Fatiado Embalagem 100G', true);
INSERT INTO public.tb_produtos VALUES (184, 6.99, 4, '//img.sitemercado.com.br/produtos/142e3f235d710b751a5a4d9cd4224354d2d239b481cc27396ea7b643b268d2d7_mini.jpg', 'Mortadela Ouro Fatiada Perdigão 200G', true);
INSERT INTO public.tb_produtos VALUES (185, 7.99, 4, '//img.sitemercado.com.br/produtos/19ed6501a98d88d0d22b93813720ddc3fba86ade6e491cafca43073c328c78fd_mini.jpg', 'Presunto Perdigão Fatiado Condor 200G', true);
INSERT INTO public.tb_produtos VALUES (186, 6.85, 4, '//img.sitemercado.com.br/produtos/ddef09bc1ad048c3f04661c3d5acbfb8d7bb02423fc0d0552aed24c8f3824133_mini.jpg', 'Mortadela Gourmet Defumada Fatiada By Condor Seara 200G', true);
INSERT INTO public.tb_produtos VALUES (714, 6.99, 9, 'http://fubi.ca/img/image_file_1706298976.webp', 'Doce de Uva Divina Mesa 400g', true);
INSERT INTO public.tb_produtos VALUES (187, 5.55, 4, '//img.sitemercado.com.br/produtos/cd988fc624c1fdf76e7ecda3fb7bc21082e616d427322b9e7784ab69d5ee7a88_mini.jpg', 'Mortadela Tradicional Fatiada Perdigão 200G', true);
INSERT INTO public.tb_produtos VALUES (188, 6.99, 4, '//img.sitemercado.com.br/produtos/1dd8bca8c6ce554c92ea987bd79e24dc96530f44199745ce8f4b0d4351542ff4_mini.jpg', 'Massa para Pastel Trindade Embalagem 500G', true);
INSERT INTO public.tb_produtos VALUES (189, 11.95, 4, '//img.sitemercado.com.br/produtos/00935d4452640a30691a43fd686c13ce91d71b4c586664c80293f2f8f4e7b1d2_mini.jpg', 'Massa para Pizza Romanha 300G', true);
INSERT INTO public.tb_produtos VALUES (190, 10.89, 4, '//img.sitemercado.com.br/produtos/ed166a7d29919ca56d4e32b1ed6fed4b9057507e3d88939fec6c10eaca82b4b6_mini.jpg', 'Massa para Pastel Trindade Embalagem 1Kg', true);
INSERT INTO public.tb_produtos VALUES (191, 8.59, 4, '//img.sitemercado.com.br/produtos/6af67a87cc31212c32c552bb07fb1b2b429bedf28542d64ffce9b67eaded4212_mini.jpg', 'Massa para Pastel Ama Bene Embalagem 500G', true);
INSERT INTO public.tb_produtos VALUES (192, 19.98, 4, '//img.sitemercado.com.br/produtos/7dd9646fea0a295859ae63a07e388e8177cd424ca824ba47bda9227238a80276_mini.jpg', 'Nhoque Romanha Embalagem 1Kg', true);
INSERT INTO public.tb_produtos VALUES (193, 6.49, 4, '//img.sitemercado.com.br/produtos/b8e6e4c1a2e4b7293f9f0cdae7aa9377768017946bde694356212bcd4fc63a5d_mini.jpg', 'Massa para Pastel Trindade Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (194, 7.59, 4, '//img.sitemercado.com.br/produtos/db45ff74943c34b293ce578040bef7e27c6180f6234ae2ac147e2d25aaed9e21_mini.jpg', 'Massa para Pizza Ama Bene Embalagem 160G', true);
INSERT INTO public.tb_produtos VALUES (195, 10.39, 4, '//img.sitemercado.com.br/produtos/c206582330cfa37f7f43e1e1a65e71c22443665f606b7752cbd8a666a7860dae_mini.jpg', 'Massa Folhada Mezzani Embalagem 300G', true);
INSERT INTO public.tb_produtos VALUES (196, 4.99, 5, '//img.sitemercado.com.br/produtos/deeaf32725806135c7ff6ae00b6a6c9f6d46a0cc5c414b6bc9177d4a5f2cb8ba_mini.jpg', 'Biscoito Maizena Marilan 350G', true);
INSERT INTO public.tb_produtos VALUES (197, 3.29, 5, '//img.sitemercado.com.br/produtos/054650125e42a7f30743a1cd56945cde1ccc12fcb3294a99e492ee7cfe2dbc81_hero_mini.jpg', 'Biscoito Recheado de Chocolate Passatempo 130G', true);
INSERT INTO public.tb_produtos VALUES (198, 7.99, 5, '//img.sitemercado.com.br/produtos/55a8f10575f0c0e5278c6bd565b0c4cab7c8504f7601adcea8c8d4761cc44ccb_mini.jpg', 'Pão de Mel Milano Chocolate Ao Leite 300G', true);
INSERT INTO public.tb_produtos VALUES (199, 2.48, 5, '//img.sitemercado.com.br/produtos/d84d947ae65f2c9dd6e9ccef4a8312181417148b3b80ab74def03a5acd776b47_hero_mini.jpg', 'Biscoito de Chocolate Recheio Baunilha Negresco 90G', true);
INSERT INTO public.tb_produtos VALUES (200, 5.29, 5, '//img.sitemercado.com.br/produtos/8cab347f4921424ada0329208c1f4c0f142b95d0481bb8fc3edcd128c95c9bf6_mini.jpg', 'Biscoito Amanteigado de Chocolate Marilan 280G', true);
INSERT INTO public.tb_produtos VALUES (201, 7.19, 5, '//img.sitemercado.com.br/produtos/980c59869d620c1b015d675b4be4ef24b0455845b43ffd896ec1535a2660739e_mini.jpg', 'Biscoito Choco Biscuit Ao Leite Bauducco 80G', true);
INSERT INTO public.tb_produtos VALUES (202, 5.99, 5, '//img.sitemercado.com.br/produtos/15f814831ac31169ef6ec914b25a36ffbb717e45b7bf7a1667f83d47b5114adb_mini.jpg', 'Biscoito Salgado com Gergelim Isabela 350G', true);
INSERT INTO public.tb_produtos VALUES (203, 2.99, 5, '//img.sitemercado.com.br/produtos/338595d48b223b1a3d8082642afde83f7794882d52c598dd0103ad8d269c6d26_mini.jpg', 'Biscoito Recheado Isabela Tortinhas Due Cheese Cake com Geléia de Goiaba 140G', true);
INSERT INTO public.tb_produtos VALUES (204, 4.49, 5, '//img.sitemercado.com.br/produtos/9d23a089e338dbaf2b6a9ede75e0b025541baacb1d28cad96c0c57794a4e33d5_mini.jpg', 'Biscoito de Polvilho Ofir Rosquinha Embalagem 80G', true);
INSERT INTO public.tb_produtos VALUES (205, 4.99, 5, '//img.sitemercado.com.br/produtos/f7d5929b70811f626e27c66cacb9a4e8b072219bab9d8d2cefe60f561cff08d0_mini.jpg', 'Biscoito Cream Cracker Marilan 350G', true);
INSERT INTO public.tb_produtos VALUES (1102, 49.99, 3, NULL, 'Cupim Bovino kg', true);
INSERT INTO public.tb_produtos VALUES (207, 2.49, 5, '//img.sitemercado.com.br/produtos/3994a00b2e798af3f371b34d33abc9f9660588359f126daeaf7c3dd145a49dd8_mini.jpg', 'Biscoito de Polvilho sem Glúten Fritelli 40G', true);
INSERT INTO public.tb_produtos VALUES (208, 5.19, 5, '//img.sitemercado.com.br/produtos/2a7892042d7381bb3ad1d37f6c0e25df1e8eada8d0ac61e7652a6ececd5d0c1f_mini.jpg', 'Biscoito Cream Cracker Isabela 350G', true);
INSERT INTO public.tb_produtos VALUES (209, 8.19, 5, '//img.sitemercado.com.br/produtos/901a5f31eb981d72f8ff515a61463e3ba43a8ef0be757c0665e707483238f85b_mini.jpg', 'Biscoito de Polvilho Andriolli Tradicional Embalagem 100G', true);
INSERT INTO public.tb_produtos VALUES (210, 5.59, 5, '//img.sitemercado.com.br/produtos/be83feb58d15e1d3fbf3df9a814ce3b0bd808704157d0b94caf7b05d85c5ee0a_mini.jpg', 'Biscoito Andriolli Polvilho Argolinha Pacote 50G', true);
INSERT INTO public.tb_produtos VALUES (211, 5.19, 5, '//img.sitemercado.com.br/produtos/1ee2bc5ac71dd0650cbd5509586a25328341221963020220fab5390dd916567a_mini.jpg', 'Biscoito de Água e Sal Isabela 350G', true);
INSERT INTO public.tb_produtos VALUES (212, 11.59, 5, '//img.sitemercado.com.br/produtos/309c1ee2e5a068fa648217f466064a28ff9846b886873c7c851a65809f785721_mini.jpg', 'Kit Salgadinho Lanchinho Sortido Elma Chips 98G com 5Un', true);
INSERT INTO public.tb_produtos VALUES (213, 6.19, 5, '//img.sitemercado.com.br/produtos/577cee1538198d7c421ec1ebb06db4f85665eef530888924219b3e4a1b8ee841_hero_mini.jpg', 'Salgadinho Queijo Nacho Doritos 45g', true);
INSERT INTO public.tb_produtos VALUES (214, 6.79, 5, '//img.sitemercado.com.br/produtos/69c1b6b989b98da8c2aac858a6306c38811094a0ecfc2e95ec7ebf82f39444ae_mini.jpg', 'Salgadinho de Trigo Stiksy Elma Chips 120g', true);
INSERT INTO public.tb_produtos VALUES (912, 8.99, 14, 'http://fubi.ca/img/image_file_1706378973.webp', 'Amaciante Baby Soft 2L Roxo', true);
INSERT INTO public.tb_produtos VALUES (215, 14.99, 5, '//img.sitemercado.com.br/produtos/f9bf198eeb187e18e1625910beab312cabbc1d6c834b1ca7ccca3b028424b0b0_hero_mini.jpg', 'Salgadinho Queijo Nacho Doritos 210g', true);
INSERT INTO public.tb_produtos VALUES (216, 6.79, 5, '//img.sitemercado.com.br/produtos/643c17a03fdfc063ab6284ff2a89a42128e05080a7a65707db6d0e763a93fcbe_mini.jpg', 'Salgadinho de Trigo Bacon Elma Chips Pingo Douro 120g', true);
INSERT INTO public.tb_produtos VALUES (217, 3.49, 5, '//img.sitemercado.com.br/produtos/4bc38d5ff3fd7e55f7f328b86001be26d81ac8f64f7536d775b03741b2cb0fae_mini.jpg', 'Palitinho de Trigo Salgado Stiksy Elma Chips 48G', true);
INSERT INTO public.tb_produtos VALUES (218, 8.19, 5, '//img.sitemercado.com.br/produtos/612a0c1fd9fd91e8eae2e9f491367b491a43c8645f890ffad9457177797739ec_mini.jpg', 'Salgadinho Sabor Queijo Nacho Doritos 84 g', true);
INSERT INTO public.tb_produtos VALUES (219, 5.59, 5, '//img.sitemercado.com.br/produtos/1e9e02fba13577c03b8abd2f6e5b6f06bd8a21ef8365c13caac9c057cbb89d65_mini.jpg', 'Salgadinho de Milho Sabor Cebolitos Elma Chips 60g', true);
INSERT INTO public.tb_produtos VALUES (220, 17.99, 5, '//img.sitemercado.com.br/produtos/28ee9e9b9cdac3c044f6d901a7e09f4b6c8971ceeabcca7c08b9e73ebb8185f3_mini.jpg', 'Ovinhos de Amendoim Econômica Elma Chips 400g', true);
INSERT INTO public.tb_produtos VALUES (222, 3.99, 5, '//img.sitemercado.com.br/produtos/03dee182eef9a63f40cd54cee422eae30f08fea0093fc1ca165609a7e93cdb53_mini.jpg', 'Ovinhos de Amendoim Elma Chips 65g', true);
INSERT INTO public.tb_produtos VALUES (223, 13.09, 5, '//img.sitemercado.com.br/produtos/7473ee260000a5bbcf8e1bef9af0a46dc41f34290090b45e703c0d9f37227108_mini.jpg', 'Mix Castanhas Coquetel Uniagro 150G', true);
INSERT INTO public.tb_produtos VALUES (224, 3.75, 5, '//img.sitemercado.com.br/produtos/8c89718e796a8ed87840c36c1f5de6de6682978e6e71e8eb292023340ebfdcbc_mini.jpg', 'Amendoim Torrado Jandira Fino Embalagem 100G', true);
INSERT INTO public.tb_produtos VALUES (225, 5.89, 5, '//img.sitemercado.com.br/produtos/173950071dd384848390874e4021c741d1e94e8178422a56cdc854b10d361945_mini.jpg', 'Amendoim Japonês Dori 150G', true);
INSERT INTO public.tb_produtos VALUES (226, 4.49, 5, '//img.sitemercado.com.br/produtos/43476e128791f575183c2dcbfd30397d320cee9e3e46873f184da72251a98963_mini.jpg', 'Amendoim Crocante Natural Dori Pettiz Pacote 120G', true);
INSERT INTO public.tb_produtos VALUES (227, 12.99, 5, '//img.sitemercado.com.br/produtos/48679d0b40bfb864d18b3824a5ccb7d41519162bd3bb336ebc5de35f3a01f1d4_mini.jpg', 'Ovinhos de Amendoim Elma Chips 255g', true);
INSERT INTO public.tb_produtos VALUES (228, 1.49, 6, '//img.sitemercado.com.br/produtos/66196b84c530ed9ed93651df7bd90ce09385178a39c7b22755aa169d8c442161_mini.jpg', 'Água Mineral com Gás Cristal Pet 510Ml', true);
INSERT INTO public.tb_produtos VALUES (229, 1.75, 6, '//img.sitemercado.com.br/produtos/9e2e3e924f81f57d484ab89cb4c40b67a9b2742b5168db7f990d188304518bd1_mini.jpg', 'Água Mineral com Gás Font Life Garrafa 510Ml', true);
INSERT INTO public.tb_produtos VALUES (230, 13.29, 6, '//img.sitemercado.com.br/produtos/77690066a21e39a635b302ebd8053ff29333ed24357536c3a3c5a2005218bdaa_mini.jpg', 'Água Mineral Font Life com Casco Galão 10L', true);
INSERT INTO public.tb_produtos VALUES (231, 7.99, 6, '//img.sitemercado.com.br/produtos/d2833086b2509c951e6df4bfe3be157addcd8e9b090abaa61dcfe7f29d4622b2_mini.jpg', 'Água de Coco Autenticoco 400Ml', true);
INSERT INTO public.tb_produtos VALUES (232, 8.09, 6, '//img.sitemercado.com.br/produtos/2b97f83bb4f40bfeec8f0165d54dea67718f38ae95727890a5c369f207494300_mini.jpg', 'Água Mineral sem Gás Cristal 5L', true);
INSERT INTO public.tb_produtos VALUES (233, 1.59, 6, '//img.sitemercado.com.br/produtos/b529cc9da95dff10ff1f85a1c129e3d7d4f6bb66c032202186345608dacd6964_mini.jpg', 'Água Mineral sem Gás Font Life 510Ml', true);
INSERT INTO public.tb_produtos VALUES (234, 8.99, 6, '//img.sitemercado.com.br/produtos/3c15856a660f38cf1223d15017925ccc5b37d882c098fc1671d6dd15f6217377_mini.jpg', 'Água Mineral sem Gás Font Life 5L', true);
INSERT INTO public.tb_produtos VALUES (235, 3.89, 6, '//img.sitemercado.com.br/produtos/97bd3ec48db8b18538dc3a85a520da59bc1dc959243235f514aa46986bf610c3_mini.jpg', 'Água Mineral com Gás Crystal 1,5L', true);
INSERT INTO public.tb_produtos VALUES (236, 2.89, 6, '//img.sitemercado.com.br/produtos/ed5f937b80112fce23fe16754c50a7fba0f3e09f7237104f0147bdfc3721ed2f_hero_mini.jpg', 'Água Tônica Sem Açúcar Schweppes 350ml', true);
INSERT INTO public.tb_produtos VALUES (238, 1.59, 6, '//img.sitemercado.com.br/produtos/feb07d0a90895386313f98e817d89d39576694c152603118cbfcec541bf41832_hero_mini.jpg', 'Refrigerante de Guaraná Fanta 200Ml', true);
INSERT INTO public.tb_produtos VALUES (239, 15.49, 6, '//img.sitemercado.com.br/produtos/d99d9b24208978199609aeb9ce65c11c3328edb328c1efd4216e8d6520ddf1e1_mini.jpg', 'Kit 1 Coca-Cola Original + 1 Fanta Guaraná 2L', true);
INSERT INTO public.tb_produtos VALUES (240, 9.5, 6, '//img.sitemercado.com.br/produtos/aae38c094e220903d84771b4db41a3fc925b41a05fbcead6ae38a1d97f045e3a_mini.jpg', 'Coca-Cola Original 2 l', true);
INSERT INTO public.tb_produtos VALUES (241, 1.39, 6, '//img.sitemercado.com.br/produtos/8b411295167372823efe83318ab7f475ddce00b9c4889adcbbb2f5be1c455129_mini.jpg', 'Refrigerante Guaraná Antárctica Tradicional Pitchulinha 200Ml', true);
INSERT INTO public.tb_produtos VALUES (242, 2.89, 6, '//img.sitemercado.com.br/produtos/0f11445a074c9c777940858b52379200920e9f9f4b91a22c2b9ff18848cae30b_mini.jpg', 'Água Tônica com Açúcar Schweppes 350Ml', true);
INSERT INTO public.tb_produtos VALUES (243, 9.5, 6, '//img.sitemercado.com.br/produtos/203817336773c6289d664d35282b41453d0ab2309bde0e208ac5d488765b33cf_mini.jpg', 'Coca-Cola Zero 2l', true);
INSERT INTO public.tb_produtos VALUES (695, 19.99, 8, 'http://fubi.ca/img/image_file_1706296316.webp', 'Leite em Po Ilolay 400g', true);
INSERT INTO public.tb_produtos VALUES (244, 0.99, 6, '//img.sitemercado.com.br/produtos/f42be6dc0b5d40a1500c4a3bec11dfd03a363cac620de253f7f59eb05d3d6cd7_mini.jpg', 'Refresco em Pó Sabor Laranja Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (237, 5.99, 6, '//img.sitemercado.com.br/produtos/565f9131f67b84e591ec7bf2dd76b754f9341bdfbcc34d90ca7f5b76b1904142_mini.jpg', 'Refrigerante Maçã Verde Cini 2L', true);
INSERT INTO public.tb_produtos VALUES (251, 13.29, 6, '//img.sitemercado.com.br/produtos/f46e00db1a69cf9b62da4d3a9f27800243794b7fdc21a1e009cf44a6b249bcc1_mini.jpg', 'Suco Pronto Laranja Integral Prats 900Ml', true);
INSERT INTO public.tb_produtos VALUES (252, 4.65, 6, '//img.sitemercado.com.br/produtos/a35ea39debe964c54461b158461f6a6deea150c5f7a99db1328eadb6e4248a73_mini.jpg', 'Isotônico Sabor Blue Berry Gatorade 500ml', true);
INSERT INTO public.tb_produtos VALUES (254, 4.99, 6, '//img.sitemercado.com.br/produtos/ba16d0e138d42881f6f21c605ff623fe120e1dfbf1156d63726d313ae2cc11f7_mini.jpg', 'Isotônico de Maracujá Gatorade 500Ml', true);
INSERT INTO public.tb_produtos VALUES (255, 8.29, 6, '//img.sitemercado.com.br/produtos/a96c42ab14a3421c4bfa5dd9bca190221fb22dbe182be69554927eb260536564_mini.jpg', 'Energético Juice Pipeline Punch Monster 473Ml', true);
INSERT INTO public.tb_produtos VALUES (256, 8.29, 6, '//img.sitemercado.com.br/produtos/6442c590d5d35af15f6c5564cd238494ec366620ec44bd196c46aefc092a9552_mini.jpg', 'Monster Energy Tradicional 473Ml', true);
INSERT INTO public.tb_produtos VALUES (257, 32.02, 6, '//img.sitemercado.com.br/produtos/d00e666aa60ae9d66464d6e92df72d009ff96e1bde3a6926821022a4ec0c01e1_mini.jpg', 'Energético Red Bull Energy Drink 250Ml', true);
INSERT INTO public.tb_produtos VALUES (258, 8.29, 6, '//img.sitemercado.com.br/produtos/c356ddac1853bb547cf558b4265b9a14ea0f1a0b0501f40a749cace8fa5bc846_mini.jpg', 'Energético Ultra Sabor Watermelon Monster 473Ml', true);
INSERT INTO public.tb_produtos VALUES (259, 8.29, 6, '//img.sitemercado.com.br/produtos/403366d1fdbacc4cb6db902f63a23488d69d87fca9fe66cb54dfbe30d3b41648_mini.jpg', 'Energético Khaotic Monster 473Ml', true);
INSERT INTO public.tb_produtos VALUES (260, 6.79, 6, '//img.sitemercado.com.br/produtos/929e89fb07d50fa1022669cc334b8a00ee13c33d30c6e6ec792ce0d561d3d2ed_hero_mini.jpg', 'Chá Sabor Pêssego Ice Tea Leão 1,5l', true);
INSERT INTO public.tb_produtos VALUES (261, 6.89, 6, '//img.sitemercado.com.br/produtos/52e8bef497ab8bf573328c7909f6e05f6e782d690fdda31cc8076753da826b54_mini.jpg', 'Chá Branco Sabor Lichia Leão 1,5L', true);
INSERT INTO public.tb_produtos VALUES (262, 6.89, 6, '//img.sitemercado.com.br/produtos/2c41caa193f49e4035f78caf5d1a3655490e961e468b9f6fdc9ebcc0480503e4_mini.jpg', 'Chá Mate Limão Matte Leão 1,5l', true);
INSERT INTO public.tb_produtos VALUES (263, 5.69, 6, '//img.sitemercado.com.br/produtos/0c3bc37459f9839d1ec087e84c9703fcc8a22af56eb968150c89ae00906e60bb_mini.jpg', 'Chá Branco Sabor Lichia Natural Tea 1L', true);
INSERT INTO public.tb_produtos VALUES (264, 7.39, 6, '//img.sitemercado.com.br/produtos/eb85cf20eef26d90d943b235c8dedab2078e09117d51becb6779a8f8442cff00_hero_mini.jpg', 'Chá Verde Limão Antioxidante Leão 1,5L', true);
INSERT INTO public.tb_produtos VALUES (265, 6.79, 6, '//img.sitemercado.com.br/produtos/d2c2e683337dca59f652d0da0faa3f872b0cb18e4d9166078bda37b757c74377_hero_mini.jpg', 'Chá Ice Tea Leão Limão Zero 1,5L', true);
INSERT INTO public.tb_produtos VALUES (266, 4.49, 6, '//img.sitemercado.com.br/produtos/e972a243817478e4a6683885d17e737bb337fbac3766a9bc1193a9c8bd1c77fb_hero_mini.jpg', 'Chá Ice Tea Leão Pêssego 450Ml', true);
INSERT INTO public.tb_produtos VALUES (267, 5.78, 6, '//img.sitemercado.com.br/produtos/9bd240f4e1b289ded4be7511cce9f1214c8df41250d02c261a69054f023512d6_mini.jpg', 'Chá de Hibisco com Romã e Gojiberry Natural Tea 1L', true);
INSERT INTO public.tb_produtos VALUES (268, 8.55, 6, '//img.sitemercado.com.br/produtos/5f83b8f9eb5d1d28f23c31aa1b2441f5aa5efcd3232678afa38302287c2c724e_mini.jpg', 'Ades Original 1L', true);
INSERT INTO public.tb_produtos VALUES (269, 7.99, 6, '//img.sitemercado.com.br/produtos/ee023985cadd28920dc11fc97d6c484e8d0fe7c914c53c481bcf0f4f1d6fde1e_mini.jpg', 'Bebida de Soja Fruta Sabor Maçã Ades 1l', true);
INSERT INTO public.tb_produtos VALUES (270, 6.59, 6, '//img.sitemercado.com.br/produtos/bd3cc8beabbe667b1b33e6d44c4d0106e19946f798305aa3d871ea1f274bf8c8_mini.jpg', 'Bebida de Soja Purity Original Caixa 1L', true);
INSERT INTO public.tb_produtos VALUES (271, 7.99, 6, '//img.sitemercado.com.br/produtos/ae4ec9972c50e883abfa23b5b3535a7278efcc7331583a85837fa9098e6785cd_mini.jpg', 'Bebida À Base de Soja Sabor Pêssego Ades 1L', true);
INSERT INTO public.tb_produtos VALUES (272, 5.99, 6, '//img.sitemercado.com.br/produtos/987c9e6b2be806ebc387f6fe96cbb87a2c8656f9a52a519d0bb2e516a6b03823_hero_mini.jpg', 'Creme de Amêndoa Almond Breeze 200G', true);
INSERT INTO public.tb_produtos VALUES (273, 7.99, 6, '//img.sitemercado.com.br/produtos/559558570dfd2b04101e96aa2b53f3287a93add52fffbc62899c5ca86619453f_mini.jpg', 'Bebida À Base de Soja Uva Ades 1l', true);
INSERT INTO public.tb_produtos VALUES (274, 16.79, 6, '//img.sitemercado.com.br/produtos/a94229f2884087b02133c2f470b0acd404c7ac0b2ac24dbea3ba775749a3e39e_mini.jpg', 'Bebida Vegetal de Coco Ades 1L', true);
INSERT INTO public.tb_produtos VALUES (275, 7.99, 6, '//img.sitemercado.com.br/produtos/34774923546b8accf4411ad6ad15fab50c290b66a9b6fe51dc30aa3922a54ae2_hero_mini.jpg', 'Bebida À Base de Soja Sabor Abacaxi Ades 1L', true);
INSERT INTO public.tb_produtos VALUES (276, 1.95, 7, '//img.sitemercado.com.br/produtos/f1e8542b416ca8c13343d0f01a6a8fec992804a993ca973ba53dfd1e9f9ecdff_mini.jpg', 'Orégano Strafit 10G', true);
INSERT INTO public.tb_produtos VALUES (277, 3.39, 7, '//img.sitemercado.com.br/produtos/bf660c2e671d4dd60636f3574fffc39a4d4a7113fb5238c5b13d59462dad3386_mini.jpg', 'Páprica Picante Strafit 30G', true);
INSERT INTO public.tb_produtos VALUES (278, 1.99, 7, '//img.sitemercado.com.br/produtos/3a410c3a9a7151ef548531cf941e8f3e51ca9585793a65b2904a54c019f8d8d9_mini.jpg', 'Alecrim Strafit Embalagem 5G', true);
INSERT INTO public.tb_produtos VALUES (279, 2.69, 7, '//img.sitemercado.com.br/produtos/c12d5a3503ca641cc2425d9ced5cad2c63e78453b5bfaa9c8494952bcf15c5f5_mini.jpg', 'Bicarbonato de Sódio Strafit 50G', true);
INSERT INTO public.tb_produtos VALUES (280, 3.39, 7, '//img.sitemercado.com.br/produtos/1af2429c18edc7cdb9df48022f3f24eb72f8dc4b132f95febc6652c0e26c1a64_mini.jpg', 'Páprica Doce Strafit 30G', true);
INSERT INTO public.tb_produtos VALUES (281, 3.99, 7, '//img.sitemercado.com.br/produtos/79ce132af9c309f117cdb8274d9f5e8a2482ac6c0aa005e8150193ebefeaf7e9_mini.jpg', 'Especiarias Sweet Sabor Açafrão da Terra Embalagem 30G', true);
INSERT INTO public.tb_produtos VALUES (282, 5.69, 7, '//img.sitemercado.com.br/produtos/b19d8285bcd2bfa739bf827c65fce6153f0e268c32c3cf62d070cbe79f501320_hero_mini.jpg', 'Caldo de Galinha Knorr 114G', true);
INSERT INTO public.tb_produtos VALUES (283, 4.39, 7, '//img.sitemercado.com.br/produtos/18de96303d1bc0855e994c5e05ee83e33749f12d8b481979d814e61468b88ddf_mini.jpg', 'Especiarias Sweet Sabor Lemon Pepper Embalagem 30G', true);
INSERT INTO public.tb_produtos VALUES (284, 3.59, 7, '//img.sitemercado.com.br/produtos/587df8dabaf0656a800f064ccd86a7ea25cbb22fa77c9e5c55c8c2fd1f500c8e_mini.jpg', 'Molho Tomate Pomarola Sch 300G Trad', true);
INSERT INTO public.tb_produtos VALUES (285, 2.29, 7, '//img.sitemercado.com.br/produtos/6f144f92d50892a0c9d119fb10ed3096899b4bbc3c3fd1367722dc83a92461fb_mini.jpg', 'Molho de Tomate Tradicional Salsaretti 300G', true);
INSERT INTO public.tb_produtos VALUES (247, 0.99, 6, '//img.sitemercado.com.br/produtos/3b6b295ad8fd8c68bb2df01f7958a75789a376959f8edbf520b67b754d7a6e04_mini.jpg', 'Refresco em Pó Sabor Morango Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (248, 0.99, 6, '//img.sitemercado.com.br/produtos/6399ec3d3e38141fa38069a619dd377b4ec9c347d09e9d50c1fb5277a60e26d1_mini.jpg', 'Refresco em Pó Sabor Laranja Bahia Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (249, 0.99, 6, '//img.sitemercado.com.br/produtos/d96f30f27f739d784c9bedc0371b3aa1b1ea749928a121a37f099a6f5ef091a1_mini.jpg', 'Suco em Pó Sabor Abacaxi Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (1097, 44.99, 3, NULL, 'Bananinha Bovina kg', true);
INSERT INTO public.tb_produtos VALUES (250, 0.99, 6, '//img.sitemercado.com.br/produtos/ce24b8e6428e1f1ffa9fbd515239eed5a87e3b07b71d77a91f65907086e777de_mini.jpg', 'Refresco em Pó Sabor Guaraná Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (287, 3.49, 7, '//img.sitemercado.com.br/produtos/d8c2d1e3070a2e2dce61a3e092ea99243830d06437436b993d3276a12978c446_hero_mini.jpg', 'Molho de Tomate com Pedaços Tradicional Heinz 300G', true);
INSERT INTO public.tb_produtos VALUES (288, 4.19, 7, '//img.sitemercado.com.br/produtos/321f1a32eb5994089ae98487c23544f78f0f0bbde3f58def4bb6a444c2539540_hero_mini.jpg', 'Extrato de Tomate Quero 320G', true);
INSERT INTO public.tb_produtos VALUES (289, 3.69, 7, '//img.sitemercado.com.br/produtos/dd57445fbb8c700e63c4be720ef9d9217001896c1b1a25dfba5a9b13d30f9195_mini.jpg', 'Extrato de Tomate Elefante 135G', true);
INSERT INTO public.tb_produtos VALUES (290, 19.58, 7, '//img.sitemercado.com.br/produtos/7132037711505612b70a7f26b9eb8269646f1a23a32609930596592cb78a245c_mini.jpg', 'Polpa de Tomate Tradicional Paganini 690G', true);
INSERT INTO public.tb_produtos VALUES (291, 5.28, 7, '//img.sitemercado.com.br/produtos/65b0e3034f3fdc4decc1342d282b024c2278110304e6b3b3167b53eab1b9fb67_mini.jpg', 'Extrato Tomate Tradicional Pote Predilecta 300G', true);
INSERT INTO public.tb_produtos VALUES (292, 3.09, 7, '//img.sitemercado.com.br/produtos/93bcd9a87d126b9565d47852aed7e80339915e34f730ef636b5be665f7b34446_mini.jpg', 'Milho Verde Bonare 170G', true);
INSERT INTO public.tb_produtos VALUES (293, 12.9, 7, '//img.sitemercado.com.br/produtos/c0581396213e736e999041e2b9aae16d59e2e2dedcaee55295f3d64d355c7976_mini.jpg', 'Palmito Pupunha do Chef Picado Recheio Embalagem 300G', true);
INSERT INTO public.tb_produtos VALUES (294, 22.99, 7, '//img.sitemercado.com.br/produtos/734e58bb323e6aed9cca6ec2bfb82179fc6981dc4c83e2d7fbf3bcb42ee0db0b_mini.jpg', 'Palmito Palmeira do Vale Rodela Embalagem 300G', true);
INSERT INTO public.tb_produtos VALUES (295, 3.69, 7, '//img.sitemercado.com.br/produtos/379eac89783f72352d26b34ffdc64e470c9fae93eaf191e54720c9a16dcec1b7_mini.jpg', 'Milho Verde Bonare Lata 170G', true);
INSERT INTO public.tb_produtos VALUES (296, 5.99, 7, '//img.sitemercado.com.br/produtos/1ccb0d6f6419a639cfbb3f20cc446e94d2db9adc3f967fc5389cdf8acd200ced_mini.jpg', 'Azeitona Verde Fatiada Rivoli 150G', true);
INSERT INTO public.tb_produtos VALUES (297, 14.99, 7, '//img.sitemercado.com.br/produtos/3c48603c2bb4bae114360802c992cc5b60af63156ef6b9c453610ef1b84c0042_mini.jpg', 'Palmito do Chef Aperitivo Embalagem 270G', true);
INSERT INTO public.tb_produtos VALUES (757, 23.99, 16, 'http://fubi.ca/img/image_file_1706306085.webp', 'Ração Special Dog Junior Carne 1kg', true);
INSERT INTO public.tb_produtos VALUES (298, 3.89, 7, '//img.sitemercado.com.br/produtos/a0767c206bf1eeaa2279ec77b46017479edfe310592d53d8a81d45ff0f07ba57_mini.jpg', 'Milho Verde Predilecta 170G', true);
INSERT INTO public.tb_produtos VALUES (299, 13.69, 7, '//img.sitemercado.com.br/produtos/c7f602e1eada12fae0e1547470187428854883a8276f96ddf1d53f442bd35053_mini.jpg', 'Pepino em Conserva Tauá Embalagem 300G', true);
INSERT INTO public.tb_produtos VALUES (300, 12.98, 7, '//img.sitemercado.com.br/produtos/7c5db720e8d93972899643813d148be1ab98c98ac8e900b19f54cd7ccef91b68_hero_mini.jpg', 'Ketchup Tradicional Heinz 397g', true);
INSERT INTO public.tb_produtos VALUES (301, 7.69, 7, '//img.sitemercado.com.br/produtos/d651bd15ab7ebd45f4b964055512735c65e4d2a644dbcda375945eba5aec754c_mini.jpg', 'Ketchup Tradicional Hemmer 320 g', true);
INSERT INTO public.tb_produtos VALUES (302, 18.59, 7, '//img.sitemercado.com.br/produtos/ec9c7821fb3a5e197a158e975eb60f0d1103eff61766511f2fde97bdb1f05317_mini.jpg', 'Ketchup Heinz 567 g', true);
INSERT INTO public.tb_produtos VALUES (303, 11.49, 7, '//img.sitemercado.com.br/produtos/325479708c9a2d237ebd780b98691633c7ddcbf18f8b4144ac7c8d5b5104c49d_mini.jpg', 'Ketchup Tradicional Hemmer 750g', true);
INSERT INTO public.tb_produtos VALUES (304, 14.49, 7, '//img.sitemercado.com.br/produtos/4fd1d2208130b50c46f16103ccde707cb8aa03a9d04f2da168a6780135dc0747_mini.jpg', 'Catchup Tradicional Hemmer 1kg', true);
INSERT INTO public.tb_produtos VALUES (305, 9.69, 7, '//img.sitemercado.com.br/produtos/c8a56d031ae9f726784d50e689106c69cdac54a8fd5ddabd0447902ed764ac1f_mini.jpg', 'Mostarda Amarela Hemmer 200 g', true);
INSERT INTO public.tb_produtos VALUES (306, 8.59, 7, '//img.sitemercado.com.br/produtos/ee3e9fae7c1a028282c214d84435630642030e7d5948d1160cd0c408199858cb_hero_mini.jpg', 'Mostarda Yellow Mustard Hellmanns 170g', true);
INSERT INTO public.tb_produtos VALUES (307, 12.49, 7, '//img.sitemercado.com.br/produtos/3f8a57515d0ba99dd80a04bfc0fd4dce113dcab53f8483185a97f53e32c30166_hero_mini.jpg', 'Ketchup Tradicional Hellmanns 380g', true);
INSERT INTO public.tb_produtos VALUES (308, 5.39, 7, '//img.sitemercado.com.br/produtos/68d01806f9455c450b98d10188449802c244f17b56273c99937a63ed6dd70d69_mini.jpg', 'Sardinha com Óleo Coqueiro 83G', true);
INSERT INTO public.tb_produtos VALUES (309, 5.59, 7, '//img.sitemercado.com.br/produtos/960b061a5be6fd9e495e342a5c585b957af32220b9705e6da9c7d9b1369a651f_hero_mini.jpg', 'Sardinha com Óleo Gomes da Costa 125G', true);
INSERT INTO public.tb_produtos VALUES (310, 6.99, 7, '//img.sitemercado.com.br/produtos/cac0bc958f333d84aec27261ad0251fd71b67c12c8c5ff0ec502e4dff6b80a08_hero_mini.jpg', 'Atum Ralado em Óleo Gomes da Costa 170g', true);
INSERT INTO public.tb_produtos VALUES (311, 4.79, 7, '//img.sitemercado.com.br/produtos/b6eabbcf612762c17758e3f6091f36e8686e3e5bd3a83044668aff16d6fa176a_mini.jpg', 'Seleta de Legumes Bonare Lata 170G', true);
INSERT INTO public.tb_produtos VALUES (312, 5.39, 7, '//img.sitemercado.com.br/produtos/e4bb84350ef81da30431ceb0e581a014d633beb24354cbbeba8ff7f31556ffb5_mini.jpg', 'Sardinha Coqueiro 125G Molho Tomate', true);
INSERT INTO public.tb_produtos VALUES (313, 8.69, 7, '//img.sitemercado.com.br/produtos/3cd0022b74f40f3bc748816029b2e5626a0c0fcf36f9b44df4e0a73130b9592d_mini.jpg', 'Atum Ralado Óleo Coqueiro 170g', true);
INSERT INTO public.tb_produtos VALUES (314, 11.39, 7, '//img.sitemercado.com.br/produtos/1fa4ac48ca6145785144dbf86118ef39753719b15800aaf59c4bd08c09d8fad0_mini.jpg', 'Atum Sólido em Óleo Coqueiro Lata 120g', true);
INSERT INTO public.tb_produtos VALUES (315, 11.39, 7, '//img.sitemercado.com.br/produtos/8ff949f9d7d79ce41bd32df6f09d91e9c38f843e5e719485050d8881457cacc4_mini.jpg', 'Atum em Pedaços em Óleo Coqueiro 170g', true);
INSERT INTO public.tb_produtos VALUES (316, 6.39, 7, '//img.sitemercado.com.br/produtos/361eb55520a14a42f2beca7d8fcb3a9b74b57f4708937c82a3f84afd37bd98c8_hero_mini.jpg', 'Creme de Cebola Maggi 68G', true);
INSERT INTO public.tb_produtos VALUES (317, 7.99, 7, '//img.sitemercado.com.br/produtos/8f63074580b17188b5cfb0aa3b05ccf785f46785c0bc4afb6aa413dffd37cd80_hero_mini.jpg', 'Sopão de Galinha Maggi 200G', true);
INSERT INTO public.tb_produtos VALUES (318, 6.39, 7, '//img.sitemercado.com.br/produtos/b8d3ea418555f675b570e884489b4acab1ec541245689226740cedc3c15eb7d3_hero_mini.jpg', 'Creme de Cebola Menos Sódio Maggi 61G', true);
INSERT INTO public.tb_produtos VALUES (319, 4.59, 7, '//img.sitemercado.com.br/produtos/2d7e444219ef90e32398ef5107802c6e35477727b470a568fa6edc7cd916fe02_mini.jpg', 'Sopa Mandioquinha com Cebola e Salsa Vono 17G', true);
INSERT INTO public.tb_produtos VALUES (320, 7.99, 7, '//img.sitemercado.com.br/produtos/34d84ea404e1797d84434af5f04c4269d607c5bfeb872988448687f6f56968e2_hero_mini.jpg', 'Sopão Galinha Caipira Maggi 200G', true);
INSERT INTO public.tb_produtos VALUES (321, 7.99, 7, '//img.sitemercado.com.br/produtos/71c77e2c6501c69dbfb9a370f6e033fb98a3df0707667158b7e5550e4393f8a5_mini.jpg', 'Sopão de Canja Galinha Maggi 200G', true);
INSERT INTO public.tb_produtos VALUES (322, 2.99, 7, '//img.sitemercado.com.br/produtos/8655a8819fcaec5e34b6c54bae2ff21aed78df7ff4840d88c8852c2d8a1050f2_hero_mini.jpg', 'Sopa Vono Aipim com Costela 18G', true);
INSERT INTO public.tb_produtos VALUES (323, 5.39, 7, '//img.sitemercado.com.br/produtos/699716c677a0640fe7610d02cfdf2d6a74718f4b7cd6aa6c34e4bf899e6aafe4_hero_mini.jpg', 'Sopa de Cebola Maggi 68G', true);
INSERT INTO public.tb_produtos VALUES (325, 3.89, 8, '//img.sitemercado.com.br/produtos/2b450cc2b63878eeff20a9eecac9c4225c288966a59a19782baca18d90857d36_mini.jpg', 'Leite Uht Integral Santa Clara 1L', true);
INSERT INTO public.tb_produtos VALUES (696, 9.99, 8, 'http://fubi.ca/img/image_file_1706296470.webp', 'Leite em Po Morango Italac 400g', true);
INSERT INTO public.tb_produtos VALUES (326, 3.99, 8, '//img.sitemercado.com.br/produtos/d5f4198ee63ec551d26e8dbdc49145f97006529bf7f372d370d7a88a1cbb564c_mini.jpg', 'Leite Uht Integral Batavo 1l', true);
INSERT INTO public.tb_produtos VALUES (327, 3.95, 8, '//img.sitemercado.com.br/produtos/53edee9bc7b92f98bc525fa9ffe05cf8d4f0e93fbeda662e53c7aa0902764a40_mini.jpg', 'Leite Uht Parmalat Integral 1l', true);
INSERT INTO public.tb_produtos VALUES (328, 4.19, 8, '//img.sitemercado.com.br/produtos/d3855075124a54dedb0d4d3fd74cc4250cd9770f5234cba32bfb792bb0321f52_mini.jpg', 'Leite Uht Integral Frimesa 1L', true);
INSERT INTO public.tb_produtos VALUES (329, 4.59, 8, '//img.sitemercado.com.br/produtos/192873c695e346b037f53def60eb3060f88256c74c55befca69794f17fdf76a5_mini.jpg', 'Leite Uht Integral Longa Vida Naturalle 1L', true);
INSERT INTO public.tb_produtos VALUES (330, 5.29, 8, '//img.sitemercado.com.br/produtos/5bd80d4be532a0666d515bf0d035047fd76371c6d44566e2fdc9072ac48266be_mini.jpg', 'Leite Pasteurizado Integral Cancela 1L Un', true);
INSERT INTO public.tb_produtos VALUES (331, 3.95, 8, '//img.sitemercado.com.br/produtos/70ccb76a1c9f60830b2fe6986cd6f50f29327cf66fe67f595f074512445b3601_mini.jpg', 'Leite Uht Semidesnatado Parmalat 1L', true);
INSERT INTO public.tb_produtos VALUES (332, 6.69, 8, '//img.sitemercado.com.br/produtos/4ab001a07737417eae4c2428281f865ff361d400bff56f909fbd34735f524b45_hero_mini.jpg', 'Leite Fermentado Nestlé Chamyto 450G 6un', true);
INSERT INTO public.tb_produtos VALUES (333, 13.99, 8, '//img.sitemercado.com.br/produtos/c3ce48e1ca69e223e6384750e5f9033dec424b51497cc79094383e6e61fa4779_mini.jpg', 'Iogurte Líquido Parcialmente Desnatado Sabor Morango Danone 1,25L', true);
INSERT INTO public.tb_produtos VALUES (334, 3.19, 8, '//img.sitemercado.com.br/produtos/3d87cc9984c67bb1e046342c1f4587ec8ffbbf02aa6e9f67001e837448b85b2f_hero_mini.jpg', 'Iogurte Nestlé Natural Integral 170g', true);
INSERT INTO public.tb_produtos VALUES (335, 5.29, 8, '//img.sitemercado.com.br/produtos/4b16a993fae8febb972bb26723b26667c519ad216ca4badbcc38333778d73265_mini.jpg', 'Bebida Láctea Batavo Morango Bandeja 540G', true);
INSERT INTO public.tb_produtos VALUES (336, 14.69, 8, '//img.sitemercado.com.br/produtos/51beaf888ee6a311527940211f051fbf4b579b17672b768c3efcc5a942283b30_hero_mini.jpg', 'Sobremesa Láctea Chocolate Ao Leite Danette 540G', true);
INSERT INTO public.tb_produtos VALUES (337, 5.49, 8, '//img.sitemercado.com.br/produtos/ba430e82252baefdd25761069bff4f82a0621cc7b505d896f00431f0b43340f1_mini.jpg', 'Iogurte Frimesa Morango Bandeja 540G', true);
INSERT INTO public.tb_produtos VALUES (913, 8.99, 14, 'http://fubi.ca/img/image_file_1706379008.webp', 'Amaciante Baby Soft 2L Vermelho', true);
INSERT INTO public.tb_produtos VALUES (338, 7.99, 8, '//img.sitemercado.com.br/produtos/1edc6482d098893137c565b91ca246c8bf5fe4b05d6e9c1a22062e24abac9a4c_mini.jpg', 'Iogurte de Morango Pense Zero Batavo 540G', true);
INSERT INTO public.tb_produtos VALUES (339, 2.59, 8, '//img.sitemercado.com.br/produtos/5d8fcd22cac382308fae791de0f37d5d6532226b4b4e66b9f3d5e5a61267a0ac_mini.jpg', 'Iogurte Natural Batavo Integral 170G', true);
INSERT INTO public.tb_produtos VALUES (340, 4.59, 8, '//img.sitemercado.com.br/produtos/8bce831696709067ac7115d25d4ed2afef72b6cba6867bbe9593bb10e81855e6_mini.jpg', 'Leite Uht Zero Lactose Santa Clara 1L', true);
INSERT INTO public.tb_produtos VALUES (341, 4.99, 8, '//img.sitemercado.com.br/produtos/e9f21e0e133098489fc7d9d15247b973b9339365edf51a38a55ca4656aa4e748_mini.jpg', 'Leite Longa Vida Piracanjuba Zero Lactose 1Litro', true);
INSERT INTO public.tb_produtos VALUES (342, 4.39, 8, '//img.sitemercado.com.br/produtos/8d28bb4f6033cc9d25b159c65b3250d159a323bf42292b651862a341a480e400_mini.jpg', 'Leite Zymil Zero Lactose Desnatado Uht Parmalat 1L', true);
INSERT INTO public.tb_produtos VALUES (343, 4.39, 8, '//img.sitemercado.com.br/produtos/7ab4245ba78ec6e26b95c1f865d75d30ba4e0e6356abf67b67d220adb21be660_mini.jpg', 'Leite Zymil Zero Lactose Semi Desnatado Uht Parmalat 1L', true);
INSERT INTO public.tb_produtos VALUES (344, 16.59, 8, '//img.sitemercado.com.br/produtos/380c1a753d85e04e4ce02024e1b61de32cf6cd3982c9ccc9c1a450f20127a150_mini.jpg', 'Leite em Pó Instantâneo Zero Lactose Max Pacote Parmalat 300G', true);
INSERT INTO public.tb_produtos VALUES (345, 6.19, 8, '//img.sitemercado.com.br/produtos/5c6b54163befb7c2da023863f51bafbeb475aa826eddeca6aae1adad3c420c54_hero_mini.jpg', 'Leite Uht Levinho Semidesnatado Zero Lactose Ninho 1L', true);
INSERT INTO public.tb_produtos VALUES (346, 13.69, 8, '//img.sitemercado.com.br/produtos/2fdbf18cccf2c24ceb8a08a788a1d400ec711bb28834c504aaa4dafe8bf91105_mini.jpg', 'Leite em Pó Glória Integral Pacote 400G', true);
INSERT INTO public.tb_produtos VALUES (347, 17.78, 8, '//img.sitemercado.com.br/produtos/0aba0fa65e8ac07202a8331b6bdbefe497459395337415aa56e498db72347585_hero_mini.jpg', 'Composto Lácteo em Pó Forti+ Instantâneo Nestlé Ninho 380G', true);
INSERT INTO public.tb_produtos VALUES (348, 66.9, 8, '//img.sitemercado.com.br/produtos/474deb6ae75f70bb1ed8064c7e32cfeacacc1e5db5e10b7147d33a2d9e026faa_hero_mini.jpg', 'Fórmula Infantil Premium 1 Aptamil 800G', true);
INSERT INTO public.tb_produtos VALUES (349, 35.69, 8, '//img.sitemercado.com.br/produtos/90ca3ed3b3d332b3555b26dff27a953d12b97eb7afe8bd26384ee874c23eb3bd_hero_mini.jpg', 'Composto Lácteo Instantâneo Forti+ Ninho 750G', true);
INSERT INTO public.tb_produtos VALUES (350, 11.99, 8, '//img.sitemercado.com.br/produtos/9427b57f9da5627a85894bd34390d8a3f54c338e36bcccfcfe2bc7d71cfa22de_mini.jpg', 'Leite em Pó Integral Finissimo 350G', true);
INSERT INTO public.tb_produtos VALUES (351, 12.69, 8, '//img.sitemercado.com.br/produtos/23f2c35c6a0c8aa0b57a3bbffc109b5b7a40267efb6e7b13c1e570e45f783df6_mini.jpg', 'Leite em Pó Tirol Integral Instantâneo 400G', true);
INSERT INTO public.tb_produtos VALUES (352, 57.9, 8, '//img.sitemercado.com.br/produtos/e2739257cb65491a75b099ef3457833a10b3d8bbf5fed94b2873632157029124_hero_mini.jpg', 'Composto Lácteo Premium Milnutri 800G', true);
INSERT INTO public.tb_produtos VALUES (353, 51.9, 8, '//img.sitemercado.com.br/produtos/aaaace946af3ed9b2155ec8198dfcd93cf6ef0d5c5f77b0b35c5c5274ec9b212_hero_mini.jpg', 'Fórmula Infantil Fases 1+ Ninho Nestlé 800G', true);
INSERT INTO public.tb_produtos VALUES (354, 4.39, 9, '//img.sitemercado.com.br/produtos/5056836bacd8e52d9f42d3ae5cbf06f51cd0893fc1d88d56608d631b63c144f8_mini.jpg', 'Leite Condensado Italac Semidesnatado 395g', true);
INSERT INTO public.tb_produtos VALUES (355, 4.79, 9, '//img.sitemercado.com.br/produtos/7875639ffc649098700a862e7a3f18e3ec5080774772812536676c6b8dce8964_mini.jpg', 'Leite Condensado Frimesa Caixa 395G', true);
INSERT INTO public.tb_produtos VALUES (357, 4.89, 9, '//img.sitemercado.com.br/produtos/400efbbb942dc6dedf4f613897bd596b8652ad360fb3a3645acc1b07ef9be4d3_mini.jpg', 'Leite Condensado Colônia Holandesa Embalagem 395G', true);
INSERT INTO public.tb_produtos VALUES (359, 2.75, 9, '//img.sitemercado.com.br/produtos/58bd2fcc786a4da6d1670ad04af910e96be62ec1d12362678460aa9603e54614_mini.jpg', 'Creme de Leite Lider 200g', true);
INSERT INTO public.tb_produtos VALUES (361, 9.96, 9, '//img.sitemercado.com.br/produtos/2ef3072996fdcaed609f033d171948b993e8767772483113d17871d9c5312007_hero_mini.jpg', 'Leite Condensado Moça 395 g', true);
INSERT INTO public.tb_produtos VALUES (362, 42.19, 9, '//img.sitemercado.com.br/produtos/7b129b6eb41bcedf06b9774dbdd6359ed339b2c39d0025a562be42891103b0a1_mini.jpg', 'Pavê Tradicional Familia Pavê 400G', true);
INSERT INTO public.tb_produtos VALUES (363, 14.25, 9, '//img.sitemercado.com.br/produtos/fbce7d5ca39f860d93f1178472589068b864ca4002f4d2c27b19c1d7800b169d_hero_mini.jpg', 'Bombom Especialidades Nestlé 251G', true);
INSERT INTO public.tb_produtos VALUES (364, 9.89, 9, '//img.sitemercado.com.br/produtos/5871facec8b794929de575100250c6108aaee420a3fe5529a0295f5f63c89037_hero_mini.jpg', 'Bombom Sortido Garoto 250G', true);
INSERT INTO public.tb_produtos VALUES (697, 21.89, 8, 'http://fubi.ca/img/image_file_1706296577.webp', 'Leite em Po Ninho Forti+ 280g', true);
INSERT INTO public.tb_produtos VALUES (360, 4.49, 9, '//img.sitemercado.com.br/produtos/c6764c6c92fb675d17ac187a05b07f753398de2056ef15727789c4eceb25bc9f_mini.jpg', 'Creme Leite Italac 200g', true);
INSERT INTO public.tb_produtos VALUES (365, 3.49, 9, '//img.sitemercado.com.br/produtos/ee8a745e954b3d2a8c4c7b19603485546a2fbc4f98c9b46072259930adb9f2ab_hero_mini.jpg', 'Chocolate 4 Fingers Ao Leite Kit Kat 41,5g', true);
INSERT INTO public.tb_produtos VALUES (366, 6.39, 9, '//img.sitemercado.com.br/produtos/7694e79d82ac2cbfd2034f09217e4bf32020f01703813222e578026acff94630_hero_mini.jpg', 'Chocolate Suflair Ao Leite Nestlé 80G', true);
INSERT INTO public.tb_produtos VALUES (367, 6.19, 9, '//img.sitemercado.com.br/produtos/4f3f8b42128f6d6e663093131d42c0a92004aa5dbfe61102353827a342fb4f3e_mini.jpg', 'Chocolate Ao Leite Alpino 85G', true);
INSERT INTO public.tb_produtos VALUES (368, 4.79, 9, '//img.sitemercado.com.br/produtos/bfb447c8c65e403b87e8e61fec2b2a553e47847d44f9a4f5d73149539f6bc5c8_mini.jpg', 'Chocolate Meio Amargo 40% Cacau Hersheys 82G', true);
INSERT INTO public.tb_produtos VALUES (369, 6.39, 9, '//img.sitemercado.com.br/produtos/86269b96bbc6a997e95e70529093c19d2892532ef5c899a019b96f9c30ba10be_hero_mini.jpg', 'Chocolate em Barra Duo Suflair 80G', true);
INSERT INTO public.tb_produtos VALUES (370, 7.19, 9, '//img.sitemercado.com.br/produtos/132977277b1e2a483f0ca516baa8936e3e53a65c85e3ba96ebe3891021bcdb09_mini.jpg', 'Chocolate Amargo 70% Barra Arcor 80G', true);
INSERT INTO public.tb_produtos VALUES (371, 13.69, 9, '//img.sitemercado.com.br/produtos/f6f32da25f2d89294d315e45d45c50cc9da9923b889c3cc021c9ee98ad17dc54_mini.jpg', 'Pêssego em Calda em Metades Neumann Lata 450G', true);
INSERT INTO public.tb_produtos VALUES (372, 12.59, 9, '//img.sitemercado.com.br/produtos/3ced5935d8eb041201d6a424c782528b855d3e4046e40d2ab7d53e4074098705_mini.jpg', 'Pêssego em Calda Metades Schramm Lata 450G', true);
INSERT INTO public.tb_produtos VALUES (373, 18.19, 9, '//img.sitemercado.com.br/produtos/840a511a30a787981b98c0a0e580602f7a01532878d98fd43b36dce0471c1b32_mini.jpg', 'Cereja em Calda Feliz 100G', true);
INSERT INTO public.tb_produtos VALUES (374, 22.59, 9, '//img.sitemercado.com.br/produtos/49c625af74dd8bb4888aeed707a45d9d9d3345c0d3364348e51ad2d440564f34_mini.jpg', 'Ameixa em Calda Predilecta 400G', true);
INSERT INTO public.tb_produtos VALUES (375, 18.65, 9, '//img.sitemercado.com.br/produtos/9dbf733492c583068baa3547b5479d71a3abb18f7c42c036fddc64546a606edd_mini.jpg', 'Abacaxi em Calda Rodela Lata Pinduca 400G', true);
INSERT INTO public.tb_produtos VALUES (376, 24.49, 9, '//img.sitemercado.com.br/produtos/40dbbbd323e3a863f4d70a8fa947dac81869e83aca45f54e024e027d2916305c_mini.jpg', 'Figo Daldeia em Calda 400G', true);
INSERT INTO public.tb_produtos VALUES (377, 15.49, 9, '//img.sitemercado.com.br/produtos/24607e08267b914bf3c4ab7dd2cc5e994bd1aac45994fff45b39ed97abada35b_mini.jpg', 'Abacaxi em Calda Neumann Lata 400G', true);
INSERT INTO public.tb_produtos VALUES (758, 17.99, 16, 'http://fubi.ca/img/image_file_1706306158.webp', 'Ração Special Dog Adultos Carne 1kg', true);
INSERT INTO public.tb_produtos VALUES (378, 7.79, 9, '//img.sitemercado.com.br/produtos/c83861ee04e539a3fdb5f626a305a1fe028ef9d2002b4a2b436f288c8845f004_mini.jpg', 'Gelatina em Po Oetker S/Sabor 24G Incolor', true);
INSERT INTO public.tb_produtos VALUES (379, 3.65, 9, '//img.sitemercado.com.br/produtos/0f71ed9dc4fd8d1b8a8cf637be5073114c6e18839dc7a247ef47cd1d0a6c8aa9_mini.jpg', 'Pó para Maria Mole Coco Bretzke 50G', true);
INSERT INTO public.tb_produtos VALUES (380, 2.99, 9, '//img.sitemercado.com.br/produtos/b09e9edb4c6b4b0e5fee9d2f5e81054d7bf717ad75b6dacee4a40ac082a5f94b_mini.jpg', 'Mistura para Pudim Bretzke Diet Chocolate Embalagem 30G', true);
INSERT INTO public.tb_produtos VALUES (381, 4.69, 9, '//img.sitemercado.com.br/produtos/7870be475c99e9d9ae1f05bd214fbec3e4a471e5653d69cf3add509cc659f91d_mini.jpg', 'Maria Mole Oetker 50G Coco', true);
INSERT INTO public.tb_produtos VALUES (382, 3.19, 9, '//img.sitemercado.com.br/produtos/4065be1cb57a555db7e88eb3350318605e9ccafb4643f95b74e8cf58ac464157_mini.jpg', 'Pó para Pudim Bretzke Coco Caixa 50G', true);
INSERT INTO public.tb_produtos VALUES (383, 2.99, 9, '//img.sitemercado.com.br/produtos/b3ff74efe6a6d7c91f4b09fcc29e9c47025b2a42ba8a1a26323f3144bc462d07_mini.jpg', 'Pó para Pudim Bretzke Diet Morango Embalagem 25G', true);
INSERT INTO public.tb_produtos VALUES (384, 4.19, 9, '//img.sitemercado.com.br/produtos/2401964bf39add084d3098911ea036df36055e27a8e95e5d80695cdfe8482b00_mini.jpg', 'Gelatina em Pó Dr Oetker Diet Limão Caixa 12G', true);
INSERT INTO public.tb_produtos VALUES (385, 3.19, 9, '//img.sitemercado.com.br/produtos/7c01e423f78081bcc4ec0e321f06dbc213b87c8a28d6c35685fbfa3e7a3a405d_mini.jpg', 'Pó para Pudim Bretzke Morango Embalagem 85G', true);
INSERT INTO public.tb_produtos VALUES (386, 3.99, 9, '//img.sitemercado.com.br/produtos/0c052bd38201d2a334080903b370eb16cfdcdea6444b653b6ea0fa1b22fbfce7_mini.jpg', 'Goiabada Predilecta 300G', true);
INSERT INTO public.tb_produtos VALUES (387, 8.99, 9, '//img.sitemercado.com.br/produtos/08fec6d3a431a156e59c7922f92601fa81f0040eb9e83bbce9c31fdfeee86324_mini.jpg', 'Doce de Leite Frimesa Tradicional Pote 400G', true);
INSERT INTO public.tb_produtos VALUES (778, 18.89, 6, 'http://fubi.ca/img/image_file_1706360794.webp', 'Conhaque Presidente 900ml', true);
INSERT INTO public.tb_produtos VALUES (388, 6.19, 9, '//img.sitemercado.com.br/produtos/22002acf720ec02c3fbffe2af4f0e6d42e38c6c36f06b159b6d9771e49d1f2ab_mini.jpg', 'Doce de Uva Oliveira Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (389, 6.19, 9, '//img.sitemercado.com.br/produtos/f81d21c9564c77a854044e627b00049f0b016802bce311352544605ea51cf15f_mini.jpg', 'Doce de Morango Oliveira Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (390, 15.49, 9, '//img.sitemercado.com.br/produtos/40e88c5918cadfd098c7fd319bea3a81cea20f97ac2c09dc18aa041f0bec4723_mini.jpg', 'Doce de Leite Aviação 400G', true);
INSERT INTO public.tb_produtos VALUES (391, 6.19, 9, '//img.sitemercado.com.br/produtos/5494c81a326f2ae7a35260e3f6df449da2d8e4c98ad034f26d9b2c18c95742dc_mini.jpg', 'Doce de Banana Oliveira Cremoso Pote 400G', true);
INSERT INTO public.tb_produtos VALUES (392, 6.19, 9, '//img.sitemercado.com.br/produtos/f61ccc9789be53b6475c448fcc939e905ebe39650b72a16abe75964dbd8b17c9_mini.jpg', 'Doce de Abóbora Oliveira Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (393, 29.69, 9, '//img.sitemercado.com.br/produtos/6dbdd70a5623715deb93547d19e14eb9d338eb9df289ce9d9ed564b735bdf7c6_mini.jpg', 'Paçoca Rolha Santo Antônio 900G', true);
INSERT INTO public.tb_produtos VALUES (394, 6.79, 9, '//img.sitemercado.com.br/produtos/8c2f4f52fede351c8fc81d23bd30e897cff8decd4c9d5f8f174ade15678d72f4_mini.jpg', 'Pirulito Sabor Framboesa 7 Belo 120G', true);
INSERT INTO public.tb_produtos VALUES (395, 5.59, 9, '//img.sitemercado.com.br/produtos/676125f10112537b58fa4203ebbd7213c8f8dbafd22032c4876133d08583ded0_mini.jpg', 'Bala Sabor Framboesa 7 Belo Arcor 100G', true);
INSERT INTO public.tb_produtos VALUES (396, 5.39, 9, '//img.sitemercado.com.br/produtos/b515c61364f738a7acb2386d8de8cce0d4dc3269c8a5705610b078b24c51ff20_mini.jpg', 'Bala Butter Toffees Sabor Chocolate Arcor 100G', true);
INSERT INTO public.tb_produtos VALUES (397, 6.36, 9, '//img.sitemercado.com.br/produtos/12051ecb53d66bd3bc8ce7d2a67b332ba803e0df47a50367159cea07c87829c5_mini.jpg', 'Fini Beijos 90G', true);
INSERT INTO public.tb_produtos VALUES (398, 3.09, 9, '//img.sitemercado.com.br/produtos/77c8bc70dbc112fc260140adf45fd6fa78376066b712722dde59a561c4ef49c4_mini.jpg', 'Bala Yogurte 100 Original Dori 100G', true);
INSERT INTO public.tb_produtos VALUES (399, 1.49, 9, '//img.sitemercado.com.br/produtos/a604509f4801ba1e5c81a0d4b71fffbfda3f58e4e96375ab66f7d46ad5cb70f8_mini.jpg', 'Bala Gelatin Beijos Morango a Fini 15G', true);
INSERT INTO public.tb_produtos VALUES (400, 1.45, 9, '//img.sitemercado.com.br/produtos/6e922ed469343812eff1c68f518e1956e22cc642c4c8d3ca81161f1487a8e625_mini.jpg', 'Chiclete Fini 14G Classicos', true);
INSERT INTO public.tb_produtos VALUES (401, 3.09, 9, '//img.sitemercado.com.br/produtos/718a2f23f5c9096c58c1fc750f1e2b507eb026d97d956cf04d6da6486d6f55fe_mini.jpg', 'Bala Chicle Bolete Dori 100G', true);
INSERT INTO public.tb_produtos VALUES (402, 4.99, 10, '//img.sitemercado.com.br/produtos/3555a720924e8a0bc22d8c4b0370e09a329327328d697652b5a7630d7243ead2_mini.jpg', 'Mandioca Descascada Resfriada 1Kg', true);
INSERT INTO public.tb_produtos VALUES (403, 8.39, 10, '//img.sitemercado.com.br/produtos/3a1bb7623e2cf5de76f671102ca2eb5664a94977240b9162d4fbda4b88db3648_mini.jpg', 'Batata Palito Congelada Copacol Pacote 400G', true);
INSERT INTO public.tb_produtos VALUES (738, 5.25, 1, 'http://fubi.ca/img/image_file_1706303807.webp', 'Quirerinha Amarela RD 500g', true);
INSERT INTO public.tb_produtos VALUES (404, 16.9, 10, '//img.sitemercado.com.br/produtos/cafe587111d95705b0c3ff3df265c486877f181cf54f06d5e62b3754142d7f56_mini.jpg', 'Batata Congelada Tradicional Mccain 720G', true);
INSERT INTO public.tb_produtos VALUES (405, 14.9, 10, '//img.sitemercado.com.br/produtos/f06a339d52b1332f7f40f136485cc5e13be781ba99ed8e2c47ca5456e7cb0a24_mini.jpg', 'Batata Pré Frita Extra Crocante Airfryer Congelada Mccain 600G', true);
INSERT INTO public.tb_produtos VALUES (406, 7.19, 10, '//img.sitemercado.com.br/produtos/42d5c1bf4ee5f4b04425f26f715e43b92871a09fd87ebca6d4c57577b61e3b26_hero_mini.jpg', 'Seleta de Legumes Copacol Congelada 300G', true);
INSERT INTO public.tb_produtos VALUES (407, 7.99, 10, '//img.sitemercado.com.br/produtos/00bbe6eb1ba621a071717033353478b3207a94ed53aaddeba307735195807b0c_hero_mini.jpg', 'Milho Verde Congelado Copacol 300G', true);
INSERT INTO public.tb_produtos VALUES (408, 29.99, 10, '//img.sitemercado.com.br/produtos/ca6e48fcee7de9ad013bc8ca251bb5cd7acc504fc7b96844cb216612a353b145_mini.jpg', 'Batata Pré-Frita Tradicional Congelada Mccain Tamanho Família', true);
INSERT INTO public.tb_produtos VALUES (409, 7.29, 10, '//img.sitemercado.com.br/produtos/d2c2048fb59acc792a467e06388099a5238189d102732512729e229dc3999a14_hero_mini.jpg', 'Ervilha Congelada Copacol 300G', true);
INSERT INTO public.tb_produtos VALUES (410, 14.9, 10, '//img.sitemercado.com.br/produtos/677df18d0f66b149e4212a089894efe64f082ea25d7204063de49ac6fcf80ab5_mini.jpg', 'Waffle Tradicional Congelado Forno de Minas 210G', true);
INSERT INTO public.tb_produtos VALUES (411, 11.99, 10, '//img.sitemercado.com.br/produtos/dc3f42beca731da8f5ccaf29244a0f12d6c3f62bd9e05502f437826e6214720a_mini.jpg', 'Lasanha À Bolonhesa Aurora 600G', true);
INSERT INTO public.tb_produtos VALUES (412, 13.59, 10, '//img.sitemercado.com.br/produtos/c4055bfd5e62b2fd5d278d7050bccda3edf8ee56bc46dc5a6979a1607c82bfa3_mini.jpg', 'Lasanha Sadia Bolonhesa 350G', true);
INSERT INTO public.tb_produtos VALUES (413, 16.79, 10, '//img.sitemercado.com.br/produtos/dd431b7bcfc57563cbdd3863f463ce98d80ee920e3db15cbd69f452e8fb1af60_mini.jpg', 'Pizza 4 Queijos Sadia 460G', true);
INSERT INTO public.tb_produtos VALUES (414, 8.89, 10, '//img.sitemercado.com.br/produtos/35d23e5c883139c960e0795cb8aa59f35fad5644065e9c204fc267ba42e8f996_hero_mini.jpg', 'Fettuccine Levíssimo e Brócolis Seara 350G', true);
INSERT INTO public.tb_produtos VALUES (415, 12.89, 10, '//img.sitemercado.com.br/produtos/efe128cd05a59a3be9c715d83fc0ed2cf64cc7051933da1dcaf64d3647f0e3ee_mini.jpg', 'Lasanha Congelada Sadia Quatro Queijos Embalagem 350G', true);
INSERT INTO public.tb_produtos VALUES (416, 19.9, 10, '//img.sitemercado.com.br/produtos/02b60e4b72d5ed316817805269ad57261f7c78bd8288ed49d7224f0af6788994_mini.jpg', 'Torta Sadia Frango com Requeijão Embalagem 500G', true);
INSERT INTO public.tb_produtos VALUES (417, 14.89, 10, '//img.sitemercado.com.br/produtos/80857b2b84e3dc7380a77dcaa3b3c8daed4535acbf30dda407a5b9c530db1571_mini.jpg', 'Pizza de Calabresa Aurora 460G', true);
INSERT INTO public.tb_produtos VALUES (418, 9.9, 10, '//img.sitemercado.com.br/produtos/83c602e18f4e627f919ab0a1ecf21d7275018208294c87092ddc352d87716aec_hero_mini.jpg', 'Chicken Supreme Seara 300Gr', true);
INSERT INTO public.tb_produtos VALUES (419, 11.29, 10, '//img.sitemercado.com.br/produtos/438f9d4cb51f3125e4e9a5e41662f6e3d889115fc30186d2013633c433310ab3_hero_mini.jpg', 'Tekitos Tradicional Seara 300G', true);
INSERT INTO public.tb_produtos VALUES (420, 9.29, 10, '//img.sitemercado.com.br/produtos/371db1d77d22b21869565df331e8e23ea83cd7a1900030aa5ff72ecc249d02a9_mini.jpg', 'Mini Chicken Tradicional Perdigão 275G', true);
INSERT INTO public.tb_produtos VALUES (421, 29.19, 10, '//img.sitemercado.com.br/produtos/759f8bdb4946b4a7a202042d8882886ce88b37988fddda5a3487f502106f5c43_mini.jpg', 'Empanado Frango Perdigão Big Chicken 1Kg Tradicional', true);
INSERT INTO public.tb_produtos VALUES (422, 9.69, 10, '//img.sitemercado.com.br/produtos/519e1bfff49de663dd5e9c5630ecf2e53fbc195ddcb705a6de1bcc70ccebda37_mini.jpg', 'Tirinhas de Frango Aurora 300G', true);
INSERT INTO public.tb_produtos VALUES (423, 11.99, 10, '//img.sitemercado.com.br/produtos/1298aec753cdaa17cba44ab0782ee2edb22a47ba8e991a0761b36965469ddf63_hero_mini.jpg', 'Tirinhas Sticks de Tilápia Empanado Congelado 300G', true);
INSERT INTO public.tb_produtos VALUES (424, 14.69, 10, '//img.sitemercado.com.br/produtos/11fb28f8e65c831f2baf3ea2d8a3fd7ef7c4d88d76200cb2c93e8eb3f11c225c_mini.jpg', 'Pierogue Batata com Cheiro Verde Schmidt Embalagem 400G', true);
INSERT INTO public.tb_produtos VALUES (425, 1.99, 10, '//img.sitemercado.com.br/produtos/8c5b1f7294e3a27aac6e936681329a4d373bbacb0c819b7a58c4d15db605f2e1_hero_mini.jpg', 'Steak de Frango Seara 100G', true);
INSERT INTO public.tb_produtos VALUES (426, 1.15, 10, '//img.sitemercado.com.br/produtos/03a41b4b8a51ed634ecd7cbdcf7f1c0716630565a75894c06d588592ebe7a598_mini.jpg', 'Hambúrguer Bov Cong Montana 56G', true);
INSERT INTO public.tb_produtos VALUES (427, 26.59, 10, '//img.sitemercado.com.br/produtos/6ea988d9739884bc09d56b672e9a678e792fd590b99d44904c375194bc012919_mini.jpg', 'Hambúrguer Sadia Tradicional 672G', true);
INSERT INTO public.tb_produtos VALUES (428, 1.99, 10, '//img.sitemercado.com.br/produtos/7aec96eb0d6d7735b79e1471cb11ab1b3df4e1c339fcc9c5e9ba784b878c8abb_mini.jpg', 'Hambúrguer Misto Frimesa 56G', true);
INSERT INTO public.tb_produtos VALUES (429, 15.98, 10, '//img.sitemercado.com.br/produtos/cdd7ca2ed314fbe92bffaae03e64951758a89193cb33195c7c9db33e14c91cad_mini.jpg', 'Hambúrguer Bovino Resfriado 360G', true);
INSERT INTO public.tb_produtos VALUES (430, 25.79, 10, '//img.sitemercado.com.br/produtos/e654d7ab4d50523e1b83d4f9013aec62d44119c7b184d7d4648bcea305497a71_hero_mini.jpg', 'Gran Angus Burger Seara Gourmet 400G', true);
INSERT INTO public.tb_produtos VALUES (431, 2.19, 10, '//img.sitemercado.com.br/produtos/0041d07961a6344202ee21f83a3a6bda1a69db39ccee65267046597ab6f42b3d_mini.jpg', 'Hambúrguer Bovino Frimesa Unidade 56G', true);
INSERT INTO public.tb_produtos VALUES (432, 25.19, 10, '//img.sitemercado.com.br/produtos/cceb1762d718ec7f172396d89eb5e6b4af00ff3f16e56a2b4fc85de7de23d031_mini.jpg', 'Hambúrguer Bovino Frimesa Caixa 672G', true);
INSERT INTO public.tb_produtos VALUES (433, 3.55, 10, '//img.sitemercado.com.br/produtos/cfc40488fc664bde1f630dede1f77316e4c5c1813d8f3c22ea9f6e93f7c0d765_mini.jpg', 'Hambúrguer Frimesa Carne Bovina Embalagem 90G', true);
INSERT INTO public.tb_produtos VALUES (435, 15.9, 10, '//img.sitemercado.com.br/produtos/0d5d4ec296467865c74a292eaf1ed9c0d875c731bc87bbada6dad7e63898a899_mini.jpg', 'Pão de Queijo Tradicional Forno de Minas 400G', true);
INSERT INTO public.tb_produtos VALUES (436, 12.99, 10, '//img.sitemercado.com.br/produtos/b8ec94d3cd79c3f197a8c926af68d29051c261fd89e6b51d9abcae93bac40716_mini.jpg', 'Pão de Alho Santa Massa Tradicional Pacote 240Gramas', true);
INSERT INTO public.tb_produtos VALUES (437, 28.9, 10, '//img.sitemercado.com.br/produtos/125d57c92f854ee492a79345f62ed0e5922480d657f40cb7a61169e95a2f7f3a_mini.jpg', 'Pão de Queijo Congelado Tradicional Forno de Minas 820G', true);
INSERT INTO public.tb_produtos VALUES (438, 22.04, 10, '//img.sitemercado.com.br/produtos/cac83c22d975ddf1bb06642ad73854f0ab76ca10a123f0e8d5af7ee5332b0f22_mini.jpg', 'Pão de Queijo Lanche Massaleve Pacote 1Kg', true);
INSERT INTO public.tb_produtos VALUES (439, 12.99, 10, '//img.sitemercado.com.br/produtos/3d110f5c4a1d63625698698f4c124650136226874293029bf7c1e367604ea484_mini.jpg', 'Pão de Alho Santa Massa Tradicional 240G', true);
INSERT INTO public.tb_produtos VALUES (440, 12.99, 10, '//img.sitemercado.com.br/produtos/778ae748fbb9f82f02a2e8f9918e25fbaa1085554bc3b962ccd149bae8dfec7c_mini.jpg', 'Pão de Alho Santa Massa Picante Pacote 270G', true);
INSERT INTO public.tb_produtos VALUES (441, 19.99, 10, '//img.sitemercado.com.br/produtos/3f5e44f39f1ffffa798aba88f2be3d1ec7d24078d0c75c38a154bef74886c0a2_mini.jpg', 'Pão de Queijo Receita Caseira Forno de Minas 400G', true);
INSERT INTO public.tb_produtos VALUES (442, 14.49, 11, '//img.sitemercado.com.br/produtos/b91c84fa94d4165e058d1616261807fa7b494a25e32f315c13bd0225d85d3ed0_hero_mini.jpg', 'Achocolatado Nescau 550G', true);
INSERT INTO public.tb_produtos VALUES (434, 15.99, 10, '//img.sitemercado.com.br/produtos/584f7ad986443959195b76e1475ff0e7f0da661ec9de3b93c119efb5529a5f06_mini.jpg', 'Pão de Alho Santa Massa Tradicional Pacote 400G', true);
INSERT INTO public.tb_produtos VALUES (1060, 45.99, 3, NULL, 'Bacon Manta kg', true);
INSERT INTO public.tb_produtos VALUES (445, 9.49, 11, '//img.sitemercado.com.br/produtos/14c01b2da05c2d87df674c1cf942ef90cbdb19cb3321d169d7d5f81e4f5a37d8_mini.jpg', 'Achocolatado em Pó Original Toddy 370g', true);
INSERT INTO public.tb_produtos VALUES (446, 14.99, 11, '//img.sitemercado.com.br/produtos/2f0eb724d4e9c2e601a2728cddd28cd0777a05a324f997a8e71fc0ac03de0faf_hero_mini.jpg', 'Achocolatado em Pó Original Toddy 700g', true);
INSERT INTO public.tb_produtos VALUES (447, 3.89, 11, '//img.sitemercado.com.br/produtos/40193a17a1c22f8a174c01930e4f95b3ddf837097be18be96d0283e4378b12e5_mini.jpg', 'Bebida Láctea Friminho de Chocolate Frimesa 200Ml', true);
INSERT INTO public.tb_produtos VALUES (448, 6.19, 11, '//img.sitemercado.com.br/produtos/159e609b38cb6c58105de5a04596025ec7a37f6d08a5843bf6db93e793fb3f23_hero_mini.jpg', 'Achoc em Po Chocolatto Sch 300G', true);
INSERT INTO public.tb_produtos VALUES (449, 56.9, 11, '//img.sitemercado.com.br/produtos/a3dbde3e1fb3647a20406da5bc19c0ff9b882d6a0619fc2c84bd117f460e0427_hero_mini.jpg', 'Suplemento em Pó Sustagen Kids Baunilha Embalagem 500G + Grátis 200G', true);
INSERT INTO public.tb_produtos VALUES (450, 12.25, 11, '//img.sitemercado.com.br/produtos/eecd68e640366f03e21861c35176caf00e1b1af8bfc62b14098f107100d83b55_mini.jpg', 'Café 3 Corações 500G', true);
INSERT INTO public.tb_produtos VALUES (451, 12.9, 11, '//img.sitemercado.com.br/produtos/b1901d73080bf7d09c63c89a44bbfd00bef0afab63fdbbb952d1c3a18320605f_hero_mini.jpg', 'Café 3 Corações Tradicional Vácuo 500G', true);
INSERT INTO public.tb_produtos VALUES (452, 15.05, 11, '//img.sitemercado.com.br/produtos/70c33b3cdb12f01f62e089d1a372c3ff2f09df7d4ee76d90719ef980a64a286e_hero_mini.jpg', 'Café Torrado e Moído Tradicional Melitta 500G', true);
INSERT INTO public.tb_produtos VALUES (455, 12.25, 11, '//img.sitemercado.com.br/produtos/21945724e7f576ae859cb982e5b1850b6422d86025e0d8a8b78f43ba6e56eac1_mini.jpg', 'Café Extra Forte 3 Corações Leve 500G Pague 475G', true);
INSERT INTO public.tb_produtos VALUES (456, 12.9, 11, '//img.sitemercado.com.br/produtos/86b5357087a1265c3aa7c11384814959e27ccfdcbdc1c22de99d67eb8eb619c6_hero_mini.jpg', 'Cafe 3 Coracoes 500G Extra Forte', true);
INSERT INTO public.tb_produtos VALUES (457, 14.18, 11, '//img.sitemercado.com.br/produtos/e994bdb7ccb4bc796ef6efc2f638924601c3aac1b9287a056233220143525b6f_mini.jpg', 'Café Bom Taí Extra Forte Vácuo 500G', true);
INSERT INTO public.tb_produtos VALUES (458, 12.69, 11, '//img.sitemercado.com.br/produtos/b05c0d6bd48f26036a27a64417ec5e2f0eea05f6e7292347d51c02d6103c731e_hero_mini.jpg', 'Cereal Sucrilhos Kellog 240G', true);
INSERT INTO public.tb_produtos VALUES (914, 8.99, 14, 'http://fubi.ca/img/image_file_1706379035.webp', 'Amaciante Baby Soft 2L Branco', true);
INSERT INTO public.tb_produtos VALUES (459, 4.79, 11, '//img.sitemercado.com.br/produtos/62c985da9569e7867ee6d5a99b513180a649dd1415f1bca30778281566988b6d_mini.jpg', 'Aveia em Flocos Finos Quaker 165 g', true);
INSERT INTO public.tb_produtos VALUES (460, 28.99, 11, '//img.sitemercado.com.br/produtos/09fbedf75740700276b9146b592c9cb9a6e271f4298f2a181232fed7bbb883bc_mini.jpg', 'Cereal Sucrilhos 690G', true);
INSERT INTO public.tb_produtos VALUES (461, 16.99, 11, '//img.sitemercado.com.br/produtos/f4ed12322d370f9a72db9be42bf03ddd4a2f8c9c5ca28317e3214e8cf49dfc9b_mini.jpg', 'Cereal Matinal Snow Flakes Leve 620G Pague 470G', true);
INSERT INTO public.tb_produtos VALUES (462, 11.69, 11, '//img.sitemercado.com.br/produtos/516bcdc0b3a27f65528d327088438d3a6a6658158789c1c8b4d83f0274d5bf26_mini.jpg', 'Farinha Láctea Original Nestlé 210G', true);
INSERT INTO public.tb_produtos VALUES (463, 23.39, 11, '//img.sitemercado.com.br/produtos/5a3985b9d8260b64e10e6e48149bff77fbce192e346a36926a28af916a5bca92_hero_mini.jpg', 'Farinha Láctea Original Nestlé 360g', true);
INSERT INTO public.tb_produtos VALUES (464, 15.69, 11, '//img.sitemercado.com.br/produtos/ffc05695b307d0a412195210dfbf4fe44558717e8fce496a4edc780492adfa75_mini.jpg', 'Kit Cereal Nestle Nescau 210G + Snow Flakes 230G', true);
INSERT INTO public.tb_produtos VALUES (465, 15.49, 11, '//img.sitemercado.com.br/produtos/fabafce99db0462b2b61e801bfad34a7b089414a9c1ef75882356dacf1588de0_hero_mini.jpg', 'Granola Tradicional Mãe Terra 250G', true);
INSERT INTO public.tb_produtos VALUES (466, 7.49, 11, '//img.sitemercado.com.br/produtos/57816d97934561aacb14b98694d27c4f33f0e72554573eaf0bf2161b4dc2e493_mini.jpg', 'Torrada Tradicional Bauducco 284G', true);
INSERT INTO public.tb_produtos VALUES (467, 3.49, 11, '//img.sitemercado.com.br/produtos/45b638c633d0b5e571bf7c6e007473a2d0f3ac407580bb10805de9eedf9cb029_mini.jpg', 'Torrada Visconti 120G Tradicional', true);
INSERT INTO public.tb_produtos VALUES (468, 4.99, 11, '//img.sitemercado.com.br/produtos/da70e4c22a57a8d6c9eaf0b683b4dc88d136f5da28839e8bcfb2ba24535fc986_mini.jpg', 'Torrada Bauducco 142G Multigrao', true);
INSERT INTO public.tb_produtos VALUES (469, 4.59, 11, '//img.sitemercado.com.br/produtos/61d776e140cd8dc1c51b4d5a446373120be6b14be0bba360f3ec6224cef318dd_mini.jpg', 'Torrada Tradicional Bauducco 142G', true);
INSERT INTO public.tb_produtos VALUES (470, 4.99, 11, '//img.sitemercado.com.br/produtos/7a0cedd21db7578e634502bc8364ba02abcb77b2642ee68ad3cc317a35767486_mini.jpg', 'Torrada Lev Magic Toast Original Marilan 100G', true);
INSERT INTO public.tb_produtos VALUES (471, 3.59, 11, '//img.sitemercado.com.br/produtos/aedfbbf80bc78001ffa92b17a105a1d5d9fcc78fb8ed4d7ce43b894957002466_mini.jpg', 'Torrada Visconti 120G Integral', true);
INSERT INTO public.tb_produtos VALUES (472, 3.59, 11, '//img.sitemercado.com.br/produtos/b56b6d435c00b15bc8de2d3c528225562bddd284831658bd167a365d20126c62_mini.jpg', 'Torrada Visconti 120G Multigraos', true);
INSERT INTO public.tb_produtos VALUES (473, 7.99, 11, '//img.sitemercado.com.br/produtos/cd5d4070e999c4f47ec456a3fc578cc5903b759fb5ebfd2af94dd2d726641c84_mini.jpg', 'Torrada Integral Bauducco 284G', true);
INSERT INTO public.tb_produtos VALUES (474, 12.49, 11, '//img.sitemercado.com.br/produtos/995e1b0d6d669bb471679a6e2eca31669edd68d84350406626250b1689dfa1cc_hero_mini.jpg', 'Creme de Avelã com Cacau Nutella 140G', true);
INSERT INTO public.tb_produtos VALUES (475, 26.99, 11, '//img.sitemercado.com.br/produtos/993807db17825c59c9e3888a89380a13ee9ad978d84bb06b69671d0ad7d2cc83_hero_mini.jpg', 'Creme de Avelã Ferrero Nutella 350G', true);
INSERT INTO public.tb_produtos VALUES (476, 26.89, 11, '//img.sitemercado.com.br/produtos/43e89e16def0294527eea6d218e29075899db4c59d68617ee8ce0bf31197fd22_mini.jpg', 'Creme de Avelã Nutella 350G', true);
INSERT INTO public.tb_produtos VALUES (477, 51.9, 11, '//img.sitemercado.com.br/produtos/ef0657bf59a2c824012e8dee2abc77be879a95982c2dc00d7a94211d65380219_mini.jpg', 'Creme de Avelã com Cacau Nutella 650G', true);
INSERT INTO public.tb_produtos VALUES (478, 34.98, 11, '//img.sitemercado.com.br/produtos/a00e42494ef57fb0bff043de4640e9c71f9a5a1405f22a0e9921e08c85c6ab2c_mini.jpg', 'Creme de Avelã Zero Vegano Vitao 180G', true);
INSERT INTO public.tb_produtos VALUES (479, 24.99, 11, '//img.sitemercado.com.br/produtos/4715b00b2d5cd09c132fe9df2f1050ce71e892b91236ec4b3ecb4c89a56e8438_mini.jpg', 'Creme de Avelã com Cacau Barion 280G', true);
INSERT INTO public.tb_produtos VALUES (480, 21.59, 11, '//img.sitemercado.com.br/produtos/5a17d46c747412c5baf6a0b6a4a18eb62a37321c17ae3339c0eacf35a159c474_mini.jpg', 'Creme de Amendoim Negresco Guimarães 200G', true);
INSERT INTO public.tb_produtos VALUES (481, 15.55, 11, '//img.sitemercado.com.br/produtos/6ad3713c5623cab7b1f479be65016f598877d20dd801a9e732288f8c50f19ee4_mini.jpg', 'Creme de Avelã com Cacau Divine Creamy 150G', true);
INSERT INTO public.tb_produtos VALUES (482, 10.89, 11, '//img.sitemercado.com.br/produtos/514865e774543e7ebbd804224693dfd8d238ab14c8061e4fcb80c79aa078b190_hero_mini.jpg', 'Chá Matte Natural Leão 250G', true);
INSERT INTO public.tb_produtos VALUES (483, 4.09, 11, '//img.sitemercado.com.br/produtos/7ba66afd5af82ad5a46561ff1301ad43777d9bea27f84d5d86d5d13548e5b631_hero_mini.jpg', 'Chá de Erva Doce Leão 16G com 10Un', true);
INSERT INTO public.tb_produtos VALUES (453, 17.99, 11, '//img.sitemercado.com.br/produtos/0e44586c205757fa833c30fa587dc0267106148e8a1fb9979f3b63484c87c97f_mini.jpg', 'Café Damasco 500g Pacote', true);
INSERT INTO public.tb_produtos VALUES (485, 6.99, 11, '//img.sitemercado.com.br/produtos/3f4d6a5fd5430404c90ccba60dd016150d29745c07d92418c5ae35f5194f3edc_hero_mini.jpg', 'Chá de Camomila Leão 15G com 15Un', true);
INSERT INTO public.tb_produtos VALUES (486, 11.39, 11, '//img.sitemercado.com.br/produtos/123cc88dcae7f402201c803d360dc623bdfc46ba85d993635e58403a86fe1435_mini.jpg', 'Erva Mate para Tereré 81 Hortelã e Menta 500G', true);
INSERT INTO public.tb_produtos VALUES (488, 3.69, 11, '//img.sitemercado.com.br/produtos/9a690264ad0a13de5203eaa2a4540c6e63bbcd473f2a75f47f1538f58ba32c36_hero_mini.jpg', 'Chá Sabor Hortelã Leão 10G', true);
INSERT INTO public.tb_produtos VALUES (489, 9.29, 11, '//img.sitemercado.com.br/produtos/935c7c195c84df41841ad75b6ae811d0fc15b54db7ea88b61b03b9adf3b7372a_mini.jpg', 'Erva Mate Premium Embalada a Vácuo Regina 500G', true);
INSERT INTO public.tb_produtos VALUES (490, 12.89, 11, '//img.sitemercado.com.br/produtos/702da62d1b30640a55052f1d9816659ac47ec372b8daa3afb827a9af896e010d_mini.jpg', 'Mel Orgânico Breyer 200G', true);
INSERT INTO public.tb_produtos VALUES (491, 24.65, 11, '//img.sitemercado.com.br/produtos/aa6e336edab181ed19dd3574136e5ff7f6f424e4b733e79b46c500a89eacb96a_mini.jpg', 'Mel Unimel Pote 500G', true);
INSERT INTO public.tb_produtos VALUES (492, 6.19, 11, '//img.sitemercado.com.br/produtos/65d361ba1a4810db88ec3ec9450d68cf080c7e926c79fa3c1cd37763d572538b_mini.jpg', 'Doce de Fruta Misto Oliveira Cremoso Sabor Tutti Frutti Pote 400G', true);
INSERT INTO public.tb_produtos VALUES (493, 9.05, 11, '//img.sitemercado.com.br/produtos/6752a820631b39cc10aa3bd7ccbda424c0f393a2b0f45a3b5c480406c0c14711_mini.jpg', 'Doce Cremoso de Fruta Ritter Morango Pote 400G', true);
INSERT INTO public.tb_produtos VALUES (494, 15.39, 11, '//img.sitemercado.com.br/produtos/69516533939f7a4ee3b54c11b859199a23e32feec1b971a02c37956797ab3150_mini.jpg', 'Mel Unimel Bisnaga 270G', true);
INSERT INTO public.tb_produtos VALUES (495, 30.39, 11, '//img.sitemercado.com.br/produtos/921f366aeec98ebab5127aacf482b782c829b6b9f28d521b225101b6803ae41b_mini.jpg', 'Geleia de Frutas Vermelhas Queensberry 280G', true);
INSERT INTO public.tb_produtos VALUES (496, 9.05, 11, '//img.sitemercado.com.br/produtos/69944013cb3e25425ac2a955f622c44bf378218b1a659ed96c390d170fa2dd44_mini.jpg', 'Doce Cremoso de Fruta Ritter Light Uva Pote 380G', true);
INSERT INTO public.tb_produtos VALUES (497, 30.39, 11, '//img.sitemercado.com.br/produtos/198d49aeb2589cbeb172179e1cedfae1bd7e6f1450794e0369af249bc41befe1_mini.jpg', 'Geleia de Morango Diet Queensberry 280G', true);
INSERT INTO public.tb_produtos VALUES (499, 6.98, 12, '//img.sitemercado.com.br/produtos/1c7423d253a275de7c2584fdf5f180960273ad6958145ef982621189a675fbc8_hero_mini.jpg', 'Pao de Forma Pullman 480G', true);
INSERT INTO public.tb_produtos VALUES (500, 14.99, 12, '//img.sitemercado.com.br/produtos/0fd8c5d258ca56eb256f0e2b77ab2659c6f77b1c1efa0e7f13532fc59b307859_mini.jpg', 'Pão Croissant 300G', true);
INSERT INTO public.tb_produtos VALUES (501, 8.59, 12, '//img.sitemercado.com.br/produtos/e659329607c36d518b3f87d6c79628aa22e1737f3a5a2a64e2e86bebad51f221_mini.jpg', 'Bisnaguinha Seven Boys', true);
INSERT INTO public.tb_produtos VALUES (502, 5.99, 12, '//img.sitemercado.com.br/produtos/c312b6f29fb610eae3ac88678bb11f102c9b1c88d791efedd3f620703d92808f_mini.jpg', 'Pão Caseirinho Hot Dog 400g', true);
INSERT INTO public.tb_produtos VALUES (503, 10.29, 12, '//img.sitemercado.com.br/produtos/10a15b21f30eb92665216406a9cd3ced3ca734d21855de40e001fc7d6f853c79_mini.jpg', 'Pão de Forma Integral Castanha e Quinoa Pão Nino 400G', true);
INSERT INTO public.tb_produtos VALUES (504, 10.69, 12, '//img.sitemercado.com.br/produtos/2d8b47f2b2815a977a2915cff8998898250bb7bb9b1386946fee22a9d0093924_mini.jpg', 'Pão de Forma Sanduíche Tradicional Seven Boys 450G', true);
INSERT INTO public.tb_produtos VALUES (505, 6.98, 12, '//img.sitemercado.com.br/produtos/6f95672ff875f0eaa89028d8b47345c3156c44303c611a6df0b29d9f4a6e321f_hero_mini.jpg', 'Bisnaguito Pullman Pacote 300G', true);
INSERT INTO public.tb_produtos VALUES (506, 10.99, 12, '//img.sitemercado.com.br/produtos/4b2dee6a11231057031c822d6c491b87df6963520a5396dd5f9c2211fd1bd84f_mini.jpg', 'Panettone Chocolate Condor 500G', true);
INSERT INTO public.tb_produtos VALUES (507, 10.99, 12, '//img.sitemercado.com.br/produtos/37f7b7bb838653d7ad84c124696487be1d755f954b62ac8313c4a100dd704ac3_mini.jpg', 'Panettone Frutas Condor 500G', true);
INSERT INTO public.tb_produtos VALUES (508, 10.49, 12, '//img.sitemercado.com.br/produtos/e437aeddfa3956303cfe62f40fb4f05ff4b73a23879b7bae4dcc704b866b6afb_hero_mini.jpg', 'Chocottone Bauducco Bites 107G', true);
INSERT INTO public.tb_produtos VALUES (509, 1.39, 12, '//img.sitemercado.com.br/produtos/7fcfe75d3a7ff625e72494a0f94911dedec1c008d39ef4412fef3a2135981e3c_mini.jpg', 'Fermento em Pó Fermix Biologico Dona Benta Sachê 10G', true);
INSERT INTO public.tb_produtos VALUES (510, 3.99, 12, '//img.sitemercado.com.br/produtos/793e00bb475876832d6bb6b971128a272e450e137d3bea7e84d8dd799f56014e_mini.jpg', 'Fermento em Pó Químico Dr. Oetker 100G', true);
INSERT INTO public.tb_produtos VALUES (512, 10.49, 12, '//img.sitemercado.com.br/produtos/9211c49714a8d7ee675eaf1af20b63981eeebc2c9583c7d7267d9fd4ccf95069_mini.jpg', 'Fermento Biológico Dr Oetker Seco Instantâneo 125G', true);
INSERT INTO public.tb_produtos VALUES (513, 2.99, 12, '//img.sitemercado.com.br/produtos/614d1d63cfccb00f769aefc30dbf0604fd84446108af8c61e9f8297841b325a8_hero_mini.jpg', 'Fermento Fleischmann Super 13G', true);
INSERT INTO public.tb_produtos VALUES (514, 9.99, 12, '//img.sitemercado.com.br/produtos/4933f5b7c218d78e72246617a59fa2a11a2dead8a0ea9775879968809302164c_mini.jpg', 'Bolo Sabor Laranja Panco 300G', true);
INSERT INTO public.tb_produtos VALUES (515, 1.99, 12, '//img.sitemercado.com.br/produtos/48d74959c8bd1777892466e09ce089d59ba0c7f934a9809419e32436797f5e29_mini.jpg', 'Bolinho Bauducco Roll 34G Chocolate', true);
INSERT INTO public.tb_produtos VALUES (516, 1.89, 12, '//img.sitemercado.com.br/produtos/f3c2c94294a8936595390e9e8e4c58d7ede37e751424c6af90ea9c49fe19e93f_mini.jpg', 'Bolinho Duplo Chocolate Bauducco 40G', true);
INSERT INTO public.tb_produtos VALUES (517, 3.95, 12, '//img.sitemercado.com.br/produtos/9e459ce133ee71819f27910858b0d9b6040aea3a9c45ff6964033fd385889a64_hero_mini.jpg', 'Bolinho Baunilha Ana Maria 70G', true);
INSERT INTO public.tb_produtos VALUES (519, 1.89, 12, '//img.sitemercado.com.br/produtos/c548b7a2912caafd038365c5e24595aa01ba5347d85ea6b5156b8a960086ded3_mini.jpg', 'Bolinho Sabor Chocolate com Baunilha Bauducco 40g', true);
INSERT INTO public.tb_produtos VALUES (520, 12.45, 12, '//img.sitemercado.com.br/produtos/f6953d7d4f75932923988a7fb86a75c5f3fb1d36fb39af2f21fa39a98b48879d_mini.jpg', 'Bolo de Chocoboy Panco 300G', true);
INSERT INTO public.tb_produtos VALUES (521, 1.49, 12, '//img.sitemercado.com.br/produtos/6b7f3d9367ec7d9a274d50b2d425ce30e30b74c01594525f530c0863ccf63fc9_mini.jpg', 'Bolinho Bauducco Duo Chocolate 27G', true);
INSERT INTO public.tb_produtos VALUES (522, 11.95, 12, '//img.sitemercado.com.br/produtos/d6b81ae83fee81ff49d1b0a7a7c0f433b54b15fcb05ace5db6b790828b48cf1d_mini.jpg', 'Essência de Baunilha Fleischmann 30Ml', true);
INSERT INTO public.tb_produtos VALUES (523, 7.99, 12, '//img.sitemercado.com.br/produtos/404678f75c21701d95bc14f053e69ab5a25430360b855007cb55cf94270ed956_mini.jpg', 'Mistura para Bolo Chocolate com Avelã Dona Benta 450G', true);
INSERT INTO public.tb_produtos VALUES (524, 7.59, 12, '//img.sitemercado.com.br/produtos/a313e57d8dd0724519ec139592f53900e69e008d6f495f43d0537068eb6e4b6a_mini.jpg', 'Casquinha de Sorvete Barion Kasketes 75G 18Un', true);
INSERT INTO public.tb_produtos VALUES (498, 7.99, 12, '//img.sitemercado.com.br/produtos/2512aead8e2477d8097a5c3e01486cb1ab2bb6f1f301d949277e3850dbfebbcc_mini.jpg', 'Pão de Forma Tradicional Visconti 400G', true);
INSERT INTO public.tb_produtos VALUES (487, 7.59, 6, '//img.sitemercado.com.br/produtos/94f69fe0d3f19864b5c7a403c6a1fc01b4bf203e5d451c4136586886ba6ed733_mini.jpg', 'Cha Mate Real Natural 250G', true);
INSERT INTO public.tb_produtos VALUES (525, 6.79, 12, '//img.sitemercado.com.br/produtos/d82fe4830b2f91d82339dd4f4addbb8c2c13e94518121141ef01bd6d860fb3bb_mini.jpg', 'Mistura para Bolo de Coco Dona Benta 450G', true);
INSERT INTO public.tb_produtos VALUES (526, 13.39, 12, '//img.sitemercado.com.br/produtos/4682de21b9da3de491a7b7d3674ebd488df0403c1023d2905d5b9cb5c1d4e466_mini.jpg', 'Mistura Pão sem Glúten Tradicional Vitao 300G', true);
INSERT INTO public.tb_produtos VALUES (739, 5.69, 1, 'http://fubi.ca/img/image_file_1706303884.webp', 'Quirera Fina de Milho Caldobom 400g', true);
INSERT INTO public.tb_produtos VALUES (527, 13.39, 12, '//img.sitemercado.com.br/produtos/6d98f3396c8eaf067e9c0ba84326e1b78498542efb9952a5395d76e192978879_mini.jpg', 'Mistura para Pão Vitao Sementes e Grãos sem Glúten sem Lactose Embalagem 300G', true);
INSERT INTO public.tb_produtos VALUES (528, 9.05, 12, '//img.sitemercado.com.br/produtos/551a378f6e9465cf6af2db3a758ada274f699d439749453af3756c56d0db8cba_mini.jpg', 'Mistura para Bolo Integral Frutas e Grãos Magro 200G', true);
INSERT INTO public.tb_produtos VALUES (529, 24.99, 12, '//img.sitemercado.com.br/produtos/89e084290fc1c28240289df027ff591ad4941c7bf4b34dc0000a46cbf0add232_mini.jpg', 'Mistura para Panqueca Americana Fru Fruta 300G', true);
INSERT INTO public.tb_produtos VALUES (531, 7.19, 13, '//img.sitemercado.com.br/produtos/2524f20e638d1e1cd355948846d70c9ecbf4e056b21d5b78fe0b2f8e7205f6c4_mini.jpg', 'Saco Freezer Giopack 2Kg 100Un', true);
INSERT INTO public.tb_produtos VALUES (532, 6.77, 13, '//img.sitemercado.com.br/produtos/6fc3a9fc9beee22bee72177eee3679fe6774a537b4aef60a0b3d20f7f6447302_mini.jpg', 'Filme Pvc Giopack 28Cm X 30M Rolo 1 Un', true);
INSERT INTO public.tb_produtos VALUES (533, 8.19, 13, '//img.sitemercado.com.br/produtos/c9d571f14ea0b53e7cb55b086a7f84174b5ec7b2616efb399ee308516c79ba63_mini.jpg', 'Saco Plástico para Freezer Giopack 3Kg Rolo 100Un', true);
INSERT INTO public.tb_produtos VALUES (534, 4.49, 13, '//img.sitemercado.com.br/produtos/49849cc33ff774167d5bfe6711634e3a22e6399fdb3d6c423e0cff72bece7dd8_mini.jpg', 'Filtro de Papel Grande N°103 Bom Jesus 30Un', true);
INSERT INTO public.tb_produtos VALUES (535, 6.85, 13, '//img.sitemercado.com.br/produtos/d5ffb78844043c332fa39eec8df00c927c8e2aa349aecc96ff502013799367aa_mini.jpg', 'Papel Alumínio Giopack 45Cm Embalagem 4M', true);
INSERT INTO public.tb_produtos VALUES (536, 4.89, 13, '//img.sitemercado.com.br/produtos/051e37bace8acf21d2f05470fdece7a090221e58b7edaf985dc2d172ec0dd428_mini.jpg', 'Filtro Papel Melitta 102 C/30', true);
INSERT INTO public.tb_produtos VALUES (537, 10.49, 13, '//img.sitemercado.com.br/produtos/38182656c695f3d007f2e7fecf97901a04505701ff0cad7bfaf3a048bedc08dc_mini.jpg', 'Saco Plástico Giopack 5Kg Embalagem 100Un', true);
INSERT INTO public.tb_produtos VALUES (538, 24.9, 13, '//img.sitemercado.com.br/produtos/25d5032a2c11c35c19f9071fb76b6d3d0dac8cc6a5464155c8d6102f12390c6f_mini.jpg', 'Flor Rosa do Deserto P15 Unidade', true);
INSERT INTO public.tb_produtos VALUES (539, 24.9, 13, '//img.sitemercado.com.br/produtos/958571b3265ac517e6c9fb24f939b604153c82dff1c23a8cdeff786b53b1926f_mini.jpg', 'Flor Rosa do Deserto P15 1Un', true);
INSERT INTO public.tb_produtos VALUES (540, 3.39, 13, '//img.sitemercado.com.br/produtos/a88151b2140ff85780dffa348c08cfd3afae37782e17e92d0454ad9b3517beb8_mini.jpg', 'Suculentas P06', true);
INSERT INTO public.tb_produtos VALUES (759, 14.89, 16, 'http://fubi.ca/img/image_file_1706306219.webp', 'Ração Telo Gatos Carne e Cerais Adultos 1kg', true);
INSERT INTO public.tb_produtos VALUES (541, 9.39, 13, '//img.sitemercado.com.br/produtos/30f9916dc4b8af5dc579955170d0e267ca059be2dbf4dc232233cadff03faca8_mini.jpg', 'Flor da Fortuna Kalanchoe P11 A1', true);
INSERT INTO public.tb_produtos VALUES (542, 9.39, 13, '//img.sitemercado.com.br/produtos/760d404344bf70e9167c6ef1dc2fb80c3d71e5efa2858d30b062647379013baf_mini.jpg', 'Flor Kalanchoe Dobrado P11', true);
INSERT INTO public.tb_produtos VALUES (543, 53.9, 13, '//img.sitemercado.com.br/produtos/59260b2eb00e3d9e549b37a5c7c45e1ddc29c220d5523ccc4bdd3fd8d8d249ef_mini.jpg', 'Phalaenopsis P12 2 Hastes', true);
INSERT INTO public.tb_produtos VALUES (544, 15.89, 13, '//img.sitemercado.com.br/produtos/e591d42b57bc2140504a6d5ac80a3f05eba1ff3ac9a92d5ad6882a55dbb0bbd9_mini.jpg', 'Flor Dracena Lucky Bamboo', true);
INSERT INTO public.tb_produtos VALUES (545, 19.99, 13, '//img.sitemercado.com.br/produtos/87dcaf93f8626e5c78eebe7fbd3252eac2839e8a86e60c9bae62375d11bdcb89_mini.jpg', 'Palmeira Chamaedora Elegans P11 1 Un', true);
INSERT INTO public.tb_produtos VALUES (546, 36.39, 13, '//img.sitemercado.com.br/produtos/b485bfe53219a8f0487f0d2767fa07a74d7a3806b490543f45e81239429bcd39_mini.jpg', 'Tigela Duralex Facilita Retangular 750Ml 1 Unidade', true);
INSERT INTO public.tb_produtos VALUES (547, 3.75, 13, '//img.sitemercado.com.br/produtos/0f7a955f0d982e40e4f32a0866c7e33cfe9cc971bf1297a97fe81f0a40fe5bc6_mini.jpg', 'Fósforo Forno e Fogão Paraná 200 Palitos', true);
INSERT INTO public.tb_produtos VALUES (548, 3.95, 13, '//img.sitemercado.com.br/produtos/3387ea1186a3e77c6451eec34bc73dd2d8564219df7511b33b73cd65458b3fb1_mini.jpg', 'Fósforo de Cozinha Fiat Lux 200 Palitos', true);
INSERT INTO public.tb_produtos VALUES (549, 153.9, 13, '//img.sitemercado.com.br/produtos/8c3e8534463d8da171c60f82846c0f4d52d5fc7d9eb6903a8440b24a05578861_mini.jpg', 'Garrafa de Inox Térmica Lumina Termolar Unidade 1L', true);
INSERT INTO public.tb_produtos VALUES (550, 9.49, 13, '//img.sitemercado.com.br/produtos/b5634462bcbb8f1fe42f5fcd00abdbd0dc2a5cfe226385dcff2ea6fa27d51187_mini.jpg', 'Copo Nadir Brooklyn 330Ml Long Drink', true);
INSERT INTO public.tb_produtos VALUES (551, 75.9, 13, '//img.sitemercado.com.br/produtos/8f896263814a944758c11360ade3ff6082990822e5e2fca56cf286de291fce24_mini.jpg', 'Bule Térmico Exata Preto Tramontina 1L', true);
INSERT INTO public.tb_produtos VALUES (552, 45.9, 13, '//img.sitemercado.com.br/produtos/ff05a8113c7748a36436080387820fac3cbc325ab9ed362db1a78d2424ad1502_mini.jpg', 'Garrafa Térmica Gostar Preta Sanremo 750Ml', true);
INSERT INTO public.tb_produtos VALUES (553, 36.39, 13, '//img.sitemercado.com.br/produtos/16c938950d786aa98f95b00f1f3f527ef6ff8e88ff85aaef901f948349f4220d_mini.jpg', 'Tigela Marinex Facilita Vap com Tampa Unidade 750Ml', true);
INSERT INTO public.tb_produtos VALUES (554, 13.49, 13, '//img.sitemercado.com.br/produtos/4eb19ec16596a7eb282461d6af57043f27ad283c5cedb696f222fb8fdcc69014_mini.jpg', 'Super Bonder Precisão Loctite 5G', true);
INSERT INTO public.tb_produtos VALUES (555, 29.39, 13, '//img.sitemercado.com.br/produtos/114a4a5e0cde9c0e5510f9eee3d7b19beea5624f16b7e10deda55707ee0cd330_mini.jpg', 'Pilha Alcalina Palito Duracell com 4Un', true);
INSERT INTO public.tb_produtos VALUES (556, 19.9, 13, '//img.sitemercado.com.br/produtos/6a5bc2695d5e594718f2fd682a644b840102510c50692698cfe48de536cad92c_mini.jpg', 'Fita de Reparos 3M 45Mm Silver Tape Unidade 5M', true);
INSERT INTO public.tb_produtos VALUES (557, 14.99, 13, '//img.sitemercado.com.br/produtos/0ddb73f7852d0ce5a7effc4b96c986fcae768e204fac9d1b5ee7117618b430e1_mini.jpg', 'Pilha Alcalina Aaa Mn 2400B2 1,5V Duracell 2Un', true);
INSERT INTO public.tb_produtos VALUES (558, 9.99, 13, '//img.sitemercado.com.br/produtos/82527fef3eba94fdf053aa6b35531db9e77c5982f123f3b357221175f4c62140_mini.jpg', 'Lâmpada Led Ph Branca 806Lm 9W', true);
INSERT INTO public.tb_produtos VALUES (559, 12.39, 13, '//img.sitemercado.com.br/produtos/f4eb62af1fd41321facf3e9f9076dab90228b3150809b030876832bb8ee333c3_mini.jpg', 'Cola Durepoxi 100G', true);
INSERT INTO public.tb_produtos VALUES (560, 15.69, 13, '//img.sitemercado.com.br/produtos/2504bcd08d89e3db6c724ae13762276dd422d95c64e92a06093bc8d93fe78591_mini.jpg', 'Pilhas Duracell Alcalina Aa 2Un', true);
INSERT INTO public.tb_produtos VALUES (561, 8.59, 13, '//img.sitemercado.com.br/produtos/0ebb12166015e2c81a4e9ba538aba65d7ca68555438f722a3701b1f0e301d108_mini.jpg', 'Adesivo Instantâneo Vonder 20G', true);
INSERT INTO public.tb_produtos VALUES (562, 14.59, 13, '//img.sitemercado.com.br/produtos/e988f192c7048a9a7a31a5df1fd5357d161748d0729cc659c7017f0d725e4299_mini.jpg', 'Escova Prime Grill Limpa Grelhas', true);
INSERT INTO public.tb_produtos VALUES (563, 5.14, 13, '//img.sitemercado.com.br/produtos/c69a9dd8e4c2588d26efe7c39660f78f0e82aff40046f808ec2a54c9e2d110f0_mini.jpg', 'Isqueiro Bic Mini', true);
INSERT INTO public.tb_produtos VALUES (564, 4.99, 13, '//img.sitemercado.com.br/produtos/62844750642b5f67ac6bc9b250a0d9c07108211f043666de69c903f4eecc3386_mini.jpg', 'Palito Bambu Paraná Embalagem 50 Un', true);
INSERT INTO public.tb_produtos VALUES (1056, 38.99, 3, NULL, 'Coxao Mole kg', true);
INSERT INTO public.tb_produtos VALUES (1063, 14.99, 3, NULL, 'Peito Frango kg', true);
INSERT INTO public.tb_produtos VALUES (1064, 7.19, 3, NULL, 'Coxa Dorsal kg', true);
INSERT INTO public.tb_produtos VALUES (1069, 24.99, 3, NULL, 'Costelinha kg', true);
INSERT INTO public.tb_produtos VALUES (565, 110.9, 13, '//img.sitemercado.com.br/produtos/afd66b063345d59bdcd6c40b8e765c9aa7ebdfa4536e57b2efe6881291b8cb23_mini.jpg', 'Grelha Inox Moeda 38X48cm Utimil', true);
INSERT INTO public.tb_produtos VALUES (566, 5.29, 13, '//img.sitemercado.com.br/produtos/6b7e33532a13e70bf286a8df3beb43818db5ccc6e6cda04aba0ac7b79d76cd4b_mini.jpg', 'Acendedor para Churrasqueira Bastão Fiat Lux 5Un', true);
INSERT INTO public.tb_produtos VALUES (567, 78.9, 13, '//img.sitemercado.com.br/produtos/fd998a742a61d93ba9e23833fae5fe7967fa243a67d9af8ad6e6b226dd77218d_mini.jpg', 'Tábua de Madeira para Churrasco Stolf Un', true);
INSERT INTO public.tb_produtos VALUES (568, 33.9, 13, '//img.sitemercado.com.br/produtos/bb566d31e84b5da4927751e80fcc64c496913d9c7e300894ead417db0f0c0bea_mini.jpg', 'Faca Tramontina Inox Carne 8''Embalagem 1Un Ref 22938/108', true);
INSERT INTO public.tb_produtos VALUES (570, 2.79, 13, '//img.sitemercado.com.br/produtos/c95cfdf56ef12d44dcca36947ff37e5599ccfb0a443418a8c14ed09c57ab4430_mini.jpg', 'Fósforo Ecológico Gigante Paraná 50Un', true);
INSERT INTO public.tb_produtos VALUES (571, 17.69, 13, '//img.sitemercado.com.br/produtos/89dce88c27f24d26f14b303fdc1c57187fdeff6e15806bc4257018bef7660565_mini.jpg', 'Rolo Adesivo Refil Scotch Brite 21 Folhas', true);
INSERT INTO public.tb_produtos VALUES (572, 35.29, 13, '//img.sitemercado.com.br/produtos/e862496f65d6d36634c843df8bacf5d54c1902ebf69be6b6df111069a174484f_mini.jpg', 'Pote de Cerâmica Heart Branco 12X10x10cm Lyor', true);
INSERT INTO public.tb_produtos VALUES (573, 169.9, 13, '//img.sitemercado.com.br/produtos/0d679259b2d0bd812870363fd8b9ffb21b06d09334c2a57fad4dfb056299d445_mini.jpg', 'Tábua para Passar Roupa Dobrável Utimil 1,20M X 35Cm Unidade', true);
INSERT INTO public.tb_produtos VALUES (574, 4.69, 13, '//img.sitemercado.com.br/produtos/f85e76f2d6813667f0c1e9fec751ebe84d0fdaba3119fc357fa580480a5b0aa8_mini.jpg', 'Filtro para Bomba Chimarrão Chimarrita 2 Unidade', true);
INSERT INTO public.tb_produtos VALUES (575, 32.9, 13, '//img.sitemercado.com.br/produtos/b21d27dc83c29e3cf8394cae310c37a18ed6c0bf3394175993a86d4fe0752e67_mini.jpg', 'Porta Sabão Sanremo Ref 267 Unidade 2,35 Litros', true);
INSERT INTO public.tb_produtos VALUES (576, 72.9, 13, '//img.sitemercado.com.br/produtos/8c89b94fac4fe3769251e33120c20c64bcbb3ebd87c32648fd4b3330d50b74f3_mini.jpg', 'Cesto Sanremo', true);
INSERT INTO public.tb_produtos VALUES (577, 29.9, 13, '//img.sitemercado.com.br/produtos/1445c89b6f10876a2892b1974f5a1edb172482f4cb03c1f97440d7445dd852b5_mini.jpg', 'Conjunto de Cabides Primafer Cristal Embalagem Leve 6 Un Pague 5 Un', true);
INSERT INTO public.tb_produtos VALUES (578, 31.9, 13, '//img.sitemercado.com.br/produtos/6b24a9b079b2827c87f48e62249c819543aed47bb692bbd63841e443d9451e1c_mini.jpg', 'Óleo para Motor Ipiranga Moto 4T Sae 10W30 Embalagem 1L', true);
INSERT INTO public.tb_produtos VALUES (579, 31.9, 13, '//img.sitemercado.com.br/produtos/c64f3dba56b89e8ef057b15e0acc9b24b81074c613b784df0cf36ace5710b222_mini.jpg', 'Óleo para Motor Ipiranga Moto Performance 4T 10W30 Embalagem 1L', true);
INSERT INTO public.tb_produtos VALUES (580, 6.59, 14, '//img.sitemercado.com.br/produtos/aa9c4c71a8dfa39453f05581b8a0ac82975bcbf378cd08bbfa60ea0c2d99c2f2_mini.jpg', 'Álcool Nobre Embalagem 1 Litro', true);
INSERT INTO public.tb_produtos VALUES (582, 10.9, 14, '//img.sitemercado.com.br/produtos/51e2e10efba2c17d610018f36e5864ab609a7c3299dc29262915f06b7cdb68f3_hero_mini.jpg', 'Multiuso Cremoso Original Cif 250Ml', true);
INSERT INTO public.tb_produtos VALUES (583, 19.29, 14, '//img.sitemercado.com.br/produtos/73b95cf7d42c670438b82ee0637cba4cc1a943eeac17bd937a41f07fe7720411_hero_mini.jpg', 'Multiuso Cremoso Original Cif 450Ml', true);
INSERT INTO public.tb_produtos VALUES (584, 11.59, 14, '//img.sitemercado.com.br/produtos/e57b711e8650540f929fecb9c66b06173c983f8466ccbbee0c0a778530b1be9d_hero_mini.jpg', 'Desinfetante de Lavanda Ypê 2L', true);
INSERT INTO public.tb_produtos VALUES (585, 8.89, 14, '//img.sitemercado.com.br/produtos/aa9314c8cc2022ed5ad11220bc33d019db52c6b8e62c591b13c5d31f44b3b297_mini.jpg', 'Lustra-Móveis Lavanda Peroba 200Ml', true);
INSERT INTO public.tb_produtos VALUES (586, 10.79, 14, '//img.sitemercado.com.br/produtos/7b73b734d49bd9c7010a132602daf8acfd81264d28ca5e95960178b31dace612_mini.jpg', 'Saponéceo Cremoso Classic Sapólio Radium 250Ml', true);
INSERT INTO public.tb_produtos VALUES (587, 5.99, 14, '//img.sitemercado.com.br/produtos/7f19df90cc7da32ba68e7ea324d5e2dc8b7a8c8bc94d4104bcb4d6aa5879b4dd_mini.jpg', 'Limpador Multiuso Original Gold Veja 500ml', true);
INSERT INTO public.tb_produtos VALUES (588, 7.4, 14, '//img.sitemercado.com.br/produtos/9fa792003e11ccb2ba8a4386505701fc475c7e3a70105a0288ac25c8f97cb4ce_hero_mini.jpg', 'Esponja Dupla Fac Scotch Brite L4p3', true);
INSERT INTO public.tb_produtos VALUES (589, 13.9, 14, '//img.sitemercado.com.br/produtos/9dbfd445ea3628859f97ef32db624a2492828dc001a2219777d31340f82baf69_mini.jpg', 'Saco de Lixo Brilhus Rolo 30 Unidades 50L', true);
INSERT INTO public.tb_produtos VALUES (590, 14.89, 14, '//img.sitemercado.com.br/produtos/09dc630ff93e9cf2c5912eceb46ad6f35f9fa1696ca16cdb7f887ff2df1c2471_mini.jpg', 'Detergente Líquido Limpol Neutro Leve + Pague - com 6 Unidades 500Ml', true);
INSERT INTO public.tb_produtos VALUES (591, 2.69, 14, '//img.sitemercado.com.br/produtos/cf35523b31243c4a36079b5c4db41d6f7c53f2dfc6203658c04fe99b8021eb3b_mini.jpg', 'Detergente Líquido Cristal Limpol 500Ml', true);
INSERT INTO public.tb_produtos VALUES (592, 2.69, 14, '//img.sitemercado.com.br/produtos/7ac70d491d82cbd6e07bdae1a3fb7ac28b040b143927f3ea158d14eaeef281c5_mini.jpg', 'Detergente Líquido Neutro Limpol 500Ml', true);
INSERT INTO public.tb_produtos VALUES (593, 30.89, 14, '//img.sitemercado.com.br/produtos/04fcaa4f40426b9735673cd84464242378f551dec16dd0e4b7161237e51bab76_hero_mini.jpg', 'Secador Abrilhantador para Lava Louças Finish 250ml', true);
INSERT INTO public.tb_produtos VALUES (594, 29.39, 14, '//img.sitemercado.com.br/produtos/78634537d358896b568f10b7baec9a794826e6aa89443c2e0690d8674d5014b9_mini.jpg', 'Detergente Tablete para Máquina de Lavar Louças Finish Powerball Pouch 138G', true);
INSERT INTO public.tb_produtos VALUES (595, 5.9, 14, '//img.sitemercado.com.br/produtos/c4498ede3cd9165c7b9ccc371d8eabf7c7ce10686f125e306e5f5568e4ad3a28_hero_mini.jpg', 'Detergente Limpol Gel Aloe Vera - Leve 511G Pague 411G', true);
INSERT INTO public.tb_produtos VALUES (596, 24.59, 14, '//img.sitemercado.com.br/produtos/545e563612c8432c838a94db504977735c754ce7260cdfeb46f437e6f11e121f_mini.jpg', 'Detergente Líquido Neutro Limpol 5L', true);
INSERT INTO public.tb_produtos VALUES (597, 6.19, 14, '//img.sitemercado.com.br/produtos/efc46ba374b4374071e7a5f4cf9b141122c3cb096ad21db4ed1f62aa1f59dc6f_mini.jpg', 'Pasta Multiuso Cristal Rosa 500G', true);
INSERT INTO public.tb_produtos VALUES (598, 33.99, 14, '//img.sitemercado.com.br/produtos/060a1f1e06e24eefc163a1d56602e275f4e3491600fe600ef1fd3885239369d7_hero_mini.jpg', 'Sabão em Pó Lavagem Perfeita Omo 2,2Kg', true);
INSERT INTO public.tb_produtos VALUES (599, 27.69, 14, '//img.sitemercado.com.br/produtos/5b297c27c3b32ab91ef91af3d686d6870042fdf23c49b96ba24d74d11f750f23_mini.jpg', 'Amaciante de Roupa Concentrado Brisa de Verão Leve 1,5L Pague 1,25L Downy', true);
INSERT INTO public.tb_produtos VALUES (600, 22.57, 14, '//img.sitemercado.com.br/produtos/96adf31450f618ac5af2bfdfc3f880fdc397f0762e5e01919717180aab4fb6d5_hero_mini.jpg', 'Sabão em Pó Lavagem Perfeita Omo 1,6Kg', true);
INSERT INTO public.tb_produtos VALUES (601, 14.79, 14, '//img.sitemercado.com.br/produtos/e0f6c1c13d73dd3076655de99c80b15d538d4588df2de1f9f5ea39c6d79bfb67_mini.jpg', 'Sabão em Barra Glicerinado Neutro Ypê 180G 5Un', true);
INSERT INTO public.tb_produtos VALUES (602, 11.58, 14, '//img.sitemercado.com.br/produtos/a6269fbb7d3e9bc9b28c8dc691306ac1143e9c70f0c3b257b7a48e7913c02506_mini.jpg', 'Amaciante Ypê Intenso Embalagem 2L', true);
INSERT INTO public.tb_produtos VALUES (603, 13.59, 14, '//img.sitemercado.com.br/produtos/cb977a95f35cd6bc53cbd8e52ee38275dedd05500816a371ecf22fa99019bb06_mini.jpg', 'Amaciante Downy Brisa do Verão 500Ml', true);
INSERT INTO public.tb_produtos VALUES (606, 16.9, 14, '//img.sitemercado.com.br/produtos/bc35e8554838e0bdd48c43ac30b3bee1447219de944fb6b7fd9086c02c506d20_hero_mini.jpg', 'Inseticida Aerosol Ação Total Óleo de Eucalipto Baygon 360Ml', true);
INSERT INTO public.tb_produtos VALUES (607, 16.9, 14, '//img.sitemercado.com.br/produtos/3fc459da503b59d1d63a590b2b1685a9cdaa33051b34027610cd29736a02201d_mini.jpg', 'Inseticida Aerosol Ação Total Baygon 360Ml', true);
INSERT INTO public.tb_produtos VALUES (608, 18.9, 14, '//img.sitemercado.com.br/produtos/99631ebfb2e2df405d4022fc5549f3036f3214ee6528cc9c64fe2cac235abbce_mini.jpg', 'Inseticida Aerossol sem Cheiro Noites Tranquilas Sbp 360ml', true);
INSERT INTO public.tb_produtos VALUES (609, 38.19, 14, '//img.sitemercado.com.br/produtos/e3c5698e68082812b767a49760a9dc91a38727c300fb10cb9d2bca797490bcd1_mini.jpg', 'Inseticida Jimo Cupim Incolor Aerosol 400Ml', true);
INSERT INTO public.tb_produtos VALUES (610, 25.59, 14, '//img.sitemercado.com.br/produtos/51e7b8fe5accbd6cb4a7582cda56af070e13c3e36918d1248e56030f76d1403a_hero_mini.jpg', 'Repelente Elétrico Líquido 45 Noites Raid com 02 Refis de 32,9Ml Cada', true);
INSERT INTO public.tb_produtos VALUES (611, 21.9, 14, '//img.sitemercado.com.br/produtos/7fb7b9778636385b993614c5a22fe2c27344d8c0066d6f3cc6200acd2ebec8f6_hero_mini.jpg', 'Inset Sbp 45 Noites Refil 50%Desc', true);
INSERT INTO public.tb_produtos VALUES (612, 18.9, 14, '//img.sitemercado.com.br/produtos/c325665d0df99587750837322ca569b053d40178480c892a4f9aa9c8deb2331b_mini.jpg', 'Inseticida Aerossol Ação Magnética Base Água Sbp 360ml', true);
INSERT INTO public.tb_produtos VALUES (613, 17.39, 14, '//img.sitemercado.com.br/produtos/33cb55cb6c60d47e020c6570861ca56c7107521ca28106888696df1f4504c2a7_mini.jpg', 'Multi-Inseticida Aerossol Ação Total Pro Mortein 360ml', true);
INSERT INTO public.tb_produtos VALUES (614, 7.19, 14, '//img.sitemercado.com.br/produtos/cb62ef22842e917a8126827d8be8d0d3a86abea30dd2980db3405d95b6ce171e_hero_mini.jpg', 'Pastilha Adesiva Lavanda 20% de Desconto Pato com 3Un', true);
INSERT INTO public.tb_produtos VALUES (615, 6.99, 14, '//img.sitemercado.com.br/produtos/a2d10d3f92d4fad724a9dd8884efe1a2a76b8076b8e990442b0fb497adff1785_mini.jpg', 'Pastilha Sanitária Lavanda Fresca Girando Sol 9G', true);
INSERT INTO public.tb_produtos VALUES (616, 3.59, 14, '//img.sitemercado.com.br/produtos/d301403acbac440e3b7683dd2ba3585cf95879b2d1b0632c5c8b04f2a3882598_hero_mini.jpg', 'Pedra Sanitária Aroma Plus Citrus Harpic 20g', true);
INSERT INTO public.tb_produtos VALUES (617, 14.99, 14, '//img.sitemercado.com.br/produtos/c051edbce0984376da2c99c4503d9ba8653bcc9894dc0593bb8e82b795d54edf_hero_mini.jpg', 'Gel Adesivo Sanitário Refil Marine Pato com 6Un', true);
INSERT INTO public.tb_produtos VALUES (618, 49.9, 14, '//img.sitemercado.com.br/produtos/77a7ff4e8398ff75b156dee1f23df6dccfd0956aceaa102514701cce7dc26508_hero_mini.jpg', 'Aromatizador Bom Ar Spray Automático Freshmatic Refil 250ml 50% Off Na 2ª Unidade Campos de Lavanda', true);
INSERT INTO public.tb_produtos VALUES (619, 20.9, 14, '//img.sitemercado.com.br/produtos/970f386c513aba4f78408f38a45f79a5ab8bab1a5a1af3fd1d35fab5e7b5e7c5_mini.jpg', 'Gel Adesivo Lavanda Oferta Refil Pato 38G com 2Un', true);
INSERT INTO public.tb_produtos VALUES (760, 11.89, 16, 'http://fubi.ca/img/image_file_1706306252.webp', 'Ração Billy Dog Ossinho Carne Adultos 1kg', true);
INSERT INTO public.tb_produtos VALUES (620, 16.9, 14, '//img.sitemercado.com.br/produtos/7973f81b177a17747365489f532e758efab7fe7b5b773fdf1e267eaa487900eb_mini.jpg', 'Bloco Sanitário Caixa Acoplada Lavanda Fresca Girando Sol 35G com 2Un', true);
INSERT INTO public.tb_produtos VALUES (621, 28.15, 14, '//img.sitemercado.com.br/produtos/7a79873d0e6eb5c4a14a085d9eacce6d42cedf31be4fabb5e9e091a3e8be537b_hero_mini.jpg', 'Aromatizador de Ambientes Lavanda e Baunilha Oferta Spray Glade 269Ml', true);
INSERT INTO public.tb_produtos VALUES (622, 26.99, 15, '//img.sitemercado.com.br/produtos/8810aebfa15284b8e7b25f31d0c121b56e3fdb580a6a8247cc4df1d8588f5510_mini.jpg', 'Papel Higiênico Folha Dupla Neutro Vip 30m Personal Leve 16 Pague 15 Rolos', true);
INSERT INTO public.tb_produtos VALUES (623, 2.59, 15, '//img.sitemercado.com.br/produtos/afe3c1404cce67c4fd93f018cf0ad1834e389e282e02471577d3de8e103a05ca_mini.jpg', 'Haste Flexível Cottonbaby 75Un', true);
INSERT INTO public.tb_produtos VALUES (624, 19.89, 15, '//img.sitemercado.com.br/produtos/04af9b2ee1f2736944acc72db152f4d2817ae395879ff608eae625a05520eeda_mini.jpg', 'Papel Higiênico Prime Folha Tripla 20M Mili com 12 Rolos', true);
INSERT INTO public.tb_produtos VALUES (625, 7.29, 15, '//img.sitemercado.com.br/produtos/660f4b8855232547a86b25fed73f57aa82c67456b662388f8021a898f28221f7_mini.jpg', 'Hastes Flexíveis Johnsons 75Un', true);
INSERT INTO public.tb_produtos VALUES (626, 30.49, 15, '//img.sitemercado.com.br/produtos/8ddb14c5a5529a1f67b241c082df31fd893949877f6b2942f47807aa42b929eb_mini.jpg', 'Papel Higienico Mili Soft Comfort 18Un 30M', true);
INSERT INTO public.tb_produtos VALUES (627, 9.39, 15, '//img.sitemercado.com.br/produtos/6df34b36ceabf5d7e8c1c19d8a61f51cfa06c4f14ff579c3925eff361245ce79_mini.jpg', 'Absorvente Noturno Suave com Abas Mili 16Un', true);
INSERT INTO public.tb_produtos VALUES (628, 23.49, 15, '//img.sitemercado.com.br/produtos/be532048ae3562b34000e4f7544fbd7c17f7a92cc1819f73bd4da8f3bfca6672_mini.jpg', 'Papel Higiênico Folha Dupla Neutro Fofinho Leve 16 e Pague 15Un', true);
INSERT INTO public.tb_produtos VALUES (930, 15.99, 6, 'http://fubi.ca/img/image_file_1706380691.webp', 'Cachaca Velho Barreiro 910ml', true);
INSERT INTO public.tb_produtos VALUES (629, 8.59, 15, '//img.sitemercado.com.br/produtos/48d38debaedf0bf6bee1b9b5e018a19e4d02135887dc07a1a464f02e216b03b6_mini.jpg', 'Algodão Condor Disco com 60 Unidades', true);
INSERT INTO public.tb_produtos VALUES (630, 2.19, 15, '//img.sitemercado.com.br/produtos/93e9a411b78ec3071d6caf68a1ab58dde4d33b2b20115d79554f1f44f895376e_mini.jpg', 'Sabonete em Barra Perfumes da Natureza Frutas Vermelhas Albany 85G', true);
INSERT INTO public.tb_produtos VALUES (632, 17.99, 15, '//img.sitemercado.com.br/produtos/58cf67de56fb646e1d4f64171f6ad7ad1825e7961893c115f47593cf2e019a72_mini.jpg', 'Sabonete Nivea Leite 85g Oferta 6un', true);
INSERT INTO public.tb_produtos VALUES (633, 3.19, 15, '//img.sitemercado.com.br/produtos/2608642d8a564f67b0dd802e12ad5847aab233ac160763742855e69c94ed5391_hero_mini.jpg', 'Sabonete de Baunilha Nivea 85g', true);
INSERT INTO public.tb_produtos VALUES (634, 3.19, 15, '//img.sitemercado.com.br/produtos/27a53fcf22836259b1bf137cbcba830a761044a54ed50ee0ad29575dda5bedc0_hero_mini.jpg', 'Sabonete de Orquidea Nivea 85g', true);
INSERT INTO public.tb_produtos VALUES (635, 9.09, 15, '//img.sitemercado.com.br/produtos/5528606f5fc167e5c675775156ba497dea4e2f2355fdb190ccf2ff6f4ce1caef_mini.jpg', 'Talco Antisséptico Perfumado Barla Embalagem 140G', true);
INSERT INTO public.tb_produtos VALUES (636, 3.19, 15, '//img.sitemercado.com.br/produtos/fb6d281591e4d367536a88d6bebec5789deddfd9130258eb6b873c83edcc9a9c_hero_mini.jpg', 'Sabonete em Barra Leite Nivea 85g', true);
INSERT INTO public.tb_produtos VALUES (637, 28.39, 15, '//img.sitemercado.com.br/produtos/9cd0a38c7b58ed083077f0e3c3c80f33cf83b563131505650dfb63d5348430cd_hero_mini.jpg', 'Repelente Sbp Advanced Spray Oferta 100ml', true);
INSERT INTO public.tb_produtos VALUES (638, 3.08, 15, '//img.sitemercado.com.br/produtos/d6bd7cbedef186268121dec182eee4be79b0214acf935668d4c404cb8e09ccb4_mini.jpg', 'Creme Dental Menta Suave Oral-B 1-2-3 70G', true);
INSERT INTO public.tb_produtos VALUES (639, 4.99, 15, '//img.sitemercado.com.br/produtos/1decca3ed72796a19e56cc0664ace6cbf9e5587823949c5f1d57dc897180e634_hero_mini.jpg', 'Creme Dental Colgate Trip Acao 90G Original', true);
INSERT INTO public.tb_produtos VALUES (640, 10.19, 15, '//img.sitemercado.com.br/produtos/702e6277326a92061b6d32254d6373cd185f17d6c059a49691a22c1c519e5bdb_hero_mini.jpg', 'Creme Dental Advance Total 12 Colgate 90G', true);
INSERT INTO public.tb_produtos VALUES (641, 14.9, 15, '//img.sitemercado.com.br/produtos/1c8937c9c82d0712db51ebbf1c57673d05bf34c599ed43706ec9fbfbc41559b0_mini.jpg', 'Fio Dental Essencial Johnson & Johnson100m', true);
INSERT INTO public.tb_produtos VALUES (631, 5.99, 15, '//img.sitemercado.com.br/produtos/94af4e421a16cb5546a32f6124d146806044f7e6dfa1e69ff550df933cb751b2_hero_mini.jpg', 'Sabonete em Barra Original Dove 90G', true);
INSERT INTO public.tb_produtos VALUES (642, 10.19, 15, '//img.sitemercado.com.br/produtos/0be47484d5228146348c90fd074c502ecaa5e7f75b73795cb11256afa9e0203a_hero_mini.jpg', 'Creme Dental Total 12 Clean Mint Colgate 1Un 90G', true);
INSERT INTO public.tb_produtos VALUES (643, 28.59, 15, '//img.sitemercado.com.br/produtos/310e145ac3a4780b80e2d64c7b999e1f77c58fa92bd386becbef28f8b45e699f_hero_mini.jpg', 'Kit Creme Dental para Sensibilidade Sensitive Pro Alívio Imediato Original Colgate 90G com 3Un', true);
INSERT INTO public.tb_produtos VALUES (644, 10.19, 15, '//img.sitemercado.com.br/produtos/a7253aa4a2c228dd7097c28b09150e35911793562127e0c5cda33ad6a4e68dde_mini.jpg', 'Creme Dental Total12 Carvão Ativado Colgate 90G', true);
INSERT INTO public.tb_produtos VALUES (645, 24.48, 15, '//img.sitemercado.com.br/produtos/e86a04f7bbc5b90592771a68e665a6d8cb9952307d299473f19a0c9a41cc025a_hero_mini.jpg', 'Enxaguante Bucal Cool Mint Listerine 500Ml', true);
INSERT INTO public.tb_produtos VALUES (646, 15.9, 15, '//img.sitemercado.com.br/produtos/0d8b9ffaae6f29e324a63a036c616dbf21e1e458340ea4c264559f9c4d59601d_mini.jpg', 'Tinta de Cabelo Iluminadas do Brasil 6.35 Castanho Caramelo Cor & Ton', true);
INSERT INTO public.tb_produtos VALUES (647, 15.9, 15, '//img.sitemercado.com.br/produtos/0173246752b6c489544c11211cb84359247c611fde5f3f6d17a9b885ab427481_mini.jpg', 'Leave In de Tratamento Cicatri Renov Elseve Reparação Total 5+ Loréal Paris 50Ml', true);
INSERT INTO public.tb_produtos VALUES (648, 9.9, 15, '//img.sitemercado.com.br/produtos/ccb569914ccff7f0b93ba239da156a0feea56f7b66f05b2a9bf08ba3ab7b84bf_mini.jpg', 'Shampoo Naturre Camomila 300Ml', true);
INSERT INTO public.tb_produtos VALUES (649, 28.9, 15, '//img.sitemercado.com.br/produtos/c2ee180dc28417e70ed816d86db7b2a6796e38f6f6ad2a4962d8e1404b6210db_mini.jpg', 'Kit Hidra Hialurônico Shampoo 375Ml + Condicionador 170Ml + Sachê Revitalift Hialurônico Elseve', true);
INSERT INTO public.tb_produtos VALUES (650, 26.49, 15, '//img.sitemercado.com.br/produtos/1b96ae8e60422605e5e12477740ee806d3b51e058aef75c05df9212ed87f4e44_mini.jpg', 'Kit Reconstrução Shampoo 350ml + Condicionador 175ml Dove', true);
INSERT INTO public.tb_produtos VALUES (651, 24.95, 15, '//img.sitemercado.com.br/produtos/501b255a271b3a8177393a650696eea75a27e25d8f19f53b910fee383450092b_mini.jpg', 'Kit Shampoo 350ml + Condicionador 175ml Blindagem Antifrizz Tresemmé', true);
INSERT INTO public.tb_produtos VALUES (652, 24.69, 15, '//img.sitemercado.com.br/produtos/8b580ff80a314136cbe294e415ecb13166ac437c875eed0786625407b846a711_hero_mini.jpg', 'Kit de Shampoo 325Ml + Condicionador Ceramidas 325Ml Seda', true);
INSERT INTO public.tb_produtos VALUES (653, 24.95, 15, '//img.sitemercado.com.br/produtos/fd2d34a242043a23d0299ed5883ff4dd0f85b5bbe271fccbd8367b481c77c716_mini.jpg', 'Kit Hidratação Profunda Shampoo + Condicionador Tresemmé 350ml + 175ml', true);
INSERT INTO public.tb_produtos VALUES (654, 6.09, 15, '//img.sitemercado.com.br/produtos/3e8e37bc447ea6a501f9e9277f883fc4e81310e90b1032beb1e859f321ff0a46_mini.jpg', 'Acetona Farmax 100Ml', true);
INSERT INTO public.tb_produtos VALUES (655, 21.19, 15, '//img.sitemercado.com.br/produtos/e065b169a3240f90e6c66e4f7d83bd1409039f314b759e967534eb27530b75ed_mini.jpg', 'Removedor de Esmalte À Base de Acetona Farmax 500Ml', true);
INSERT INTO public.tb_produtos VALUES (656, 4.98, 15, '//img.sitemercado.com.br/produtos/c10c9dac04fc094082f5e04e525dc90985c3afa0ed866c3f354c5762c2a5935e_mini.jpg', 'Esmalte Tratamento Incolor Impala 7,5Ml', true);
INSERT INTO public.tb_produtos VALUES (657, 4.98, 15, '//img.sitemercado.com.br/produtos/50f6a230d4b73af43da948d3aee217be655c4e27b2fd111d3e79529ceb9b2f37_mini.jpg', 'Esmalte Perolado Sonho Impala 7,5Ml', true);
INSERT INTO public.tb_produtos VALUES (658, 4.98, 15, '//img.sitemercado.com.br/produtos/c59b260d1a70ee7d3bc87cac0318922c2c2897765a8e020e59e64dd58cf57aa7_mini.jpg', 'Esmalte Impala Cremoso Preto Embalagem 7,5Ml', true);
INSERT INTO public.tb_produtos VALUES (659, 10.89, 15, '//img.sitemercado.com.br/produtos/020497d9117e86c3b53facee443f7a66a48ef4c990f7ef7e053b04a5ae1839d7_mini.jpg', 'Removedor Esmalte Ap Eco Lutex Embalagem 100Ml', true);
INSERT INTO public.tb_produtos VALUES (660, 12.99, 15, '//img.sitemercado.com.br/produtos/67be0b0cfab008e7a93f5f9da84a90a89c92581f6a69bd915e46e95f018d1508_mini.jpg', 'Talco para Pés Canforado Tenys Pé 100G', true);
INSERT INTO public.tb_produtos VALUES (661, 6.79, 15, '//img.sitemercado.com.br/produtos/8c187d3d6a024b7ea41582cac736c5a30261f8b469612e0c8dbac63fd098f879_mini.jpg', 'Esmalte Escuro Cremoso Preto Sépia Risqué 8Ml', true);
INSERT INTO public.tb_produtos VALUES (662, 66.9, 15, '//img.sitemercado.com.br/produtos/3cb2b1849660b05280e7a6a1a0c8da06d7c7f9b497a2e2ae17ca5f16d68c5cd3_mini.jpg', 'Fralda Ultrasec Galinha Pintadinha Hiper Xg Babysec 60Un', true);
INSERT INTO public.tb_produtos VALUES (663, 12.99, 15, '//img.sitemercado.com.br/produtos/5c6d67d770abac570b80a6b5b318ba52731ace788267517366361bc686eb83d9_mini.jpg', 'Sabonete Líquido Kids Slime Tutti Frutti Premisse 500Ml', true);
INSERT INTO public.tb_produtos VALUES (664, 6.39, 15, '//img.sitemercado.com.br/produtos/c96e42c19fb20ac0e9101ddc10763e4919d7bd5c858d862c8b6c3a5a9bf226e9_hero_mini.jpg', 'Sabonete Infantil Tradicional Granado 90G', true);
INSERT INTO public.tb_produtos VALUES (665, 4.19, 15, '//img.sitemercado.com.br/produtos/9cb1ed28e4db7ffccc51226ff1cd6ba1b74b9de9268a87e0f00fb98aedf311c4_hero_mini.jpg', 'Sabonete em Barra Extra Suave para Bebê Huggies 75G', true);
INSERT INTO public.tb_produtos VALUES (931, 15.99, 6, 'http://fubi.ca/img/image_file_1706380782.webp', 'Cachaca 51 965ml', true);
INSERT INTO public.tb_produtos VALUES (666, 47.9, 15, '//img.sitemercado.com.br/produtos/25624e9d705f7903a9a23cc7502aaf0614ff8309c04b273bac187a2e4a84053a_hero_mini.jpg', 'Lenço Umedecido Toque da Seda Neve Leve 4Un Pague 3Un', true);
INSERT INTO public.tb_produtos VALUES (667, 12.29, 15, '//img.sitemercado.com.br/produtos/37026e8ed5b8851b7f7873bd0937f8bdaf569cfd0df67b5547ce89f1c916fb66_mini.jpg', 'Toalha Umedecida Meu Bebê Ultra Embalagem 100Un', true);
INSERT INTO public.tb_produtos VALUES (668, 3.69, 15, '//img.sitemercado.com.br/produtos/5ff3c838a49eba31b22318bb18da4b70ee2ccda631aeea53ea6f83109fef5207_mini.jpg', 'Sabonete em Barra para Bebê Baby Delicate Care Protex 85G', true);
INSERT INTO public.tb_produtos VALUES (669, 106.9, 15, '//img.sitemercado.com.br/produtos/a419019183b39cb41713c23a1820ccc569940c2b138d7df3bff422f452c7f101_mini.jpg', 'Pampers Confort Sec Fort Bag Xxg C/52', true);
INSERT INTO public.tb_produtos VALUES (670, 27.9, 15, '//img.sitemercado.com.br/produtos/09d2bb25a6394377f9e48734fefe39cf3eb876cf4e93b51d8a15319f8bcba45a_mini.jpg', 'Protetor Solar Above Fps30 150Ml', true);
INSERT INTO public.tb_produtos VALUES (671, 63.9, 15, '//img.sitemercado.com.br/produtos/9ae901fe6b1f62820aa69b1139c8ad34f5107b5f1d5ea4b5b3f35ae3a0a96864_hero_mini.jpg', 'Protetor Solar Facial Anti-Idade Fps 50 Beauty Expert Nivea Sun 50g', true);
INSERT INTO public.tb_produtos VALUES (672, 47.9, 15, '//img.sitemercado.com.br/produtos/2f3713fcca593e95f0801cc97fc0a26708fe93c96ae3c5bcd90ee54dc5502564_mini.jpg', 'Protetor Solar Fps 50 Cenoura e Bronze 200Ml', true);
INSERT INTO public.tb_produtos VALUES (673, 41.4, 15, '//img.sitemercado.com.br/produtos/8b5d6606aac22b2d918d126f5b5ef9350f1c2e857d87b0087598fb29218d0686_hero_mini.jpg', 'Gel Hidratante Antioxidante Pós Sol Sundown 140G', true);
INSERT INTO public.tb_produtos VALUES (674, 55.9, 15, '//img.sitemercado.com.br/produtos/966fce975063229103908dab772b04125ff79cddd53e0abe41cf15fdcbb35d27_hero_mini.jpg', 'Protetor Solar Protect & Hidrata Fps 30 Nivea 200ml', true);
INSERT INTO public.tb_produtos VALUES (675, 37.89, 15, '//img.sitemercado.com.br/produtos/fc9f7d8fcf91102ff67b56a1480f840c1244be3c1098aed22c8906930b09a07e_hero_mini.jpg', 'Loção Bronzeadora Nivea Intense e Bronze Fps 6 Embalagem 125ml', true);
INSERT INTO public.tb_produtos VALUES (676, 62.55, 15, '//img.sitemercado.com.br/produtos/bf473902c26bc4e7a389edb80fb64bf682e8ba9c5b6c8ca6373498234eb3fd43_hero_mini.jpg', 'Protetor Solar Corpo e Rosto Praia e Piscina Fps 50 Sundown 200Ml', true);
INSERT INTO public.tb_produtos VALUES (677, 52.9, 15, '//img.sitemercado.com.br/produtos/6a7610d27723abcf7d6209f6a988adea815012975f0eb56200c5ba8c949d7c06_mini.jpg', 'Kit Protetor Solar Facial Fps30 30G + Protetor Solar Corporal Fps30 200Ml Cenoura & Bronze', true);
INSERT INTO public.tb_produtos VALUES (678, 17.58, 15, '//img.sitemercado.com.br/produtos/8d56952b60be311ab9ce5cefb27b1d79b32633033d16d25d2f21bcc44df6205d_hero_mini.jpg', 'Curativos Transparentes Band-Aid 40Un', true);
INSERT INTO public.tb_produtos VALUES (679, 13.29, 15, '//img.sitemercado.com.br/produtos/ed661539933498bf57139c0b6b00ddfc621402157bfbe530d57a07543e9c2d17_mini.jpg', 'Curativos Cremer Transparente Embalagem 40 Un', true);
INSERT INTO public.tb_produtos VALUES (740, 8.49, 1, 'http://fubi.ca/img/image_file_1706304263.webp', 'Canjica de Milho RD Branca 500g', true);
INSERT INTO public.tb_produtos VALUES (680, 2.95, 15, '//img.sitemercado.com.br/produtos/6124c5274f8c37d2592b1518034bb39cdf7e7b0e06fd0ae4e3d9c219cf72bf9f_mini.jpg', 'Curativos Cottonbaby Tradicional 10 Un', true);
INSERT INTO public.tb_produtos VALUES (681, 7.99, 15, '//img.sitemercado.com.br/produtos/badae93b93011f0c7c891ea79c9cffba249e0313644837aedb19d1687ce44cca_mini.jpg', 'Preservativo Clássico Prudence Leve 8 Un Pague 6', true);
INSERT INTO public.tb_produtos VALUES (682, 19.69, 15, '//img.sitemercado.com.br/produtos/75a39ba130f87e51be9acfc97054d34e2d4e33d28bb657bf8d690ea2648d8ddd_hero_mini.jpg', 'Curativos Transparente Variados Band-Aid 30Un', true);
INSERT INTO public.tb_produtos VALUES (683, 6.69, 15, '//img.sitemercado.com.br/produtos/985053d668977abd0ff09869aa9a631ca7756017b16399efbbd507ae386f5ceb_hero_mini.jpg', 'Preservativo Jontex Lubrificado 3Un', true);
INSERT INTO public.tb_produtos VALUES (684, 2.95, 15, '//img.sitemercado.com.br/produtos/6aa93a465012a105acbc4d9915233905414f38c3072f375536921b83f425a72c_mini.jpg', 'Compressa Gaze Cremer Max 10 Unidades', true);
INSERT INTO public.tb_produtos VALUES (685, 14.99, 15, '//img.sitemercado.com.br/produtos/a42d73647b2894f4af9f9db4dd1dee927df98e87bac8784a6d11efa94d908d49_mini.jpg', 'Preservativo Prudence Super Sensitive 6Un', true);
INSERT INTO public.tb_produtos VALUES (686, 8.19, 15, '//img.sitemercado.com.br/produtos/6b4492c8acc625bdb540e51cb4c16a1653d66e711067b8e10d726344eef1e93a_mini.jpg', 'Hastes Flexíveis Cottonbaby Aplicador de Maquiagem Embalagem 30Un', true);
INSERT INTO public.tb_produtos VALUES (687, 34.39, 15, '//img.sitemercado.com.br/produtos/fe646a2fa16d8f1ca30db163f6c041602d5dc223d06d3ed1a3c7caf22e04bea1_mini.jpg', 'Manteiga Emoliente Granado Embalagem 60G', true);
INSERT INTO public.tb_produtos VALUES (688, 12.19, 15, '//img.sitemercado.com.br/produtos/01882438c2747d77087ab53f13683031d8fb816942944d8f7fd15c8bfd0ec1f3_mini.jpg', 'Lenço Demaquilante Vitamina C Dermachem Embalagem com 25Un', true);
INSERT INTO public.tb_produtos VALUES (689, 16.49, 15, '//img.sitemercado.com.br/produtos/12ec4ac8e020509bb3797e6c255a2a4ea5c4011ca4787bb60821c02657df816b_mini.jpg', 'Gel Esfoliante Facial Pedras Vulcânicas Dermachem 100G', true);
INSERT INTO public.tb_produtos VALUES (690, 12.59, 15, '//img.sitemercado.com.br/produtos/66830fa2721caf2009f0f49f0a93f30396f22c0e897eddc19dd83649326313d9_mini.jpg', 'Sabonete Demaquilante Make Out Dermachen 100Ml', true);
INSERT INTO public.tb_produtos VALUES (691, 30.89, 15, '//img.sitemercado.com.br/produtos/ba1a052304c02c662838fdba2224e2dddba5702468b6bf172084dc04c6348ede_hero_mini.jpg', 'Sabonete em Gel Facial Controle do Brilho Nivea 150ml', true);
INSERT INTO public.tb_produtos VALUES (692, 11.99, 15, '//img.sitemercado.com.br/produtos/3e0d46fb7bab4078360a6c0db2ef0d8d19c7331c3d7395003ee7893c40c3a68e_mini.jpg', 'Protetor Labial Sun Fruits Fps 24 Sabor Baunilha Dermachem 3,5G', true);
INSERT INTO public.tb_produtos VALUES (693, 12.59, 15, '//img.sitemercado.com.br/produtos/3100147a8b84634132bf4b3acbbd845b70ad4d6c640407ee5bc37e9a87a24ff5_mini.jpg', 'Sabonete Dermachem Facial Make Up 100Ml', true);
INSERT INTO public.tb_produtos VALUES (698, 23.99, 8, 'http://fubi.ca/img/image_file_1706296701.webp', 'Leite Ninho Forti+ Lata 380g', true);
INSERT INTO public.tb_produtos VALUES (443, 11.49, 11, '//img.sitemercado.com.br/produtos/4b75dfb1a58f8fc94b41d1ac9c4fecac13bf474cf516ed83167195112a0334ad_mini.jpg', 'Achocolatado em Pó Tradicional Nescau 370G', true);
INSERT INTO public.tb_produtos VALUES (699, 2.99, 9, 'http://fubi.ca/img/image_file_1706297356.webp', 'Gelatina de Framboesa Sol 20g', true);
INSERT INTO public.tb_produtos VALUES (700, 2.99, 9, 'http://fubi.ca/img/image_file_1706297413.webp', 'Gelatina Limão Sol 20g', true);
INSERT INTO public.tb_produtos VALUES (701, 2.99, 9, 'http://fubi.ca/img/image_file_1706297464.webp', 'Gelatina Maracujá Sol 20g', true);
INSERT INTO public.tb_produtos VALUES (702, 2.99, 9, 'http://fubi.ca/img/image_file_1706297749.webp', 'Gelatina Sol Amora 20g', true);
INSERT INTO public.tb_produtos VALUES (703, 2.99, 9, 'http://fubi.ca/img/image_file_1706297774.webp', 'Gelatina Uva Sol 20g', true);
INSERT INTO public.tb_produtos VALUES (704, 2.99, 9, 'http://fubi.ca/img/image_file_1706297864.webp', 'Gelatina Uva Divina Mesa 20g', true);
INSERT INTO public.tb_produtos VALUES (705, 2.99, 9, 'http://fubi.ca/img/image_file_1706297864.webp', 'Gelatina Abacaxi Divina Mesa 20g', true);
INSERT INTO public.tb_produtos VALUES (706, 2.99, 9, 'http://fubi.ca/img/image_file_1706298000.webp', 'Gelatina Cereja Sol 20g', true);
INSERT INTO public.tb_produtos VALUES (707, 6.89, 1, 'http://fubi.ca/img/image_file_1706298097.webp', 'Massa para Tapioca Romanha 500g', true);
INSERT INTO public.tb_produtos VALUES (708, 4.99, 1, 'http://fubi.ca/img/image_file_1706298235.webp', 'Pipoca RD Bacon 100g', true);
INSERT INTO public.tb_produtos VALUES (709, 5.99, 12, 'http://fubi.ca/img/image_file_1706298376.webp', 'Mistura para Bolo Chocolate Sol 400g', true);
INSERT INTO public.tb_produtos VALUES (710, 4.99, 12, 'http://fubi.ca/img/image_file_1706298589.webp', 'Mistura para Bolo Limão Sol 400g', true);
INSERT INTO public.tb_produtos VALUES (711, 4.99, 12, 'http://fubi.ca/img/image_file_1706298623.webp', 'Mistura para Bolo Coco Sol 400g', true);
INSERT INTO public.tb_produtos VALUES (715, 4.49, 9, 'https://images-americanas.b2w.io/produtos/247550653/imagens/goiabada-divina-mesa-300g-unidade/247550653_1_large.jpg', 'Goiabada Divina Mesa 300g', true);
INSERT INTO public.tb_produtos VALUES (716, 9.99, 9, 'http://fubi.ca/img/image_file_1706299112.webp', 'Doce de Leite Mu-mu 350g', true);
INSERT INTO public.tb_produtos VALUES (717, 10.99, 9, 'http://fubi.ca/img/image_file_1706299303.webp', 'Doce de Leite Tirol 350g', true);
INSERT INTO public.tb_produtos VALUES (718, 4.99, 1, 'http://fubi.ca/img/image_file_1706301333.webp', 'Amido de Milho Maizena 200g', true);
INSERT INTO public.tb_produtos VALUES (719, 3.99, 1, 'http://fubi.ca/img/image_file_1706301452.webp', 'Amido de Milho Divina Mesa 200g', true);
INSERT INTO public.tb_produtos VALUES (720, 8.99, 1, 'http://fubi.ca/img/image_file_1706301480.webp', 'Amido de Milho Divina Mesa 500g', true);
INSERT INTO public.tb_produtos VALUES (721, 12.89, 1, 'http://fubi.ca/img/image_file_1706301539.webp', 'Amido de Milho Maizena 500g', true);
INSERT INTO public.tb_produtos VALUES (722, 3.75, 12, 'http://fubi.ca/img/image_file_1706301638.webp', 'Fermento Biológico Seco Fleischmann 10g', true);
INSERT INTO public.tb_produtos VALUES (511, 12.49, 12, '//img.sitemercado.com.br/produtos/7618f075da6ec67dd81e9ebc9a7fd1617a69deb40af9ca4ef9b5b91bde9d3a73_mini.jpg', 'Fermento Biológico Instantâneo Fleischmann 125G', true);
INSERT INTO public.tb_produtos VALUES (723, 4.89, 12, 'http://fubi.ca/img/image_file_1706301799.webp', 'Fermento Químico Royal 100g', true);
INSERT INTO public.tb_produtos VALUES (724, 7.99, 9, 'http://fubi.ca/img/image_file_1706301867.webp', 'Coco Ralado Sococo 100g', true);
INSERT INTO public.tb_produtos VALUES (725, 3.99, 9, 'http://fubi.ca/img/image_file_1706301985.webp', 'Coco Ralado RD 100g', true);
INSERT INTO public.tb_produtos VALUES (726, 7.99, 9, 'http://fubi.ca/img/image_file_1706302120.webp', 'Coco em Flocos Sococo 100g', true);
INSERT INTO public.tb_produtos VALUES (727, 6.99, 11, 'http://fubi.ca/img/image_file_1706302181.webp', 'Adoçante Stevia Magro 80ml', true);
INSERT INTO public.tb_produtos VALUES (728, 7.99, 11, 'http://fubi.ca/img/image_file_1706302235.webp', 'Adoçante Zero Cal 100ml', true);
INSERT INTO public.tb_produtos VALUES (729, 6.99, 8, 'http://fubi.ca/img/image_file_1706302317.webp', 'Leite de Coco Mais Coco', true);
INSERT INTO public.tb_produtos VALUES (730, 4.49, 8, 'http://fubi.ca/img/image_file_1706302382.webp', 'Leite de Coco Menina 200ml', true);
INSERT INTO public.tb_produtos VALUES (358, 3.99, 9, '//img.sitemercado.com.br/produtos/55d56e9f53386ce32bb914cd5d38ad52ce7786ec209d541349060a651cf507e2_mini.jpg', 'Creme de Leite Glória 200 g', true);
INSERT INTO public.tb_produtos VALUES (733, 7.99, 9, 'http://fubi.ca/img/image_file_1706302707.webp', 'Leite Condensado Tirol Semidesnatado 395g', true);
INSERT INTO public.tb_produtos VALUES (734, 1.99, 14, 'http://fubi.ca/img/image_file_1706303121.webp', 'Detergente Limps 500ml', true);
INSERT INTO public.tb_produtos VALUES (736, 6.99, 1, 'http://fubi.ca/img/image_file_1706303701.webp', 'Canjica de Milho Amarela RD 500g', true);
INSERT INTO public.tb_produtos VALUES (737, 5.49, 1, 'http://fubi.ca/img/image_file_1706303785.webp', 'Quirerinha Amarela Campo Largo 500g', true);
INSERT INTO public.tb_produtos VALUES (741, 8.49, 1, 'http://fubi.ca/img/image_file_1706304301.webp', 'Canjica de Milho Caldobom Branca 400g', true);
INSERT INTO public.tb_produtos VALUES (742, 9.99, 1, 'http://fubi.ca/img/image_file_1706304416.webp', 'Polvilho Azedo RD 500g', true);
INSERT INTO public.tb_produtos VALUES (743, 9.99, 1, 'http://fubi.ca/img/image_file_1706304461.webp', 'Polvilho Doce Caldobom 500g', true);
INSERT INTO public.tb_produtos VALUES (54, 6.99, 1, '//img.sitemercado.com.br/produtos/c44e1bd1b7d58e5e98283ba88fe3ae8ea37d0229aa789931272bbcd38b0c5f64_mini.jpg', 'Milho para Pipoca Caldo Bom 500G', true);
INSERT INTO public.tb_produtos VALUES (744, 6.9, 1, 'http://fubi.ca/img/image_file_1706304511.webp', 'Milho para Pipoca Gold Pinduca 500g', true);
INSERT INTO public.tb_produtos VALUES (745, 6.99, 1, 'http://fubi.ca/img/image_file_1706304658.webp', 'Pipoca Suprema RD 500g', true);
INSERT INTO public.tb_produtos VALUES (746, 8.49, 1, 'http://fubi.ca/img/image_file_1706304748.webp', 'Farinha de Rosca Caldobom 500g', true);
INSERT INTO public.tb_produtos VALUES (747, 8.99, 1, 'http://fubi.ca/img/image_file_1706304780.webp', 'Farinha de Rosca RD 500g', true);
INSERT INTO public.tb_produtos VALUES (748, 10.89, 1, 'http://fubi.ca/img/image_file_1706304817.webp', 'Sagu RD 500g', true);
INSERT INTO public.tb_produtos VALUES (749, 4.89, 1, 'http://fubi.ca/img/image_file_1706304849.webp', 'Trigo para Quibe Caldobom 500g', true);
INSERT INTO public.tb_produtos VALUES (750, 8.99, 5, 'http://fubi.ca/img/image_file_1706304962.webp', 'Amendoim com Casca RD 500g', true);
INSERT INTO public.tb_produtos VALUES (221, 8.99, 5, '//img.sitemercado.com.br/produtos/09fe5b71a079f7e19c2f2d69d93a36757194373b66feade53e2fc98f9bfaccde_mini.jpg', 'Amendoim Caldo Bom Descascado 500G', true);
INSERT INTO public.tb_produtos VALUES (751, 9.49, 5, 'http://fubi.ca/img/image_file_1706305073.webp', 'Amendoim Descascado RD 400g', true);
INSERT INTO public.tb_produtos VALUES (752, 13.99, 11, 'http://fubi.ca/img/image_file_1706305229.webp', 'Chimarrão Dona Doca Tradicional 1kg', true);
INSERT INTO public.tb_produtos VALUES (753, 13.89, 11, 'http://fubi.ca/img/image_file_1706305388.webp', 'Erva Mate Dona Doca 1kg', true);
INSERT INTO public.tb_produtos VALUES (754, 14.49, 11, 'http://fubi.ca/img/image_file_1706305498.webp', 'Erva Mate Baronesa 1kg', true);
INSERT INTO public.tb_produtos VALUES (755, 12.89, 11, 'http://fubi.ca/img/image_file_1706305633.webp', 'Tereré Kaiuá Menta Black 500g', true);
INSERT INTO public.tb_produtos VALUES (324, 4.99, 8, '//img.sitemercado.com.br/produtos/7bcc54137fd8c66cd394f5dfb4452496971d43631fcb86039cf7ed7279d5506f_mini.jpg', 'Leite Tirol Integral 1l', true);
INSERT INTO public.tb_produtos VALUES (761, 7.99, 8, 'http://fubi.ca/img/image_file_1706359249.webp', 'Leite Líder Zero Lactose Semidesnatado 1L', true);
INSERT INTO public.tb_produtos VALUES (762, 5.75, 8, 'http://fubi.ca/img/image_file_1706359316.webp', 'Leite Aurora Integral 1L', true);
INSERT INTO public.tb_produtos VALUES (763, 4.99, 8, 'http://fubi.ca/img/image_file_1706359487.webp', 'Leite Italac Integral 1L', true);
INSERT INTO public.tb_produtos VALUES (764, 7.99, 8, 'http://fubi.ca/img/image_file_1706359541.webp', 'Leite Ninho Integral 1L', true);
INSERT INTO public.tb_produtos VALUES (765, 16.89, 16, 'http://fubi.ca/img/image_file_1706359651.webp', 'Ração Gatos Billy Cat Mix 1kg', true);
INSERT INTO public.tb_produtos VALUES (766, 2.99, 16, 'http://fubi.ca/img/image_file_1706359824.webp', 'Sachê Special Dog Filhotes Carne 100g', true);
INSERT INTO public.tb_produtos VALUES (767, 2.89, 16, 'http://fubi.ca/img/image_file_1706359927.webp', 'Sachê Qualidy Adultos Carne ao Molho 85g', true);
INSERT INTO public.tb_produtos VALUES (768, 2.99, 16, 'http://fubi.ca/img/image_file_1706359975.webp', 'Sachê Dog Chow Todos Carne 100g', true);
INSERT INTO public.tb_produtos VALUES (769, 10.99, 5, 'http://fubi.ca/img/image_file_1706360067.webp', 'Água de Coco Puro Coco 1L', true);
INSERT INTO public.tb_produtos VALUES (770, 11.99, 6, 'http://fubi.ca/img/image_file_1706360106.webp', 'Água de Coco Integral Sococo 1L', true);
INSERT INTO public.tb_produtos VALUES (772, 56.99, 6, 'http://fubi.ca/img/image_file_1706360342.webp', 'Vodka Smirnoff 998ml', true);
INSERT INTO public.tb_produtos VALUES (773, 39.99, 6, 'http://fubi.ca/img/image_file_1706360432.webp', 'Vinho Chileno Santa Carolina Reservado 750ml', true);
INSERT INTO public.tb_produtos VALUES (774, 32.89, 6, 'http://fubi.ca/img/image_file_1706360483.webp', 'Vinho Tinto Invictas 750ml', true);
INSERT INTO public.tb_produtos VALUES (775, 38.89, 6, 'http://fubi.ca/img/image_file_1706360542.webp', 'Vinho Branco Concha y Toro 750ml', true);
INSERT INTO public.tb_produtos VALUES (776, 32.89, 6, 'http://fubi.ca/img/image_file_1706360664.webp', 'Vinho Argentino Novecento 750ml', true);
INSERT INTO public.tb_produtos VALUES (777, 119.99, 6, 'http://fubi.ca/img/image_file_1706360744.webp', 'Vinho Porto Taylors 750ml', true);
INSERT INTO public.tb_produtos VALUES (454, 18.99, 11, '//img.sitemercado.com.br/produtos/1a42fe95d9d3dfdcd8a08a7b3c0b556d1cdddfd9d4eca2fa9adc8c51f95f3ca9_mini.jpg', 'Café Torrado e Moído Tradicional Vácuo Melitta 500G', true);
INSERT INTO public.tb_produtos VALUES (779, 13.99, 11, 'http://fubi.ca/img/image_file_1706361086.webp', 'Café Torrado e Moído Bom Taí 500g', true);
INSERT INTO public.tb_produtos VALUES (781, 16.99, 11, 'http://fubi.ca/img/image_file_1706361275.webp', 'Café Caboclo Tradicional 500g', true);
INSERT INTO public.tb_produtos VALUES (780, 17.99, 11, 'http://fubi.ca/img/image_file_1706361189.webp', 'Café Damasco Extra Forte 500g', true);
INSERT INTO public.tb_produtos VALUES (782, 18.99, 11, 'http://fubi.ca/img/image_file_1706361402.webp', 'Café Damasco 500g Vácuo', true);
INSERT INTO public.tb_produtos VALUES (783, 5.89, NULL, 'http://fubi.ca/img/image_file_1706361672.webp', 'Farinha de Trigo Sol 1kg', true);
INSERT INTO public.tb_produtos VALUES (784, 9.89, 5, 'http://fubi.ca/img/image_file_1706361808.webp', 'Batata Palha Romanha 120g', true);
INSERT INTO public.tb_produtos VALUES (785, 6.49, 11, 'http://fubi.ca/img/image_file_1706362060.webp', 'Cafe Solúvel Damasco 40g', true);
INSERT INTO public.tb_produtos VALUES (786, 6.49, 11, 'http://fubi.ca/img/image_file_1706362189.webp', 'Cafe Solúvel Nescafe Extra Forte 40g', true);
INSERT INTO public.tb_produtos VALUES (787, 23.99, 11, 'http://fubi.ca/img/image_file_1706362682.webp', 'Nescafe Forte 160g', true);
INSERT INTO public.tb_produtos VALUES (788, 7.99, 13, 'http://fubi.ca/img/image_file_1706362787.webp', 'Filtro Permanente Esperança 103', true);
INSERT INTO public.tb_produtos VALUES (811, 27.99, 1, 'http://fubi.ca/img/image_file_1706372547.webp', 'Farinha de Trigo Anaconda 5kg', true);
INSERT INTO public.tb_produtos VALUES (812, 24.89, 1, 'http://fubi.ca/img/image_file_1706372574.webp', 'Farinha de Trigo Sol 5kg', true);
INSERT INTO public.tb_produtos VALUES (814, 22.99, 1, 'http://fubi.ca/img/image_file_1706372733.webp', 'Açúcar Refinado Alto Alegre 5kg', true);
INSERT INTO public.tb_produtos VALUES (815, 5.75, 5, 'http://fubi.ca/img/image_file_1706372792.webp', 'Batata Palha Romanha 80g', true);
INSERT INTO public.tb_produtos VALUES (816, 5.75, 5, 'http://fubi.ca/img/image_file_1706372836.webp', 'Batata Palha Casaredo 70g', true);
INSERT INTO public.tb_produtos VALUES (817, 7.49, 5, 'http://fubi.ca/img/image_file_1706372876.webp', 'Batata Palha Divina Mesa 100g', true);
INSERT INTO public.tb_produtos VALUES (818, 0.99, 1, 'http://fubi.ca/img/image_file_1706373043.webp', 'Miojo Divina Mesa Galinha 66g', true);
INSERT INTO public.tb_produtos VALUES (821, 2.99, 1, 'http://fubi.ca/img/image_file_1706373220.webp', 'Macarrão Instantâneo Sabor Camarao Nissin 85G', true);
INSERT INTO public.tb_produtos VALUES (822, 2.99, 1, 'http://fubi.ca/img/image_file_1706373269.webp', 'Macarrão Instantâneo Sabor Frango com Alho Nissin 85G', true);
INSERT INTO public.tb_produtos VALUES (823, 3.49, 1, 'http://fubi.ca/img/image_file_1706373299.webp', 'Macarrão Instantâneo Hot Calabresa Nissin 85G', true);
INSERT INTO public.tb_produtos VALUES (825, 4.49, 1, 'http://fubi.ca/img/image_file_1706373400.webp', 'Miojo Talharim Bolonhesa 90g', true);
INSERT INTO public.tb_produtos VALUES (826, 4.49, 1, 'http://fubi.ca/img/image_file_1706373441.webp', 'Miojo Talharim Carne com Tomate 90g', true);
INSERT INTO public.tb_produtos VALUES (830, 6.5, 1, 'http://fubi.ca/img/image_file_1706373584.webp', 'Cup Noodles Bolonhesa Nissin 72g', true);
INSERT INTO public.tb_produtos VALUES (831, 7.99, 1, 'http://fubi.ca/img/image_file_1706373609.webp', 'Macarrao Tradicional Floriani Ave Maria 1kg', true);
INSERT INTO public.tb_produtos VALUES (833, 7.49, 1, 'http://fubi.ca/img/image_file_1706373751.webp', 'Macarrao Casaredo Parafuso Tricolor 500g', true);
INSERT INTO public.tb_produtos VALUES (835, 7.49, 1, 'http://fubi.ca/img/image_file_1706373837.webp', 'Macarrao Parafuso Fusilli Santa Clara 1kg', true);
INSERT INTO public.tb_produtos VALUES (836, 6.99, 1, 'http://fubi.ca/img/image_file_1706373880.webp', 'Macarrao Casaredo Parafuso com Ovos 500g', true);
INSERT INTO public.tb_produtos VALUES (837, 6.49, 1, 'http://fubi.ca/img/image_file_1706373945.webp', 'Macarrao Massa Caseira Divina Mesa 400g', true);
INSERT INTO public.tb_produtos VALUES (838, 7.49, 1, 'http://fubi.ca/img/image_file_1706374007.webp', 'Macarrao Floriani Semola Ovos Ninho 500g', true);
INSERT INTO public.tb_produtos VALUES (819, 0.99, 1, 'http://fubi.ca/img/image_file_1706373080.webp', 'Miojo Divina Mesa Galinha Caipira 66g', true);
INSERT INTO public.tb_produtos VALUES (820, 0.99, 1, 'http://fubi.ca/img/image_file_1706373099.webp', 'Miojo DIvina Mesa Carne 66g', true);
INSERT INTO public.tb_produtos VALUES (824, 2.99, 1, 'http://fubi.ca/img/image_file_1706373371.webp', 'Miojo Lámen de Carne Suave Nissin 85G', true);
INSERT INTO public.tb_produtos VALUES (827, 9.89, 1, 'http://fubi.ca/img/image_file_1706373501.webp', 'Nissin Yakissoba UFO 97g', true);
INSERT INTO public.tb_produtos VALUES (828, 6.5, 1, 'http://fubi.ca/img/image_file_1706373550.webp', 'Cup Noodles Feijoada Nissin 72g', true);
INSERT INTO public.tb_produtos VALUES (829, 6.5, 1, 'http://fubi.ca/img/image_file_1706373569.webp', 'Cup Noodles Carne Nissin 72g', true);
INSERT INTO public.tb_produtos VALUES (832, 7.99, 1, 'http://fubi.ca/img/image_file_1706373694.webp', 'Macarrao Tradicional Floriani Padre Nosso 1kg', true);
INSERT INTO public.tb_produtos VALUES (834, 7.99, 1, 'http://fubi.ca/img/image_file_1706373782.webp', 'Macarrao Tradicional Floriani Parafuso 1kg', true);
INSERT INTO public.tb_produtos VALUES (839, 8.99, 1, 'http://fubi.ca/img/image_file_1706374070.webp', 'Macarrao Semola Ninho Largo com Ovos Parati 500g', true);
INSERT INTO public.tb_produtos VALUES (840, 4.99, 1, 'http://fubi.ca/img/image_file_1706374128.webp', 'Macarrao de Semola com Ovos Pena Todeschini 500g', true);
INSERT INTO public.tb_produtos VALUES (841, 4.99, 1, 'http://fubi.ca/img/image_file_1706374172.webp', 'Macarrao Parafuso Todeschini 500g', true);
INSERT INTO public.tb_produtos VALUES (842, 6.99, 1, 'http://fubi.ca/img/image_file_1706374235.webp', 'Macarrao Casaredo Espaguete Integral 500g', true);
INSERT INTO public.tb_produtos VALUES (843, 7.99, 1, 'http://fubi.ca/img/image_file_1706374276.webp', 'Macarrao Floriani Espaguete 1kg', true);
INSERT INTO public.tb_produtos VALUES (844, 6.99, 1, 'http://fubi.ca/img/image_file_1706374298.webp', 'Macarrao Casaredo Espaguete com Ovos 500g', true);
INSERT INTO public.tb_produtos VALUES (845, 9.99, 1, 'http://fubi.ca/img/image_file_1706374337.webp', 'Macarrao Parati Furadinho Semola 1kg', true);
INSERT INTO public.tb_produtos VALUES (846, 10.89, 1, 'http://fubi.ca/img/image_file_1706374373.webp', 'Macarrao Parati Espaguete Semola 1kg', true);
INSERT INTO public.tb_produtos VALUES (847, 10.99, 1, 'http://fubi.ca/img/image_file_1706374396.webp', 'Macarrao Casaredo Espaguete Furado 1kg', true);
INSERT INTO public.tb_produtos VALUES (848, 5.99, 5, 'http://fubi.ca/img/image_file_1706374439.webp', 'Roscas em Calda Anarella 300g', true);
INSERT INTO public.tb_produtos VALUES (849, 12.89, 5, 'http://fubi.ca/img/image_file_1706374484.webp', 'Roscas em Calda Anarella 600g', true);
INSERT INTO public.tb_produtos VALUES (850, 19.99, 5, 'http://fubi.ca/img/image_file_1706374533.webp', 'Bolacha Anarella Sortidos 1200g', true);
INSERT INTO public.tb_produtos VALUES (851, 11.99, 5, 'http://fubi.ca/img/image_file_1706374569.webp', 'Bolacha Casaredo Leite 600g', true);
INSERT INTO public.tb_produtos VALUES (852, 11.99, 5, 'http://fubi.ca/img/image_file_1706374683.webp', 'Bolacha Casaredo Coco 650g', true);
INSERT INTO public.tb_produtos VALUES (853, 14.99, 5, 'http://fubi.ca/img/image_file_1706374706.webp', 'Bolacha Casaredo Sortido 600g', true);
INSERT INTO public.tb_produtos VALUES (854, 14.99, 5, 'http://fubi.ca/img/image_file_1706374743.webp', 'Bolacha Maria Casaredo 700g', true);
INSERT INTO public.tb_produtos VALUES (855, 16.49, 5, 'http://fubi.ca/img/image_file_1706374856.webp', 'Bolacha Maria Parati 740g', true);
INSERT INTO public.tb_produtos VALUES (857, 16.49, 5, 'http://fubi.ca/img/image_file_1706375002.webp', 'Biscoito Maizena Parati 740g', true);
INSERT INTO public.tb_produtos VALUES (858, 2.79, 5, 'http://fubi.ca/img/image_file_1706375065.webp', 'Bolacha Recheada Panco Golden Black Morango 140g', true);
INSERT INTO public.tb_produtos VALUES (859, 2.79, 5, 'http://fubi.ca/img/image_file_1706375137.webp', 'Bolacha Recheada Morango Panco 140g', true);
INSERT INTO public.tb_produtos VALUES (860, 2.79, 5, 'http://fubi.ca/img/image_file_1706375174.webp', 'Bolacha Recheada Chocolate Panco 140g', true);
INSERT INTO public.tb_produtos VALUES (861, 3.49, 5, 'http://fubi.ca/img/image_file_1706375210.webp', 'Bolacha Tortinhas Isabela Limao 140g', true);
INSERT INTO public.tb_produtos VALUES (862, 3.49, 5, 'http://fubi.ca/img/image_file_1706375300.webp', 'Bolacha Tortinhas Isabela Morango 140g', true);
INSERT INTO public.tb_produtos VALUES (863, 3.49, 5, 'http://fubi.ca/img/image_file_1706375379.webp', 'Bolacha Tortinhas Isabela Due Trufa x Morango 140g', true);
INSERT INTO public.tb_produtos VALUES (864, 3.49, 5, 'http://fubi.ca/img/image_file_1706375412.webp', 'Bolacha Tortinhas Isabela Due Chocolate x Geleia 140g', true);
INSERT INTO public.tb_produtos VALUES (865, 3.49, 5, 'http://fubi.ca/img/image_file_1706375430.webp', 'Bolacha Tortinhas Isabela Chocolate 140g', true);
INSERT INTO public.tb_produtos VALUES (866, 11.89, 5, 'http://fubi.ca/img/image_file_1706375471.webp', 'Pao de Mel Beijo Baiano 400g', true);
INSERT INTO public.tb_produtos VALUES (867, 6.99, 5, 'http://fubi.ca/img/image_file_1706375538.webp', 'Bolacha Anarella Sortidos 300g', true);
INSERT INTO public.tb_produtos VALUES (868, 12.99, 5, 'http://fubi.ca/img/image_file_1706375565.webp', 'Biscoito Panco Sequilhinho 500g', true);
INSERT INTO public.tb_produtos VALUES (869, 12.89, 5, 'http://fubi.ca/img/image_file_1706375627.webp', 'Biscoito Anarella Sortidos 600g', true);
INSERT INTO public.tb_produtos VALUES (870, 8.99, 5, 'http://fubi.ca/img/image_file_1706375662.webp', 'Bolacha Panco Deliciosos Salgadinhos 500g', true);
INSERT INTO public.tb_produtos VALUES (871, 8.99, 5, 'http://fubi.ca/img/image_file_1706375675.webp', 'Bolacha Panco Wind 500g', true);
INSERT INTO public.tb_produtos VALUES (872, 8.99, 5, 'http://fubi.ca/img/image_file_1706375700.webp', 'Pao de Mel Natural Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (873, 9.49, 5, 'http://fubi.ca/img/image_file_1706375734.webp', 'Rosquinha de Baunilha Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (874, 9.99, 5, 'http://fubi.ca/img/image_file_1706375800.webp', 'Rosquinha de Leite Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (875, 9.99, 5, 'http://fubi.ca/img/image_file_1706375816.webp', 'Rosquinha de Coco Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (876, 9.99, 5, 'http://fubi.ca/img/image_file_1706375830.webp', 'Rosquinha de Chocolate Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (877, 9.89, 5, 'http://fubi.ca/img/image_file_1706375856.webp', 'Pao de Mel Chocolate Panco 200g', true);
INSERT INTO public.tb_produtos VALUES (878, 3.99, 5, 'http://fubi.ca/img/image_file_1706376189.webp', 'Pao de Mel Divina Mesa 90g', true);
INSERT INTO public.tb_produtos VALUES (879, 3.49, 5, 'http://fubi.ca/img/image_file_1706376227.webp', 'Wafer Panco Chocolate e Morango 140g', true);
INSERT INTO public.tb_produtos VALUES (880, 3.49, 5, 'http://fubi.ca/img/image_file_1706376252.webp', 'Wafer Panco Chocolate 140g', true);
INSERT INTO public.tb_produtos VALUES (881, 3.49, 5, 'http://fubi.ca/img/image_file_1706376270.webp', 'Wafer Panco Melancia 140g', true);
INSERT INTO public.tb_produtos VALUES (882, 3.49, 5, 'http://fubi.ca/img/image_file_1706376304.webp', 'Wafer Panco Morango 140g', true);
INSERT INTO public.tb_produtos VALUES (883, 3.49, 5, 'http://fubi.ca/img/image_file_1706376319.webp', 'Wafer Panco Golden Black 140g', true);
INSERT INTO public.tb_produtos VALUES (884, 6.99, 5, 'http://fubi.ca/img/image_file_1706376435.webp', 'Club Social Original 144g', true);
INSERT INTO public.tb_produtos VALUES (885, 8.99, 9, 'http://fubi.ca/img/image_file_1706376459.webp', 'Bis Original 100g', true);
INSERT INTO public.tb_produtos VALUES (887, 6.99, 9, 'http://fubi.ca/img/image_file_1706376562.webp', 'Wafer Hersheys Ao Leite 101g', true);
INSERT INTO public.tb_produtos VALUES (888, 6.99, 9, 'http://fubi.ca/img/image_file_1706376578.webp', 'Wafer Hersheys Cookies Creme 101g', true);
INSERT INTO public.tb_produtos VALUES (889, 15.89, 9, 'http://fubi.ca/img/image_file_1706376623.webp', 'Caixa Bombom Lacta Favoritos 250g', true);
INSERT INTO public.tb_produtos VALUES (890, 8.89, 5, 'http://fubi.ca/img/image_file_1706376693.webp', 'Biscoito Kuki Isabela 350g', true);
INSERT INTO public.tb_produtos VALUES (891, 7.99, 5, 'http://fubi.ca/img/image_file_1706376802.webp', 'Bolacha Agua e Sal Panco 400g', true);
INSERT INTO public.tb_produtos VALUES (1066, 34.99, 3, NULL, 'Coração kg', true);
INSERT INTO public.tb_produtos VALUES (901, 5.99, 5, 'http://fubi.ca/img/image_file_1706377021.webp', 'Bolacha Salt Plus Sol 360g', true);
INSERT INTO public.tb_produtos VALUES (902, 7.99, 9, 'http://fubi.ca/img/image_file_1706377092.webp', 'Suspiros Andriolli 100g', true);
INSERT INTO public.tb_produtos VALUES (903, 9.99, 14, 'http://fubi.ca/img/image_file_1706377287.webp', 'Amaciante de Roupas Mon Bijou Bombril 1,7L +Frescor', true);
INSERT INTO public.tb_produtos VALUES (904, 9.99, 14, 'http://fubi.ca/img/image_file_1706377307.webp', 'Amaciante de Roupas Mon Bijou Bombril 1,7L +Protecao', true);
INSERT INTO public.tb_produtos VALUES (905, 9.99, 14, 'http://fubi.ca/img/image_file_1706377332.webp', 'Amaciante de Roupas Mon Bijou Bombril 1,7L 3 em 1', true);
INSERT INTO public.tb_produtos VALUES (906, 9.99, 14, 'http://fubi.ca/img/image_file_1706377351.webp', 'Amaciante de Roupas Mon Bijou Bombril 1,7L +Perfume', true);
INSERT INTO public.tb_produtos VALUES (907, 9.99, 14, 'http://fubi.ca/img/image_file_1706377370.webp', 'Amaciante de Roupas Mon Bijou Bombril 1,7L +Maciez', true);
INSERT INTO public.tb_produtos VALUES (909, 6.99, 14, 'http://fubi.ca/img/image_file_1706378865.webp', 'Amaciante Classy Plus 2L Azul', true);
INSERT INTO public.tb_produtos VALUES (910, 6.99, 14, 'http://fubi.ca/img/image_file_1706378887.webp', 'Amaciante Classy Plus 2L Rosa', true);
INSERT INTO public.tb_produtos VALUES (915, 8.99, 14, 'http://fubi.ca/img/image_file_1706379062.webp', 'Amaciante Baby Soft 2L Preto', true);
INSERT INTO public.tb_produtos VALUES (245, 0.99, 6, '//img.sitemercado.com.br/produtos/0760604c8d62f79dd4ce795a4fa5a434f5a5e92227dbb6c22fc618d288aa8822_mini.jpg', 'Refresco em Pó Sabor Uva Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (246, 0.99, 6, '//img.sitemercado.com.br/produtos/d00ab6d67d672ec30c30cf6f6a536eeac503c8eb56cea9d6504f8dcda5d10cf0_mini.jpg', 'Refresco em Pó Sabor Maracujá Trink 15G', true);
INSERT INTO public.tb_produtos VALUES (916, 5.99, 14, 'http://fubi.ca/img/image_file_1706379385.webp', 'Toalha de Papel Divina Mesa 2un', true);
INSERT INTO public.tb_produtos VALUES (917, 7.99, 14, 'http://fubi.ca/img/image_file_1706379403.webp', 'Toalha de Papel Mili 2un', true);
INSERT INTO public.tb_produtos VALUES (918, 10.99, 6, 'http://fubi.ca/img/image_file_1706379945.webp', 'Energetico Monkey 2L', true);
INSERT INTO public.tb_produtos VALUES (919, 13.89, 6, 'http://fubi.ca/img/image_file_1706379981.webp', 'Energetico Red Horse Gusttavo Lima 2L', true);
INSERT INTO public.tb_produtos VALUES (920, 5.99, 6, 'http://fubi.ca/img/image_file_1706380063.webp', 'Refrigerante Abacaxi Cini 2L', true);
INSERT INTO public.tb_produtos VALUES (921, 5.99, 6, 'http://fubi.ca/img/image_file_1706380083.webp', 'Refrigerante Framboesa Cini 2L', true);
INSERT INTO public.tb_produtos VALUES (922, 5.99, 6, 'http://fubi.ca/img/image_file_1706380104.webp', 'Refrigerante Laranja Cini 2L', true);
INSERT INTO public.tb_produtos VALUES (923, 6.99, 6, 'http://fubi.ca/img/image_file_1706380236.webp', 'Refrigerante Sukita Uva 2L', true);
INSERT INTO public.tb_produtos VALUES (924, 6.99, 6, 'http://fubi.ca/img/image_file_1706380379.webp', 'Refrigerante Sukita Laranja 2L', true);
INSERT INTO public.tb_produtos VALUES (925, 9.99, 6, 'http://fubi.ca/img/image_file_1706380420.webp', 'Refrigerante Guarana Antarctica 2L', true);
INSERT INTO public.tb_produtos VALUES (926, 9.99, 6, 'http://fubi.ca/img/image_file_1706380490.webp', 'Refrigerante Fanta Uva 2L', true);
INSERT INTO public.tb_produtos VALUES (927, 3.49, 6, 'http://fubi.ca/img/image_file_1706380537.webp', 'Aguardente Cana Boa 470ml', true);
INSERT INTO public.tb_produtos VALUES (928, 6.49, 6, 'http://fubi.ca/img/image_file_1706380581.webp', 'Cachaca Camelinho 500ml', true);
INSERT INTO public.tb_produtos VALUES (929, 9.99, 6, 'http://fubi.ca/img/image_file_1706380637.webp', 'Refrigerante Pepsi 2L', true);
INSERT INTO public.tb_produtos VALUES (933, 18.89, 6, 'http://fubi.ca/img/image_file_1706380863.webp', 'Coquetel Passauna Limao 950ml', true);
INSERT INTO public.tb_produtos VALUES (934, 18.89, 6, 'http://fubi.ca/img/image_file_1706380885.webp', 'Coquetel Passauna Coco e Abacaxi 950ml', true);
INSERT INTO public.tb_produtos VALUES (935, 18.89, 6, 'http://fubi.ca/img/image_file_1706380912.webp', 'Coquetel Passauna Amendoim 950ml', true);
INSERT INTO public.tb_produtos VALUES (936, 27.99, 6, 'http://fubi.ca/img/image_file_1706380932.webp', 'Vodka Natasha 900ml', true);
INSERT INTO public.tb_produtos VALUES (937, 14.49, 6, 'http://fubi.ca/img/image_file_1706381336.webp', 'Vodka Cristoff 900ml', true);
INSERT INTO public.tb_produtos VALUES (938, 9.89, 6, 'http://fubi.ca/img/image_file_1706381387.webp', 'Coquetel Pinheirense 2L', true);
INSERT INTO public.tb_produtos VALUES (939, 13.89, 6, 'http://fubi.ca/img/image_file_1706381412.webp', 'Vinho Nogueira Suave 1L', true);
INSERT INTO public.tb_produtos VALUES (940, 15.89, 6, 'http://fubi.ca/img/image_file_1706381465.webp', 'Vinho Branco Suave Cavalli 750ml', true);
INSERT INTO public.tb_produtos VALUES (605, 18.89, 14, '//img.sitemercado.com.br/produtos/f131b22242c4a8e7bef7939f4d6a099b12e3cf65ec3f24d848494a5f5c25510a_hero_mini.jpg', 'Omo Lavagem Perfeita 800G', true);
INSERT INTO public.tb_produtos VALUES (941, 27.99, 14, 'http://fubi.ca/img/image_file_1706381760.webp', 'Sabao em po Brilhante 1.6kg', true);
INSERT INTO public.tb_produtos VALUES (942, 10.89, 14, 'http://fubi.ca/img/image_file_1706381824.webp', 'Lava Roupas Assim 800g', true);
INSERT INTO public.tb_produtos VALUES (943, 8.99, 14, 'http://fubi.ca/img/image_file_1706381893.webp', 'Desinfetante Pinho Sol Original 500ml ', true);
INSERT INTO public.tb_produtos VALUES (944, 5.99, 14, 'http://fubi.ca/img/image_file_1706381922.webp', 'Desinfetante Pinho Bril Plus 500ml', true);
INSERT INTO public.tb_produtos VALUES (945, 5.99, 14, 'http://fubi.ca/img/image_file_1706382008.webp', 'Desinfetante Pinho Bril Perfumado 500ml', true);
INSERT INTO public.tb_produtos VALUES (946, 15.99, 14, 'http://fubi.ca/img/image_file_1706382075.webp', 'Sabao em po Tixan 800g', true);
INSERT INTO public.tb_produtos VALUES (581, 4.49, 14, '//img.sitemercado.com.br/produtos/a87a3d3dce2bdc9c6c2d57aaa33f6e70bde053c3525e6044e0c79cac0a890f0f_mini.jpg', 'Água Sanitária Qboa 1L', true);
INSERT INTO public.tb_produtos VALUES (947, 7.99, 14, 'http://fubi.ca/img/image_file_1706382137.webp', 'Agua Sanitaria Qboa 2L', true);
INSERT INTO public.tb_produtos VALUES (948, 5.25, 14, 'http://fubi.ca/img/image_file_1706382171.webp', 'Agua Sanitaria Ype 1L', true);
INSERT INTO public.tb_produtos VALUES (949, 9.89, 14, 'http://fubi.ca/img/image_file_1706382181.webp', 'Agua Sanitaria Ype 2L', true);
INSERT INTO public.tb_produtos VALUES (950, 29.99, 14, 'http://fubi.ca/img/image_file_1706382317.webp', 'Soda Caustica em escamas Sodabel 1kg', true);
INSERT INTO public.tb_produtos VALUES (951, 5.25, 14, 'http://fubi.ca/img/image_file_1706382407.webp', 'Sabao Ype Azul Unidade 180g', true);
INSERT INTO public.tb_produtos VALUES (952, 4.99, 14, 'http://fubi.ca/img/image_file_1706382473.webp', 'Bombril 8 unidades', true);
INSERT INTO public.tb_produtos VALUES (953, 15.99, 14, 'http://fubi.ca/img/image_file_1706382564.webp', 'Sabao Ype Neutro Original 900g', true);
INSERT INTO public.tb_produtos VALUES (954, 4.79, 14, 'http://fubi.ca/img/image_file_1706382584.webp', 'Sabao Ype Neutro Unidade 180g', true);
INSERT INTO public.tb_produtos VALUES (955, 6.99, 1, 'http://fubi.ca/img/image_file_1706382738.webp', 'Oleo de Soja Cocamar 900ml', true);
INSERT INTO public.tb_produtos VALUES (956, 7.89, 1, 'http://fubi.ca/img/image_file_1706382811.webp', 'Oleo de Soja Leve 900ml', true);
INSERT INTO public.tb_produtos VALUES (1050, 34.99, 3, NULL, 'Contra File s/Mignon kg', true);
INSERT INTO public.tb_produtos VALUES (961, 4.99, 1, 'http://fubi.ca/img/image_file_1706383195.webp', 'Farofa Sabor Bacon Caldobom com Croutons 250g', true);
INSERT INTO public.tb_produtos VALUES (962, 10.99, 1, 'http://fubi.ca/img/image_file_1706383263.webp', 'Farinha de Mandioca Torrada e Temperada Pinduca 500g', true);
INSERT INTO public.tb_produtos VALUES (963, 9.89, 1, 'http://fubi.ca/img/image_file_1706383302.webp', 'Farofa Pronta Tradicional RD 500g', true);
INSERT INTO public.tb_produtos VALUES (964, 8.99, 1, 'http://fubi.ca/img/image_file_1706383349.webp', 'Farofa Panco Trifarofa 400g', true);
INSERT INTO public.tb_produtos VALUES (965, 6.89, 1, 'http://fubi.ca/img/image_file_1706383385.webp', 'Farofa Panco Trifarofa Alho Cebola e Salsa 250g', true);
INSERT INTO public.tb_produtos VALUES (966, 4.75, 7, 'http://fubi.ca/img/image_file_1706383853.webp', 'Molho Pronto Salsaretti Bolonhesa 300g', true);
INSERT INTO public.tb_produtos VALUES (967, 14.89, 7, 'http://fubi.ca/img/image_file_1706384224.webp', 'Extrato de Tomate Elefante 850g', true);
INSERT INTO public.tb_produtos VALUES (968, 6.49, 7, 'http://fubi.ca/img/image_file_1706384274.webp', 'Extrato de Tomate Salsaretti 330g', true);
INSERT INTO public.tb_produtos VALUES (969, 6.75, 7, 'http://fubi.ca/img/image_file_1706384320.webp', 'Extrato de Tomate Salsaretti 300g', true);
INSERT INTO public.tb_produtos VALUES (970, 7.49, 7, 'http://fubi.ca/img/image_file_1706384345.webp', 'Extrato de Tomate Elefante 300g', true);
INSERT INTO public.tb_produtos VALUES (971, 3.49, 7, 'http://fubi.ca/img/image_file_1706384380.webp', 'Molho de Tomate Tradicional Quero 300g', true);
INSERT INTO public.tb_produtos VALUES (972, 2.29, 7, 'http://fubi.ca/img/image_file_1706384481.webp', 'Molho de Tomate Tradicional Divina Mesa 300g', true);
INSERT INTO public.tb_produtos VALUES (973, 5.99, 7, 'http://fubi.ca/img/image_file_1706384649.webp', 'Milho Verde em Conserva Quero 280g', true);
INSERT INTO public.tb_produtos VALUES (974, 14.49, 7, 'http://fubi.ca/img/image_file_1706384725.webp', 'Maionese Hellmanns 500g', true);
INSERT INTO public.tb_produtos VALUES (975, 13.99, 7, 'http://fubi.ca/img/image_file_1706384771.webp', 'Maionese Hemmer 500g', true);
INSERT INTO public.tb_produtos VALUES (976, 5.49, 7, 'http://fubi.ca/img/image_file_1706384845.webp', 'Milho Fugini Sache 260g', true);
INSERT INTO public.tb_produtos VALUES (977, 4.49, 1, 'http://fubi.ca/img/image_file_1706384891.webp', 'Sal Grosso Lebre 1kg', true);
INSERT INTO public.tb_produtos VALUES (978, 4.49, 1, 'http://fubi.ca/img/image_file_1706384891.webp', 'Sal Grosso Lebre 1kg', true);
INSERT INTO public.tb_produtos VALUES (979, 4.49, 1, 'http://fubi.ca/img/image_file_1706384891.webp', 'Sal Grosso Lebre 1kg', true);
INSERT INTO public.tb_produtos VALUES (980, 4.99, 7, 'http://fubi.ca/img/image_file_1706384961.webp', 'Seleta de legumes Bonare Sache 260g', true);
INSERT INTO public.tb_produtos VALUES (981, 5.89, 1, 'http://fubi.ca/img/image_file_1706384983.webp', 'Sal Grosso RD 400g', true);
INSERT INTO public.tb_produtos VALUES (982, 11.99, 12, 'http://fubi.ca/img/image_file_1706385958.webp', 'Pao de Brioche Denis Pan 400g', true);
INSERT INTO public.tb_produtos VALUES (983, 3.99, 7, 'http://fubi.ca/img/image_file_1706385991.webp', 'Tempero Completo RD 300g', true);
INSERT INTO public.tb_produtos VALUES (984, 3.99, 7, 'http://fubi.ca/img/image_file_1706386059.webp', 'Tempero Alho e Sal RD 300g', true);
INSERT INTO public.tb_produtos VALUES (985, 5.99, 7, 'http://fubi.ca/img/image_file_1706386125.webp', 'Tempero RD Alho Cebola e Salsa', true);
INSERT INTO public.tb_produtos VALUES (986, 6.99, 7, 'http://fubi.ca/img/image_file_1706386150.webp', 'Tempero RD Alho Triturado 200g', true);
INSERT INTO public.tb_produtos VALUES (987, 9.89, 12, 'http://fubi.ca/img/image_file_1706386273.webp', 'Pao Panco 30% Integral 500g', true);
INSERT INTO public.tb_produtos VALUES (988, 7.99, 12, 'http://fubi.ca/img/image_file_1706386324.webp', 'Pao de Forma Panco Premium 500g', true);
INSERT INTO public.tb_produtos VALUES (989, 9.49, 12, 'http://fubi.ca/img/image_file_1706386349.webp', 'Pao de Forma Panco Leite 500g', true);
INSERT INTO public.tb_produtos VALUES (990, 10.49, 12, 'http://fubi.ca/img/image_file_1706386371.webp', 'Pao de Milho Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (991, 6.85, 12, 'http://fubi.ca/img/image_file_1706386518.webp', 'Pao de Forma Panco Premium Junior 350g', true);
INSERT INTO public.tb_produtos VALUES (992, 12.99, 12, 'http://fubi.ca/img/image_file_1706386548.webp', 'Pao Egg Sponge 250g Panco', true);
INSERT INTO public.tb_produtos VALUES (993, 12.89, 12, 'http://fubi.ca/img/image_file_1706386604.webp', 'Pao Sovado Panco 500g', true);
INSERT INTO public.tb_produtos VALUES (994, 7.99, 12, 'http://fubi.ca/img/image_file_1706386700.webp', 'Panco Bisnaguinha 300g', true);
INSERT INTO public.tb_produtos VALUES (995, 16.99, 7, 'http://fubi.ca/img/image_file_1706386771.webp', 'Barbecue Heimer 330g', true);
INSERT INTO public.tb_produtos VALUES (996, 11.99, 7, 'http://fubi.ca/img/image_file_1706386795.webp', 'Ketchup Hemmer 320g', true);
INSERT INTO public.tb_produtos VALUES (997, 4.89, 7, 'http://fubi.ca/img/image_file_1706386813.webp', 'Maionese Divina Mesa 180g', true);
INSERT INTO public.tb_produtos VALUES (998, 4.89, 7, 'http://fubi.ca/img/image_file_1706386841.webp', 'Mostarda Divina Mesa 180g', true);
INSERT INTO public.tb_produtos VALUES (999, 4.99, 7, 'http://fubi.ca/img/image_file_1706386869.webp', 'Ketchup Divina Mesa 180g', true);
INSERT INTO public.tb_produtos VALUES (1000, 3.99, 6, 'http://fubi.ca/img/image_file_1706387164.webp', 'Agua de Coco Integral Sococo 200ml', true);
INSERT INTO public.tb_produtos VALUES (1001, 1.99, 6, 'http://fubi.ca/img/image_file_1706387204.webp', 'Bebida Lactea Tirol Showkinho 200ml', true);
INSERT INTO public.tb_produtos VALUES (1002, 9.89, 10, 'http://fubi.ca/img/image_file_1706387223.webp', 'Pao de Alho Zinho 300g', true);
INSERT INTO public.tb_produtos VALUES (1003, 15.99, 10, 'http://fubi.ca/img/image_file_1706387307.webp', 'Pao de Alho Santa Massa Picante 400g', true);
INSERT INTO public.tb_produtos VALUES (164, 10.99, 4, '//img.sitemercado.com.br/produtos/7f31b422094301f5851c052696d69651f42dd6e121c9ed9e3df997015a218fe1_mini.jpg', 'Margarina Qualy Com Sal 500 g', true);
INSERT INTO public.tb_produtos VALUES (1004, 4.49, 4, 'http://fubi.ca/img/image_file_1706387489.webp', 'Margarina Claybom 240g', true);
INSERT INTO public.tb_produtos VALUES (1005, 9.89, 4, 'http://fubi.ca/img/image_file_1706547745.webp', 'Presunto Cozido Fatiado Di Castro 200g', true);
INSERT INTO public.tb_produtos VALUES (1007, 12.89, 4, 'http://fubi.ca/img/image_file_1706547924.webp', 'Queijo Prato Di Castro 150g', true);
INSERT INTO public.tb_produtos VALUES (1006, 10.89, 4, 'http://fubi.ca/img/image_file_1706547808.webp', 'Queijo Mussarela Di Castro 150g', true);
INSERT INTO public.tb_produtos VALUES (1008, 9.89, 4, 'http://fubi.ca/img/image_file_1706548959.webp', 'Mortadela Di Castro 200g', true);
INSERT INTO public.tb_produtos VALUES (1009, 3.99, 15, 'http://fubi.ca/img/image_file_1706549502.webp', 'Sabonete Palmolive 85g Nutricao Cremosa', true);
INSERT INTO public.tb_produtos VALUES (1010, 3.99, 15, 'http://fubi.ca/img/image_file_1706549523.webp', 'Sabonete Palmolive 85g Nutricao Intensiva', true);
INSERT INTO public.tb_produtos VALUES (1013, 5.99, 15, 'http://fubi.ca/img/image_file_1706549671.webp', 'Sabonete Palmolive 150g Nutricao Cremosa', true);
INSERT INTO public.tb_produtos VALUES (1012, 5.99, 15, 'http://fubi.ca/img/image_file_1706549576.webp', 'Sabonete Palmolive 150g Esfoliacao Nutritiva', true);
INSERT INTO public.tb_produtos VALUES (1011, 5.99, 15, 'http://fubi.ca/img/image_file_1706549543.webp', 'Sabonete Palmolive 150g Nutricao Saudavel', true);
INSERT INTO public.tb_produtos VALUES (1014, 3.99, 15, 'http://fubi.ca/img/image_file_1706549762.webp', 'Sabonete Lux 85g Flor de Lotus', true);
INSERT INTO public.tb_produtos VALUES (1015, 3.99, 15, 'http://fubi.ca/img/image_file_1706549783.webp', 'Sabonete Lux 85g Orquidea Negra', true);
INSERT INTO public.tb_produtos VALUES (1016, 5.49, 15, 'http://fubi.ca/img/image_file_1706549800.webp', 'Sabonete Lux 125g Rosas Francesas', true);
INSERT INTO public.tb_produtos VALUES (1017, 5.49, 15, 'http://fubi.ca/img/image_file_1706549814.webp', 'Sabonete Lux 125g Lirio Azul', true);
INSERT INTO public.tb_produtos VALUES (958, 2.99, 1, 'http://fubi.ca/img/image_file_1706382970.webp', 'Vinagre da Ilha 750ml Branco', true);
INSERT INTO public.tb_produtos VALUES (1049, 6.49, 15, 'http://fubi.ca/img/image_file_1706552254.webp', 'Escova de Dente Colgate Macia', true);
INSERT INTO public.tb_produtos VALUES (1089, 25.99, 3, NULL, 'Bucho Bovino kg', true);
INSERT INTO public.tb_produtos VALUES (1090, 58.99, 3, NULL, 'Carré Carneiro kg', true);
INSERT INTO public.tb_produtos VALUES (1095, 20.99, 3, NULL, 'File Peito Frango kg', true);
INSERT INTO public.tb_produtos VALUES (1098, 27.99, 3, NULL, 'Fraldinha Bovina kg', true);
INSERT INTO public.tb_produtos VALUES (1100, 11.99, 3, NULL, 'Figado Bovino kg', true);
INSERT INTO public.tb_produtos VALUES (1101, 11.99, 3, NULL, 'Coxa Frango Recheada kg', true);
INSERT INTO public.tb_produtos VALUES (1104, 31.99, 3, NULL, 'Linguiça Fina Sereno kg', true);
INSERT INTO public.tb_produtos VALUES (1105, 17.49, 3, NULL, 'Linguica Toscana Sereno kg', true);
INSERT INTO public.tb_produtos VALUES (1106, 19.99, 3, 'http://fubi.ca/img/image_file_1706555273.webp', 'Carvao Machado 4kg', true);
INSERT INTO public.tb_produtos VALUES (1059, 21.99, 3, '//img.sitemercado.com.br/produtos/95b08d951ffc2f3a820bcb497a83f5480d870d3cb4cd50540a32b558cfb92cf3_mini.jpg', 'Costela Bovina Ponta Cheff', true);
INSERT INTO public.tb_produtos VALUES (1065, 19.99, 3, '//img.sitemercado.com.br/produtos/db711842270ac7db7bb91576c660d6787b2e6328e223af9b65f646f60d8b7fb9_mini.jpg', 'Coxinha da Asa kg', true);


--
-- TOC entry 4835 (class 0 OID 0)
-- Dependencies: 216
-- Name: tb_categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categorias_id_categoria_seq', 18, true);


--
-- TOC entry 4836 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categorias_id_categoria_seq1', 16, false);


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_itempedido_id_itempedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_itempedido_id_itempedido_seq', 11, true);


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_itempedido_id_itempedido_seq1', 1, false);


--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_pedidos_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pedidos_id_pedido_seq', 13, true);


--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pedidos_id_pedido_seq1', 1, false);


--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_produtos_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_produtos_id_produto_seq', 1106, true);


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_produtos_id_produto_seq1', 694, false);


--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 227
-- Name: usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_seq', 1, false);


--
-- TOC entry 4659 (class 2606 OID 41535)
-- Name: tb_categorias tb_categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categorias
    ADD CONSTRAINT tb_categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 4661 (class 2606 OID 41537)
-- Name: tb_itempedido tb_itempedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_pkey PRIMARY KEY (id_itempedido);


--
-- TOC entry 4663 (class 2606 OID 41539)
-- Name: tb_pedidos tb_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pedidos
    ADD CONSTRAINT tb_pedidos_pkey PRIMARY KEY (id_pedido);


--
-- TOC entry 4665 (class 2606 OID 41541)
-- Name: tb_produtos tb_produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT tb_produtos_pkey PRIMARY KEY (id_produto);


--
-- TOC entry 4668 (class 2606 OID 41542)
-- Name: tb_produtos fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria) REFERENCES public.tb_categorias(id_categoria) ON DELETE CASCADE;


--
-- TOC entry 4666 (class 2606 OID 41547)
-- Name: tb_itempedido tb_itempedido_fk_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_fk_pedido_fkey FOREIGN KEY (fk_pedido) REFERENCES public.tb_pedidos(id_pedido);


--
-- TOC entry 4667 (class 2606 OID 41552)
-- Name: tb_itempedido tb_itempedido_fk_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_fk_produto_fkey FOREIGN KEY (fk_produto) REFERENCES public.tb_produtos(id_produto);


--
-- TOC entry 4669 (class 2606 OID 41557)
-- Name: tb_produtos tb_produtos_fk_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT tb_produtos_fk_categoria_fkey FOREIGN KEY (fk_categoria) REFERENCES public.tb_categorias(id_categoria) ON DELETE CASCADE;


-- Completed on 2024-01-30 20:10:14

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-19 13:22:19

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
-- TOC entry 221 (class 1259 OID 41078)
-- Name: tb_categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categorias (
    id_categoria integer NOT NULL,
    desc_categoria character varying(255)
);


ALTER TABLE public.tb_categorias OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 41072)
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
-- TOC entry 220 (class 1259 OID 41077)
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
-- Dependencies: 220
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categorias_id_categoria_seq1 OWNED BY public.tb_categorias.id_categoria;


--
-- TOC entry 227 (class 1259 OID 41108)
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
-- TOC entry 216 (class 1259 OID 41073)
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
-- TOC entry 226 (class 1259 OID 41107)
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
-- Dependencies: 226
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_itempedido_id_itempedido_seq1 OWNED BY public.tb_itempedido.id_itempedido;


--
-- TOC entry 223 (class 1259 OID 41085)
-- Name: tb_pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_pedidos (
    id_pedido integer NOT NULL,
    entregue boolean,
    url_pedido character varying(1024),
    bairro_pedido character varying(255),
    cidade_pedido character varying(255),
    logradouro_pedido character varying(255),
    nome_cliente_pedido character varying(255),
    numero_predial_pedido character varying(255),
    opcao_pagamento character varying(255),
    referencia_pedido character varying(255),
    tel_cliente_pedido character varying(255),
    data_criado timestamp(6) without time zone,
    data_entregue timestamp(6) without time zone
);


ALTER TABLE public.tb_pedidos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 41074)
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
-- TOC entry 222 (class 1259 OID 41084)
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
-- Dependencies: 222
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pedidos_id_pedido_seq1 OWNED BY public.tb_pedidos.id_pedido;


--
-- TOC entry 225 (class 1259 OID 41094)
-- Name: tb_produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_produtos (
    id_produto integer NOT NULL,
    preco_produto double precision,
    fk_categoria bigint,
    imagem_produto character varying(1024),
    nome_produto character varying(255)
);


ALTER TABLE public.tb_produtos OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 41075)
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
-- TOC entry 224 (class 1259 OID 41093)
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
-- Dependencies: 224
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_produtos_id_produto_seq1 OWNED BY public.tb_produtos.id_produto;


--
-- TOC entry 219 (class 1259 OID 41076)
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
-- TOC entry 4654 (class 2604 OID 41081)
-- Name: tb_categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.tb_categorias_id_categoria_seq1'::regclass);


--
-- TOC entry 4657 (class 2604 OID 41111)
-- Name: tb_itempedido id_itempedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido ALTER COLUMN id_itempedido SET DEFAULT nextval('public.tb_itempedido_id_itempedido_seq1'::regclass);


--
-- TOC entry 4655 (class 2604 OID 41088)
-- Name: tb_pedidos id_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.tb_pedidos_id_pedido_seq1'::regclass);


--
-- TOC entry 4656 (class 2604 OID 41097)
-- Name: tb_produtos id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos ALTER COLUMN id_produto SET DEFAULT nextval('public.tb_produtos_id_produto_seq1'::regclass);



--
-- TOC entry 4835 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categorias_id_categoria_seq', 5, false);


--
-- TOC entry 4836 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categorias_id_categoria_seq1', 5, false);


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 216
-- Name: tb_itempedido_id_itempedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_itempedido_id_itempedido_seq', 6, false);


--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_itempedido_id_itempedido_seq1', 6, false);


--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_pedidos_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pedidos_id_pedido_seq', 6, false);


--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pedidos_id_pedido_seq1', 6, false);


--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_produtos_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_produtos_id_produto_seq', 111, true);


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_produtos_id_produto_seq1', 111, false);


--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_seq', 1, false);


--
-- TOC entry 4659 (class 2606 OID 41083)
-- Name: tb_categorias tb_categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categorias
    ADD CONSTRAINT tb_categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 4665 (class 2606 OID 41113)
-- Name: tb_itempedido tb_itempedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_pkey PRIMARY KEY (id_itempedido);


--
-- TOC entry 4661 (class 2606 OID 41092)
-- Name: tb_pedidos tb_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pedidos
    ADD CONSTRAINT tb_pedidos_pkey PRIMARY KEY (id_pedido);


--
-- TOC entry 4663 (class 2606 OID 41101)
-- Name: tb_produtos tb_produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT tb_produtos_pkey PRIMARY KEY (id_produto);


--
-- TOC entry 4666 (class 2606 OID 41125)
-- Name: tb_produtos fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria) REFERENCES public.tb_categorias(id_categoria) ON DELETE CASCADE;


--
-- TOC entry 4668 (class 2606 OID 41114)
-- Name: tb_itempedido tb_itempedido_fk_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_fk_pedido_fkey FOREIGN KEY (fk_pedido) REFERENCES public.tb_pedidos(id_pedido);


--
-- TOC entry 4669 (class 2606 OID 41119)
-- Name: tb_itempedido tb_itempedido_fk_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_fk_produto_fkey FOREIGN KEY (fk_produto) REFERENCES public.tb_produtos(id_produto);


--
-- TOC entry 4667 (class 2606 OID 41132)
-- Name: tb_produtos tb_produtos_fk_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT tb_produtos_fk_categoria_fkey FOREIGN KEY (fk_categoria) REFERENCES public.tb_categorias(id_categoria) ON DELETE CASCADE;


-- Completed on 2024-01-19 13:22:22

--
-- PostgreSQL database dump complete
--

-- Sequências para tb_categorias
SELECT setval('tb_categorias_id_categoria_seq', (SELECT COALESCE(MAX(id_categoria), 0) FROM tb_categorias) + 1, false);
SELECT setval('tb_categorias_id_categoria_seq1', (SELECT COALESCE(MAX(id_categoria), 0) FROM tb_categorias) + 1, false);

-- Sequências para tb_itempedido
SELECT setval('tb_itempedido_id_itempedido_seq', (SELECT COALESCE(MAX(id_itempedido), 0) FROM tb_itempedido) + 1, false);
SELECT setval('tb_itempedido_id_itempedido_seq1', (SELECT COALESCE(MAX(id_itempedido), 0) FROM tb_itempedido) + 1, false);

-- Sequências para tb_pedidos
SELECT setval('tb_pedidos_id_pedido_seq', (SELECT COALESCE(MAX(id_pedido), 0) FROM tb_pedidos) + 1, false);
SELECT setval('tb_pedidos_id_pedido_seq1', (SELECT COALESCE(MAX(id_pedido), 0) FROM tb_pedidos) + 1, false);

-- Sequências para tb_produtos
SELECT setval('tb_produtos_id_produto_seq', (SELECT COALESCE(MAX(id_produto), 0) FROM tb_produtos) + 1, false);
SELECT setval('tb_produtos_id_produto_seq1', (SELECT COALESCE(MAX(id_produto), 0) FROM tb_produtos) + 1, false);

INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (1, 'Alimentos basicos');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (2, 'Feira');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (3, 'Carnes aves e peixes');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (4, 'Frios e laticinios');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (5, 'Biscoitos e salgadinhos');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (6, 'Bebidas');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (7, 'Molhos condimentos e conservas');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (8, 'Leites e iogurtes');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (9, 'Doces e sobremesas');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (10, 'Congelados');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (11, 'Matinais');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (12, 'Padaria');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (13, 'Utensilios para o lar');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (14, 'Limpeza');
INSERT INTO tb_categorias (id_categoria, desc_categoria) VALUES (15, 'Higiene e cuidados pessoais');
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.44, 1, '//img.sitemercado.com.br/produtos/b7be90bc5f20d704557c305438973ebfffe1923c88df7eb860deb5b3eb947062_mini.jpg', 'Arroz Parboilizado Buriti Pacote 5Kg.', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.09, 2, '//img.sitemercado.com.br/produtos/79569f2df93ab2e1bfd24fec9e34a9744d29fe1a80ed69fe2fe241c62e92fcb4_mini.jpg', 'Arroz Parboilizado Tipo 1 Buriti Pacote 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (23.97, 3, '//img.sitemercado.com.br/produtos/8abbc27035547f45a37e936cf5a504f7d25a3bc8444e39f2d9abe4edd8f90df7_mini.jpg', 'Arroz Parboilizado Tipo 1 Namorado 5Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.29, 4, '//img.sitemercado.com.br/produtos/1a0c8c610dabfbff753f1a442d7e93d64936255faef402b3f085154bd0d49e43_mini.jpg', 'Arroz Integral Buriti Pacote 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (35.49, 5, '//img.sitemercado.com.br/produtos/510dd89cba8e5897f7f2ae44adb13db82f615c5451f5204b81c64a4f329ea7dd_mini.jpg', 'Arroz Tipo 1 Zaeli Agulhinha Embalagem 5Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (35.9, 6, '//img.sitemercado.com.br/produtos/7485a763934804936ef96a3d6b40e9015dab4010a7c1a998abed61b582670940_mini.jpg', 'Arroz Branco Tipo 1 Prato Fino 5kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.05, 7, '//img.sitemercado.com.br/produtos/fb1a862decbf2b2448cd740d8514df118eb498cbb4e823c03de13078fb025848_mini.jpg', 'Arroz Agulhinha Tipo 1 Buriti', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 8, '//img.sitemercado.com.br/produtos/badacd2bbe194683508d5c8a077498afd8d538df88549b548def7b6f386629f6_mini.jpg', 'Óleo de Soja Vila Velha 900 ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.49, 9, '//img.sitemercado.com.br/produtos/04d9059cee26a5c4067eb434319c307b2fc52299012539f11ebf16df2b6ead40_mini.jpg', 'Óleo de Soja Coamo 900ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.15, 10, '//img.sitemercado.com.br/produtos/94bc5b92be1d7df71566c9e6a788b57eaf769425c447c168751c77236cc92dbb_mini.jpg', 'Vinagre de Álcool Chemim 750Ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (34.9, 11, '//img.sitemercado.com.br/produtos/0aef4fd021cfa82d16575640793698359e8feb3e93413d12f0aacbdf4c57c172_hero_mini.jpg', 'Azeite Português Extra Virgem Andorinha 250ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.19, 12, '//img.sitemercado.com.br/produtos/4f0e5a1cab6f67a77be96a3a6ed2af52f35bc2ef4fb4900cef5e2b4bed22d5ef_mini.jpg', 'Vinagre Maçã Castelo 750ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (45.99, 13, '//img.sitemercado.com.br/produtos/08171e51c32d68364ee90fc42f372b4804bff180cef440532f29a671f06c47c2_mini.jpg', 'Azeite Oliva Extra Virgem Gallo 500ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (57.9, 14, '//img.sitemercado.com.br/produtos/4a376a567d0737dfb6db5c006a435bbe2d0a7419bf6d5a7d4f97b9e7c9a2eb56_mini.jpg', 'Azeite Oliva Borges Ev Vd 500Ml Clas', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.98, 16, '//img.sitemercado.com.br/produtos/3b462ebe47d9ca8064e11d4a3ddfe8a3ab50b8fabae85ccae5c15f1968c8babf_hero_mini.jpg', 'Ovos Brancos Real Agro c/12un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.99, 17, '//img.sitemercado.com.br/produtos/bddac251b059a4bbf8ac88299ba66d2a6e6bf1a9c4b282c38ee128b247d2f022_mini.jpg', 'Ovos Brancos Tipo Grande Mantiqueira Bandeja 30 Un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 18, '//img.sitemercado.com.br/produtos/a3be5bc2e04ff340e4898b1f83c3be5dfc2e5b622f2a352b175125550abc50ec_mini.jpg', 'Ovo Branco Bandeja 30Un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.98, 19, '//img.sitemercado.com.br/produtos/e8b316f7ced7eb4a6b135a5c4564c76db032e4b0f34c1c6435dcf70fa969f849_mini.jpg', 'Ovo Galinha Extra 12Un Cortez', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 20, '//img.sitemercado.com.br/produtos/b115f102a573e99d8402dd43611c41b38c880f8881182e377bc5f6962a9a4482_mini.jpg', 'Ovos Brancos Grande Granja Feliz com 30Un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 21, '//img.sitemercado.com.br/produtos/90f5e0c3a8e6fbaed788adf098c75eae6fe8aa1ef19c16c6bbb7981509f1b0ba_mini.jpg', 'Ovos Brancos Médios 30 Unidades', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 22, '//img.sitemercado.com.br/produtos/9a665b5bd10e429f6f28b4d33205a027b20796e2df23f386c3696a185efd108a_mini.jpg', 'Ovo Branco Tipo Grande Katayama Bandeja 30 Un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 23, '//img.sitemercado.com.br/produtos/969c2ab5da64476fe975208bb105d7c6426f3ef716aaabb5ef7d9aba8fafd6c9_mini.jpg', 'Ovos Branco Tipo Médio Ovos Prata com 30Un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.98, 24, '//img.sitemercado.com.br/produtos/8525664bc0baf0717e944ba276f00daf72900c274085a83b04d52d661412b3d7_mini.jpg', 'Açúcar Refinado Especial Caravelas 1kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.98, 25, '//img.sitemercado.com.br/produtos/cde0e10308fe65dadb69e164811abb4035616e6f4a261ab0192aa4744961ddae_mini.jpg', 'Açúcar Refinado Caravelas 5kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.49, 26, '//img.sitemercado.com.br/produtos/ec42bf85ae2ffa3247f0750c5f1ba42bafcad80941ef4103487765e85a69cf16_mini.jpg', 'Adoçante Líquido Sacar Zero Cal 100Ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 27, '//img.sitemercado.com.br/produtos/003c0c4e5912b75a5c414fbc2eca4584bf4185d519497e925913d6492af68f21_mini.jpg', 'Açúcar Mascavo Condor', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.99, 28, '//img.sitemercado.com.br/produtos/dc75584f2f733b9619c398a81825a36d615baeaf215002c4255e0dc628a79e23_mini.jpg', 'Adoçante de Sucralose Zero Cal 100Ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.29, 29, '//img.sitemercado.com.br/produtos/0f7e21d092d864f969f41aa7c42e4e8ea097d3f63ec24612fe57ea3f2cbb4056_mini.jpg', 'Adoçante com Stévia Magro de 65Ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 30, '//img.sitemercado.com.br/produtos/ef9cab1901a2674fc6e75f712d4a3459b8ebde16357f67c5b332331d1881f96b_mini.jpg', 'Adoçante Líquido Adocyl 100Ml', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 31, '//img.sitemercado.com.br/produtos/6078f88f74e174b2852956e77cae0395c4de854f57b64a381bf26f6149e5e3d9_hero_mini.jpg', 'Açúcar Demerara Naturale União 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (86.45, 32, '//img.sitemercado.com.br/produtos/2f0bef6007a4f49b6155b574f405bb317f96ac20d5c8248fa8c916634d84d452_mini.jpg', 'Cesta Basica Aurora Tropical 11 Itens', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (39.9, 33, '//img.sitemercado.com.br/produtos/7e9e53de8995d36c9e2d9a437a021d7b6289af3ec58cd3e6d9d0aad2112ff8cc_hero_mini.jpg', 'Cesta de Natal Alegria Condor', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.49, 34, '//img.sitemercado.com.br/produtos/39e9bfccd1fb4477a70f6204a71d5d2faef56caac997f05d799d14c06c2a41eb_mini.jpg', 'Sal Refinado Moc 1kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.59, 35, '//img.sitemercado.com.br/produtos/989d8b4a35a997b1e8ff1e20df7dd65520f505285c35d135f2ebc449d150a4a5_mini.jpg', 'Sal Refinado Diana 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.69, 36, '//img.sitemercado.com.br/produtos/82fe205625c0d477249494b0eab53e257a9c2571747065a5cc41ab71a269c1db_mini.jpg', 'Sal Marinho Zaeli Natural 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.49, 37, '//img.sitemercado.com.br/produtos/bf05f37173a6bd0fd1014fdab9306f0363b3502bb52e2b1544f00a08f866ae8e_mini.jpg', 'Sal Marinho Jasmine Atlantis Pacote 1kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.05, 38, '//img.sitemercado.com.br/produtos/8a11d77b2f016a55e367e2ef79a05ce605f5c5832122d31c0242c8faf4037090_mini.jpg', 'Sal Grosso Diana 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.29, 39, '//img.sitemercado.com.br/produtos/061456aef514404c3f5dae808c8680de5d824e8fd8916f943ab4f6da2c4fe70e_mini.jpg', 'Sal do Himalaia Zaeli Fino 250G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.99, 40, '//img.sitemercado.com.br/produtos/3595a71d2e657c684c5d97c58084bd776513d4e854523e2d616e4c930367de58_mini.jpg', 'Tempero de Churrasco Ajinomoto 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 41, '//img.sitemercado.com.br/produtos/d482c83e3e8355e84a0c24ae4fb4a42f33283f15e2e37c00b9a19c0bb2780f74_mini.jpg', 'Sal Rosa Himalaia Strafit Moedor 90G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.29, 42, '//img.sitemercado.com.br/produtos/82ccaa905dc9af2a914008c13be9c42d10a4ffe0bd2016f796f7a6746c057072_mini.jpg', 'Feijão Carioca Tchê 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 43, '//img.sitemercado.com.br/produtos/a51e36e9788ddfb52f8737b77124cab0995b1f1a9da808538ab329d4c6361776_mini.jpg', 'Feijão Fradinho Caldo Bom 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 44, '//img.sitemercado.com.br/produtos/dac980c74a12a67f126ae8655719c137c3bb2faefe44176bb3c47e4b1c3f9a7f_mini.jpg', 'Feijão Vermelho Caldo Bom 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.79, 45, '//img.sitemercado.com.br/produtos/87c264eb4eb5d4ba6ed5cbdb790b1dcd0418f1d26afd3bb10ff469edda0d8776_mini.jpg', 'Feijão Cavalo Caldo Bom 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.79, 46, '//img.sitemercado.com.br/produtos/20ced64801de772523a18a8ec1ab85e56fc62b47563ea7e27eb526b74f15d5a1_mini.jpg', 'Feijão Branco Caldo Bom Alubia 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.58, 47, '//img.sitemercado.com.br/produtos/7e0c61a91125e0d4044764645e75eb20452233ed678b8db83387f680b14d8eae_mini.jpg', 'Feijao Carioca Vapza 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.5, 48, '//img.sitemercado.com.br/produtos/c0bd6f7cefcaabe77decb40d04695c1ffaf299f6d5cd09c739b4b069ccad55cb_mini.jpg', 'Feijão Branco Jandira 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.29, 49, '//img.sitemercado.com.br/produtos/b7ee3977f48d9ee6f2250abf3053e742a00151424987a36493d6bfcfcb072896_mini.jpg', 'Feijão Preto a Vapor Caldo Bom 250G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.18, 50, '//img.sitemercado.com.br/produtos/b3d2bd17208a718ecaed0bc672cb4abec6b68966d59153725a516b99681f72a5_mini.jpg', 'Lentilha Camil Pacote 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.19, 51, '//img.sitemercado.com.br/produtos/a7c4894154d063bd31c8b115484c39d2e7da74efa79faaa5a37b758a5fa0a636_mini.jpg', 'Lentilha Caldo Bom Pacote 400g', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.09, 52, '//img.sitemercado.com.br/produtos/a8aac65faa1a920b9f12bbd705cb18f747327829e9b5c4652ffd31c945eb45e9_mini.jpg', 'Milho para Pipoca Zaeli 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.39, 53, '//img.sitemercado.com.br/produtos/68c5a480ebb72e11fd272e04098035b9d1aafb2cf96c62202ea646cfd0d2470e_mini.jpg', 'Quirerinha Campo Largo Embalagem 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.69, 54, '//img.sitemercado.com.br/produtos/c44e1bd1b7d58e5e98283ba88fe3ae8ea37d0229aa789931272bbcd38b0c5f64_mini.jpg', 'Milho para Pipoca Caldo Bom 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.69, 55, '//img.sitemercado.com.br/produtos/d79d9aaa877b72ca76467c2acbe03f91fe8ad1630911dc94c6b8052f066ca310_mini.jpg', 'Trigo para Quibe Caldo Bom 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 56, '//img.sitemercado.com.br/produtos/34cde5fd94405aef6cd830403a5490e09b39a885760613ecf5c002372eaef4db_mini.jpg', 'Quirera Fina Caldo Bom 400G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 57, '//img.sitemercado.com.br/produtos/d5837f0fed100377822dd1dce4d8d3ebf6a8af8a650eb5ed1e8bbc3cf2ea7cb6_mini.jpg', 'Chia em Grãos Vitao 150G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.29, 58, '//img.sitemercado.com.br/produtos/d177a217055f2c8132a99082d0adc2abe10277bb6b4bf4bcff75ffb62872a2f0_mini.jpg', 'Farofa Pronta de Milho Caldo Bom 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.75, 59, '//img.sitemercado.com.br/produtos/a72b3aa1faea7fa3f4b352caf96f0365dca478715d9aab7c7854387fcda92cf3_mini.jpg', 'Polvilho Azedo Jandira Embalagem 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 60, '//img.sitemercado.com.br/produtos/f74a88c941103b8d346d2dfd53fc360f0f05e7d4a8b8d33a73197bd3cbad9b92_mini.jpg', 'Farofa de Mandioca Tradicional Yoki 250G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.89, 61, '//img.sitemercado.com.br/produtos/9b2cadec9b834db1174833765ad61f79022e58683075d12b720083e4af413a5b_mini.jpg', 'Tapioca Rocha 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.59, 62, '//img.sitemercado.com.br/produtos/60327479d6faf17dfd6939afaf8709f32ea73db41e7640367e868fcf2b1e6675_mini.jpg', 'Fécula de Mandioca para Tapioca Pinduca Embalagem 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 63, '//img.sitemercado.com.br/produtos/48f43cad1b711b95e53df988f7827f4ede40bb028eb76a283e947cde2f6af73f_mini.jpg', 'Fubá Mimoso Zaeli 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 64, '//img.sitemercado.com.br/produtos/f40e2743fea853168814649b56247ca06024dda6d9d609ca4a2484399e65c276_mini.jpg', 'Farofa Pronta Caldo Bom Cebola Crocante 250G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.29, 65, '//img.sitemercado.com.br/produtos/3923bca0ceb8ccf0852aca81e2a7b2b31704ef837da061e296cec8af46e52df3_mini.jpg', 'Fubá de Milho Amarelo Campo Largo Pacote 1Kg', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 66, '//img.sitemercado.com.br/produtos/18fb90593544b00af2c7e7299a39619cc2b4e6622aca360b53c066cd3af6f3ac_mini.jpg', 'Macarrão Instantâneo Lámen Galinha Caipira 85G Nissin Leve6 Pague5un', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.99, 67, '//img.sitemercado.com.br/produtos/03fec1b7be058fa236bb4a323e2dad7315157790036f8d4069cfe1b18bb70574_hero_mini.jpg', 'Macarrão Instantâneo Sabor Galinha Caipira Nissin 85G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.59, 68, '//img.sitemercado.com.br/produtos/0e04af244830cab8be07f2aaa3c1308ac1fc1a5e5e10d8fc20308d9d53b24a34_mini.jpg', 'Macarrão Espaguete N5 Todeschini com Ovos Pacote 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.5, 69, '//img.sitemercado.com.br/produtos/44f72233ed41ec049ffd95dbdc712461a72cee14a3d3633d414f866127bdb0c8_mini.jpg', 'Macarrão com Ovos Espaguete Nº8 Barilla 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.55, 70, '//img.sitemercado.com.br/produtos/2d795d8d75a86a8f586d34bbad3994e7af4eb8f42efa6a9e189a593e16c2f3b8_mini.jpg', 'Miojo Lámen de Tomate Suave Nissin 85G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.39, 71, '//img.sitemercado.com.br/produtos/9f16acff549282a9eefd1d459daad8eb59100f03d0ee99bada3b0af07b8e5d20_mini.jpg', 'Macarrão Fettuccini Todeschini com Ovos Pacote 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.49, 72, '//img.sitemercado.com.br/produtos/74a860eb73eff9ff4029839dfd6c6e92a338c65f19b5ae7b6fc71f305581610e_mini.jpg', 'Massa Condor Caseira Speciale 500G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.45, 73, '//img.sitemercado.com.br/produtos/46a988ec8f676ab16c3049c4a1d9d3364bfb165fa818324e468ca6263125b4ed_mini.jpg', 'Massa para Macarrão de Sêmola Espaguete Isabela 400G', 1);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 74, '//img.sitemercado.com.br/produtos/66b597ce2d6db8d689f6bc2b9b46a1abf54c3193e7aa2967c71a299806c17218_mini.jpg', 'Banana Prata...', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.14, 75, '//img.sitemercado.com.br/produtos/68fd5fdecfee878b34fd05472038587bb1b9e47e7615ed61daccefb5f8c736f0_mini.jpg', 'Limão Taiti', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.79, 76, '//img.sitemercado.com.br/produtos/e64345495623f5a22572046d14787ea67103fe91ad5ac576d8c298591ef85a4e_mini.jpg', 'Banana Caturra', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.49, 77, '//img.sitemercado.com.br/produtos/0632faa35d818029123d03881edc80ff321428e0ba39b751fa2f0672e10179f3_mini.jpg', 'Laranja Pera', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 78, '//img.sitemercado.com.br/produtos/ac289b689f4cd05f7b90e88ae844daf50754fba1b80fd37c88ea229f59e843de_mini.jpg', 'Mamão Havai Papaia', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.98, 79, '//img.sitemercado.com.br/produtos/dcea498bf02d9f68878cb573d583339a9bca615b8d0bdd689f16e8898463875e_mini.jpg', 'Maçã', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.87, 80, '//img.sitemercado.com.br/produtos/b28da5a8b218d0c2f8591368b413e9a48a9edb1ba95a0ade114f60eb7ea23f26_mini.jpg', 'Melão Espanhol  Kg', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.29, 81, '//img.sitemercado.com.br/produtos/b14293de73d02b172f1af13fbd28893b29222f0e36b91695505d5f0ca73e5387_mini.jpg', 'Manga Palmer', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.99, 82, '//img.sitemercado.com.br/produtos/47de6637d1c14f541c9ecf122debef2011031b412869a695cdf8a038f8134ba7_mini.jpg', 'Batata', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.16, 83, '//img.sitemercado.com.br/produtos/dd4141363ffcf805cc94568e0c246a980777d15616dbc660df79ea655fcf70aa_mini.jpg', 'Cebola', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 84, '//img.sitemercado.com.br/produtos/590002c20d6fee25526838d66c6121aeb02ff61af144494ef2486df6672659c3_mini.jpg', 'Tomate Italiano', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 85, '//img.sitemercado.com.br/produtos/26552fbcd68f25b2eae9c4b541c74a308e64c9c4afd99b00dddd5a5d30c3058a_mini.jpg', 'Cenoura', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.39, 86, '//img.sitemercado.com.br/produtos/4bcac55f0cea08c2c3f334a70f49bc2110af906b389747fbf3f7fded7b9fc7d5_mini.jpg', 'Beterraba kgl', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 87, '//img.sitemercado.com.br/produtos/6f4ad4f6bb61d9d9715742fd39c8e670d887a51a5b13169e98f5042a89901ac5_mini.jpg', 'Chuchu', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.79, 88, '//img.sitemercado.com.br/produtos/218bf97110b782efe3557a705faef97131ac63caf52146b0d0528c343a58fabb_mini.jpg', 'Pepino   Japonês Kg', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.69, 89, '//img.sitemercado.com.br/produtos/455ff0b6ccfae461c091489fb4c668e7485df2b8187154f97c30b9ac773d645f_mini.jpg', 'Abobrinha Verde', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.7, 90, '//img.sitemercado.com.br/produtos/6168eb76ce4f7c7384607786738285f1aee45a74d21b615946fef3574bfe517a_mini.jpg', 'Alho', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.29, 91, '//img.sitemercado.com.br/produtos/4fb4ee0fce783a77ca697666266ce0a1a8bdae27376713da6a6b9f95935b07bc_mini.jpg', 'Cheiro Verde Maço Unidade', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.99, 92, '//img.sitemercado.com.br/produtos/d71bf29b4661ccc803c49adaf401e55b9e0b50503270fb7db49ede81846e6f00_mini.jpg', 'Salsinha Maço', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 93, '//img.sitemercado.com.br/produtos/10d2468c30d5e09f1e6d6c02f952a1abbefea15b1abadfc31cc5b5b23e5eaa3e_mini.jpg', 'Alho Descascado Hoshina 150G', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.99, 94, '//img.sitemercado.com.br/produtos/4b99385a21ddd80da35180ecbcf1c1538db3641e64346799a8fa72b32939ec0f_mini.jpg', 'Alho Hoshina Descascado 400G', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.9, 95, '//img.sitemercado.com.br/produtos/53fa211b2dd8809f0fb987e4e1fa230025186aaf73e236a13d63f7ddce51a857_mini.jpg', 'Gengibre', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 97, '//img.sitemercado.com.br/produtos/95831be0a6d0504a8c9d788b42be1601c69138bca75f74bcbee475c0aa9a0400_mini.jpg', 'Coentro Strapasson Embalagem 100G', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 98, '//img.sitemercado.com.br/produtos/4053bbbf12d68870cb03b57d3590c3c392f86053026a9d9d09b04ff321b3f5bb_mini.jpg', 'Escarola Un', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 99, '//img.sitemercado.com.br/produtos/65bd98521f5383282a3c9a671d8ec70babd4eab3328e24253e57fbe5d0b59926_mini.jpg', 'Alface Crespa Unidade', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 100, '//img.sitemercado.com.br/produtos/070d9941886d258c8aebfbe5b09be9c303a9c833b3e79c60ec0c49dce713f355_mini.jpg', 'Rúcula Maço', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.49, 101, '//img.sitemercado.com.br/produtos/4256650a02a8db6b134d8c8496b62188754c4026a3fe0c0c8fc41dcabb368bd2_mini.jpg', 'Repolho Verde Un', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 102, '//img.sitemercado.com.br/produtos/62f19a73c06c07e1fc26724497dddc97b7ddd43fb5ce4e1a9fc35221fa37a34a_mini.jpg', 'Couve Manteiga Maço', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.49, 103, '//img.sitemercado.com.br/produtos/56fc9c8330a8d57edceba863a1c20891298ff826f4cebc2d215c75efaa655541_mini.jpg', 'Brócolis', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 105, '//img.sitemercado.com.br/produtos/8b13a76d41d9b90378815dbdde3ae487c6fab0a6bd9c04d9a9ebedaf2d73e4db_mini.jpg', 'Acelga Unid.', 2);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (119.9, 106, '//img.sitemercado.com.br/produtos/73a484f23d11a8eb4dc971cbba588650c46c20877b3900c5edbac3928dd11d4e_mini.jpg', 'Picanha Bovina Reserva Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.97, 107, '//img.sitemercado.com.br/produtos/2f6774453a41d95a3193958d39096ecdd22d719e8b16754fac3612a7ca5c0bb4_mini.jpg', 'Carne Bovino Musculo 1Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.73, 108, '//img.sitemercado.com.br/produtos/6e9775b6a81b970d685fced5b735312a8da8c7e467cf687652f3e49ff239c982_mini.jpg', 'Coxão Mole Resfriado', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.98, 109, '//img.sitemercado.com.br/produtos/afdb5ca182fe2608460958dcdd581453fd659827bb71793040a3ec902a53ef12_mini.jpg', 'Carne Moída Bovina Congelada Friboi 500G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.97, 110, '//img.sitemercado.com.br/produtos/95b08d951ffc2f3a820bcb497a83f5480d870d3cb4cd50540a32b558cfb92cf3_mini.jpg', 'Costela Minga Bovina do Chef Congelada Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (69.9, 111, '//img.sitemercado.com.br/produtos/beb818d99011f1feaee665fa5f05563256b834d3bd7d1b36170f2eb53fe72b59_mini.jpg', 'Filé Mignon Bovino', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (35.97, 112, '//img.sitemercado.com.br/produtos/bc8c566491d31c38028bdee929ef5b2309d755bafe6ae16afff13a5fa5210a3f_mini.jpg', 'Miolo da Alcatra Bovina Pedaço a Vácuo Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (36.69, 113, '//img.sitemercado.com.br/produtos/16305979546294cfc171ba1e1ba46ea940c028f8c738e840cc59d641a7f599eb_mini.jpg', 'Posta Vermelha Bovina Bife Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.79, 114, '//img.sitemercado.com.br/produtos/83e06c111c26fef2a439df87c720ce93ca59d54dcd8d706f5e665d257e6d3a26_mini.jpg', 'Frango Coxa Sobre Coxa', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.08, 115, '//img.sitemercado.com.br/produtos/c0970f1331ec076f87c409e18359b14b4d5741120fdd8e4480d4cd8b12f743df_mini.jpg', 'Carne Frango Filé de Peito Congelado Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.9, 116, '//img.sitemercado.com.br/produtos/db711842270ac7db7bb91576c660d6787b2e6328e223af9b65f646f60d8b7fb9_mini.jpg', 'Coxinha da Asa Congelada   Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.9, 117, '//img.sitemercado.com.br/produtos/d79f4a8c997da8cde7737a3145f221af7361c8f339e023e086d50510a3da7f54_mini.jpg', 'Frango Maringá  Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.59, 118, '//img.sitemercado.com.br/produtos/73fd1cc65654b2f6621f5a2c87471cb5b747ef4f3078cd2ca7a4dc385988f14f_mini.jpg', 'Frango Caipira Nhô Bento Kgs', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.89, 119, '//img.sitemercado.com.br/produtos/ef7b79514551a4bea8253f8d55ea36789328b332228d456aab869d1cac898ed3_mini.jpg', 'Coxinha da Asa de Frango Congelado Nat 1Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (22.99, 120, '//img.sitemercado.com.br/produtos/60d5877c1304c4d3b72ead677ef4c29460a9506269c84a8f8f95d4b246025d76_mini.jpg', 'Filézinho Sassami de Frango Congelado e Temperado Marinados Sadia 1Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 121, '//img.sitemercado.com.br/produtos/fd123f370cc46fb52e9b90afa4deb8047693a09031b01154fb8f3760ec69ef74_hero_mini.jpg', 'Filé de Peito de Frango Temperado Cozido Desfiado Congelado Copacol 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.98, 122, '//img.sitemercado.com.br/produtos/b8f2a42f8664dd246ad340825e3a42e59f257c74485d1dfcde8e686c11e9bd74_mini.jpg', 'Linguiça Mista Frescal Bizinelli 1Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.59, 123, '//img.sitemercado.com.br/produtos/cb00fcb07dac6b136378ccae490c00cce831752104f52c5f7a4696b3255c05b0_mini.jpg', 'Linguiça Calabresa Fricasa', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.99, 124, '//img.sitemercado.com.br/produtos/389b4e8ad2bcd202e7df9ba5b7c7ebf16783d63635e416d55587fb45715d7902_mini.jpg', 'Linguiça Calabresa Alegra', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (23.9, 125, '//img.sitemercado.com.br/produtos/3ea6939d13ff13a36fd7e06e2caf74a1ad2dff3258812b81429ca49d6ac88336_mini.jpg', 'Linguiça Calabresa Defumada Frimesa Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (31.98, 126, '//img.sitemercado.com.br/produtos/3cc2eb24bd2ed396e54278cbaf811d04200369070d59fa11223cf5f348c5183a_mini.jpg', 'Linguica Bizinelli Fina Especial Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (32.49, 127, '//img.sitemercado.com.br/departamentos/carnes-aves-e-peixes_ind.jpg', 'Linguiça  Calabresa Perdigão', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 128, '//img.sitemercado.com.br/produtos/c7e0867cda276a231de8821b103eb4308390ecd7ad5e12f2239fb30e8052cf9c_hero_mini.jpg', 'Linguiça de Frango Copacol Fina Congelada 800G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.39, 129, '//img.sitemercado.com.br/produtos/de23e6375502f395b69d1a0b29156d3ac31a8007be7162d64bf64525da10e752_mini.jpg', 'Linguiça de Frango Fina Copacol Pacote 800G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (33.79, 130, '//img.sitemercado.com.br/produtos/8ad7a4e03face101db4a9ba433a806cec81ee05bb77b60ba9492dd544fe0c200_mini.jpg', 'Bacon Defumado Sadia', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.99, 131, '//img.sitemercado.com.br/produtos/71ba2df4bc006701f2b650bb0389eb6ca22f1f6f485386180bc0796125bff7b8_mini.jpg', 'Bacon Alegra Tablete', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (30.89, 132, '//img.sitemercado.com.br/produtos/036301a9fbd7d4a5d093d4d5657f06e16eeb0246d77c54d71958c2508738599d_mini.jpg', 'Bacon Alegra Pedaço', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.89, 133, '//img.sitemercado.com.br/produtos/8463c77f4dee44a409b1f154297d01851fe17c68fce760ce334e2886b146136f_hero_mini.jpg', 'Bacon Seara em Cubos 140G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.98, 134, '//img.sitemercado.com.br/produtos/98666c949376cdd588fd31990d66520963bc2602751fb90200b182c8a58c4186_mini.jpg', 'Bacon em Fatias Perdigão 250G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (31.99, 135, '//img.sitemercado.com.br/produtos/b3303a84367fd6a8a35fe00de816a6a7d04a59f2cc67ba2e0a04fd7dff23011d_mini.jpg', 'Bacon Paleta Fricasa Extra', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (38.82, 136, '//img.sitemercado.com.br/produtos/bd1e9591693208a1f0932a4423b9a18eac82a4ae633dd1152ec199c77f39d9dc_mini.jpg', 'Costela Suína Defumada Bizinelli', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.69, 137, '//img.sitemercado.com.br/produtos/79e8105455bfa9ffe6bd2c5460025b3de6fbd3c1b2329ad7970d3769e0942bb0_mini.jpg', 'Bacon Defumado em Fatias Aurora 250G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (27.79, 138, '//img.sitemercado.com.br/produtos/6babf9194083bd8efbb1f4bfa78a9daa6c93a91cdf692fc97c6183da946754b5_mini.jpg', 'Tilápia Congelada Copacol Filé Pacote 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.55, 139, '//img.sitemercado.com.br/produtos/82a86cc3f851e33ea5cba7cae28361c9ba8ed2cc29ab08be0e558390087893ec_mini.jpg', 'Filé de Tilápia Smartfish Congelado Pacote 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (42.9, 140, '//img.sitemercado.com.br/produtos/3eb4c604aa810bb47c8ebe80e20c77faeac629468d00e3d6b90dde81b70d8071_hero_mini.jpg', 'Filé de Tilápia Congelada Copacol 800G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (21.9, 141, '//img.sitemercado.com.br/produtos/49cede4ebdc7691cbc1e67d4f872cf5fc1fbedeed14962a6e3ee380bc79a7ce7_mini.jpg', 'Posta de Tilápia Copacol 800G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (31.08, 142, '//img.sitemercado.com.br/produtos/2d823365a5a8148c4e21528dce50d143ed969f92789be7c4f9058f304c4226f5_mini.jpg', 'Tilápia Congelada Copacol Petisco Pacote 600G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (21.9, 143, '//img.sitemercado.com.br/produtos/28b6905253085366515397de20cae95da2a6f8b073155f621d6aa932a8ef9d56_mini.jpg', 'Filé de Tilápia Congelado Canção 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (80.9, 144, '//img.sitemercado.com.br/produtos/04258006e0a9d0ff3ee1904947276aabf4c131e7b2f8ab2ce3d8680503b15679_mini.jpg', 'Filé de Salmão Congelado Costa Sul 500G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (32.59, 145, '//img.sitemercado.com.br/produtos/68e875717143263d1c2df70093c8857bd38a9a2f855412f5728c709751b21f21_mini.jpg', 'Filé de Pescada Costa Sul Pacote 500G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.89, 146, '//img.sitemercado.com.br/produtos/53ce9bd2ead7e87f5483613430bfa12d6762ffc161fd6ae58b7cf541dafc166a_mini.jpg', 'Filé Mignon Suíno Sadia sem Osso Congelado 1Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.98, 147, '//img.sitemercado.com.br/produtos/48cad7c43c533dd60ce8797fcac53da02f7d93dddfba31c2d8adc0e7e9753e3d_mini.jpg', 'Pernil Suíno com Osso com Pele', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (37.88, 148, '//img.sitemercado.com.br/produtos/c19b35b97c5651c0bc0f802111d103c6391d703e9672bcf494df2628592851cd_mini.jpg', 'Kit Feijoada Bizinelli Defumado Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.9, 149, '//img.sitemercado.com.br/produtos/a4df35800071df77348d5996953b68e13fb0e499a2aef2f4dc3d8b6fd609a2ee_mini.jpg', 'Costela Suína Sulita Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (25.59, 150, '//img.sitemercado.com.br/produtos/4eece7407b59bf6366ef224a924f979a8c737c5a759e85d10fc0efa8e7d8def3_mini.jpg', 'Sadia Costelinha Suína', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (27.9, 151, '//img.sitemercado.com.br/produtos/3caa51981b3e487b8b18fc73cffa5d5c73ba005e641e41cfa596bcb0988f9eda_mini.jpg', 'Filé-Mignon Suíno Alegra Temperado Kg', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (23.9, 152, '//img.sitemercado.com.br/produtos/0a4b2a64d618562c33179b4fc72165f95d4eeebb37dce782c971ad250e357632_mini.jpg', 'Costela Suína Grill', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.99, 153, '//img.sitemercado.com.br/produtos/5e6f22f942275918a3fbd26cd177689f9a5e7721200363a5f3c23c86d1434a7f_mini.jpg', 'Bisteca Suína Sadia Fatiada Congelada', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (57.9, 154, '//img.sitemercado.com.br/produtos/74ed5bdf974c29b5dfd5947b2c5cc2fda3c5139e985dd4ef6f2d5ce3cc955e5b_hero_mini.jpg', 'Camarão Sete Barbas Descascado Congelado 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (52.9, 155, '//img.sitemercado.com.br/produtos/4aed3a71c4ddcecffa868637f655ddb62e70fb0e93a7fd8c9e596c1cbb0cb64b_mini.jpg', 'Camarão Vannamei Copacol Descascado Cozido Congelado 380G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (40.9, 156, '//img.sitemercado.com.br/produtos/ff5a10a2795293c2a082ee04acd2daf00453b97252b0c1d5a5a9c87d2324b477_mini.jpg', 'Camarão Vanamei Inteiro Costa Sul Cozido Congelado Embalagem 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (52.9, 157, '//img.sitemercado.com.br/produtos/d81e9554ebce646e00d5e2b04d5e6ab78603372b4c1c5c56b0bc82780ee15b93_mini.jpg', 'Ingredientes para Paella Lula, Mexilhão, Polvo e Camarão Costa do Sul 400G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.98, 158, '//img.sitemercado.com.br/produtos/07b6e676be8d7cee2e934d89d4b1aebc99c19a0673f699ba597e69a2691673e4_mini.jpg', 'Carne Moída 100% Vegetal Seara Incrível 200g', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.98, 159, '//img.sitemercado.com.br/produtos/b6bc29f9ea6b301e21079f332e097ece931a40f8af5bea821892ba58ed0150f7_hero_mini.jpg', 'Cubos de Frango 100% Vegetal Seara Incrível 200g', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.39, 160, '//img.sitemercado.com.br/produtos/43fa7d26e56be6a1d7e6653e191fbab93efef7fd3612d690510c9137bef08a67_mini.jpg', 'Mistura Vegana Caldo Bom Almondega 250G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.98, 161, '//img.sitemercado.com.br/produtos/e793b698aac4830511c3b5c8dad3077257b1b52cb68a0d52c47726feac96b1e6_hero_mini.jpg', 'Tiras de Carne 100% Vegetal Seara Incrível 200g', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.19, 162, '//img.sitemercado.com.br/produtos/bfd3f4cc84b81a1c9105d03e4d898a5330be6aeac7e6651ccc7aa983ba95af7f_mini.jpg', 'Mistura Vegana Caldo Bom Quibe 250G', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.98, 163, '//img.sitemercado.com.br/produtos/fb1184dde00067c8418441a0962773828d1eb30e762952c17781ddae3747e886_hero_mini.jpg', 'Pernil Desfiado Pulled Pork 100% Vegetal Seara Incrível 350g', 3);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 164, '//img.sitemercado.com.br/produtos/7f31b422094301f5851c052696d69651f42dd6e121c9ed9e3df997015a218fe1_mini.jpg', 'Margarina Qualy Com Sal 500 g', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 165, '//img.sitemercado.com.br/produtos/e3ddfa917054ac2ae477b2cb95640bcf73973bc6259b1083dbe104539db2ae31_mini.jpg', 'Margarina sem Sal Qualy 500 g', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.69, 166, '//img.sitemercado.com.br/produtos/000d271db56f15213ccc760f113e53e1e15669b6e8e1bf38972f7a1b1d535ef1_mini.jpg', 'Manteiga com Sal Aviação 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.29, 167, '//img.sitemercado.com.br/produtos/fa1d0988f6e978def4a521371aeb85a28bb56983c91c3a62e668f1c2916fbed8_mini.jpg', 'Requeijão Tradicional Cremoso Vigor 400g', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.39, 168, '//img.sitemercado.com.br/produtos/9d87c258b27beafa3adaa7fbb888e7df24195b7c4358dfe1fb2a6599bc0ef597_mini.jpg', 'Requeijão Cremoso Tirolez 480G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 169, '//img.sitemercado.com.br/produtos/2ce0668970b41ce37138d4c349516d8d9f2532dc962f3b856acfc952b6aa55a4_mini.jpg', 'Creme de Ricota Tirolez 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 170, '//img.sitemercado.com.br/produtos/ec383bd8058e490d89c81da3e3ad677b6ad74ae614aa12fb39c426deb9556f77_mini.jpg', 'Requeijão Cremoso Tradicional Catupiry 420G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.99, 171, '//img.sitemercado.com.br/produtos/ed790fe5fbc71f844dcf94f51906c2c20dfa872af002dbb724e4419682261f5a_mini.jpg', 'Requeijão Santa Clara Tradicional 400G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.99, 172, '//img.sitemercado.com.br/produtos/608a6c552b634256f002d49fa5592bf96350acaf116dad60e89f9fd024560578_mini.jpg', 'Queijo Mussarela Santa Clara Fatiado Embalagem 400G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.33, 173, '//img.sitemercado.com.br/produtos/18885859ec3162a2bfaf4dea81a4dc2367b65370a55739336fa0f5e49149b265_mini.jpg', 'Queijo Mussarela Litoral Pedaço a Vácuo Kg', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 174, '//img.sitemercado.com.br/produtos/c85a22a8f81fca6cf5742864f963d6a117aa3af3267c98130f5488571b5a82c7_mini.jpg', 'Queijo Mussarela Tirol Fatiado 150G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.09, 175, '//img.sitemercado.com.br/produtos/468e643459d8f99205f8261ad476682f2f777d9e61017edc33ec10c29ad41dae_mini.jpg', 'Queijo Mussarela Santa Clara Fatiado Embalagem 150G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.69, 176, '//img.sitemercado.com.br/produtos/37f78e38ae7b15706411ae8d6a47fa02f508801f220303eff749e45dab44e519_mini.jpg', 'Queijo Mussarela Fatiado Président 150G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.99, 177, '//img.sitemercado.com.br/produtos/c065e885c9a56b05ec67b4fee931003082b6900ec63a665eb7a86cbb523993dd_mini.jpg', 'Queijo Mussarela Fatiado Président Embalagem 300G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.79, 178, '//img.sitemercado.com.br/produtos/fe7eab1ad99e7b1a087491aadea921f5835092122347f503680130c6db3c11a9_mini.jpg', 'Queijo Parmesão Ralado Vigor 50G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.99, 179, '//img.sitemercado.com.br/produtos/b06b844e6f874aabaed6e956a06cea481fd36081489845b9954723a79e5a60a1_mini.jpg', 'Queijo Prato Santa Clara Fatiado Lanche Embalagem 400G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.45, 180, '//img.sitemercado.com.br/produtos/c3ce9117b0e760850b4502b473c46b1bd0bc59e5e55ab62d56905df614f2a648_mini.jpg', 'Salame Tipo de Hambúrguer Fatiado Alegra 100G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.9, 181, '//img.sitemercado.com.br/produtos/1910114c8f3bd7772d882eaa39ac3d7a6c70e97b53818a5b0c2a2bd59c41e803_mini.jpg', 'Presunto Cozido Fatiado Soltíssimo Sadia 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.45, 182, '//img.sitemercado.com.br/produtos/e52b0f177e806ade1309bc9f06216ba82234752337dee92f501b444269bfb398_mini.jpg', 'Presunto Cozido Fatiado Perdigão 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.45, 183, '//img.sitemercado.com.br/produtos/c3ade2e1f8fffc597ae7a5fc4bc2e2badd1fa2f3021846c628ac2fb71254c173_mini.jpg', 'Salame Italiano Alegra Fatiado Embalagem 100G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 184, '//img.sitemercado.com.br/produtos/142e3f235d710b751a5a4d9cd4224354d2d239b481cc27396ea7b643b268d2d7_mini.jpg', 'Mortadela Ouro Fatiada Perdigão 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 185, '//img.sitemercado.com.br/produtos/19ed6501a98d88d0d22b93813720ddc3fba86ade6e491cafca43073c328c78fd_mini.jpg', 'Presunto Perdigão Fatiado Condor 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.85, 186, '//img.sitemercado.com.br/produtos/ddef09bc1ad048c3f04661c3d5acbfb8d7bb02423fc0d0552aed24c8f3824133_mini.jpg', 'Mortadela Gourmet Defumada Fatiada By Condor Seara 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.55, 187, '//img.sitemercado.com.br/produtos/cd988fc624c1fdf76e7ecda3fb7bc21082e616d427322b9e7784ab69d5ee7a88_mini.jpg', 'Mortadela Tradicional Fatiada Perdigão 200G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 188, '//img.sitemercado.com.br/produtos/1dd8bca8c6ce554c92ea987bd79e24dc96530f44199745ce8f4b0d4351542ff4_mini.jpg', 'Massa para Pastel Trindade Embalagem 500G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.95, 189, '//img.sitemercado.com.br/produtos/00935d4452640a30691a43fd686c13ce91d71b4c586664c80293f2f8f4e7b1d2_mini.jpg', 'Massa para Pizza Romanha 300G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.89, 190, '//img.sitemercado.com.br/produtos/ed166a7d29919ca56d4e32b1ed6fed4b9057507e3d88939fec6c10eaca82b4b6_mini.jpg', 'Massa para Pastel Trindade Embalagem 1Kg', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 191, '//img.sitemercado.com.br/produtos/6af67a87cc31212c32c552bb07fb1b2b429bedf28542d64ffce9b67eaded4212_mini.jpg', 'Massa para Pastel Ama Bene Embalagem 500G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.98, 192, '//img.sitemercado.com.br/produtos/7dd9646fea0a295859ae63a07e388e8177cd424ca824ba47bda9227238a80276_mini.jpg', 'Nhoque Romanha Embalagem 1Kg', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.49, 193, '//img.sitemercado.com.br/produtos/b8e6e4c1a2e4b7293f9f0cdae7aa9377768017946bde694356212bcd4fc63a5d_mini.jpg', 'Massa para Pastel Trindade Embalagem 400G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.59, 194, '//img.sitemercado.com.br/produtos/db45ff74943c34b293ce578040bef7e27c6180f6234ae2ac147e2d25aaed9e21_mini.jpg', 'Massa para Pizza Ama Bene Embalagem 160G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.39, 195, '//img.sitemercado.com.br/produtos/c206582330cfa37f7f43e1e1a65e71c22443665f606b7752cbd8a666a7860dae_mini.jpg', 'Massa Folhada Mezzani Embalagem 300G', 4);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 196, '//img.sitemercado.com.br/produtos/deeaf32725806135c7ff6ae00b6a6c9f6d46a0cc5c414b6bc9177d4a5f2cb8ba_mini.jpg', 'Biscoito Maizena Marilan 350G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.29, 197, '//img.sitemercado.com.br/produtos/054650125e42a7f30743a1cd56945cde1ccc12fcb3294a99e492ee7cfe2dbc81_hero_mini.jpg', 'Biscoito Recheado de Chocolate Passatempo 130G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 198, '//img.sitemercado.com.br/produtos/55a8f10575f0c0e5278c6bd565b0c4cab7c8504f7601adcea8c8d4761cc44ccb_mini.jpg', 'Pão de Mel Milano Chocolate Ao Leite 300G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.48, 199, '//img.sitemercado.com.br/produtos/d84d947ae65f2c9dd6e9ccef4a8312181417148b3b80ab74def03a5acd776b47_hero_mini.jpg', 'Biscoito de Chocolate Recheio Baunilha Negresco 90G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.29, 200, '//img.sitemercado.com.br/produtos/8cab347f4921424ada0329208c1f4c0f142b95d0481bb8fc3edcd128c95c9bf6_mini.jpg', 'Biscoito Amanteigado de Chocolate Marilan 280G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.19, 201, '//img.sitemercado.com.br/produtos/980c59869d620c1b015d675b4be4ef24b0455845b43ffd896ec1535a2660739e_mini.jpg', 'Biscoito Choco Biscuit Ao Leite Bauducco 80G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 202, '//img.sitemercado.com.br/produtos/15f814831ac31169ef6ec914b25a36ffbb717e45b7bf7a1667f83d47b5114adb_mini.jpg', 'Biscoito Salgado com Gergelim Isabela 350G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.99, 203, '//img.sitemercado.com.br/produtos/338595d48b223b1a3d8082642afde83f7794882d52c598dd0103ad8d269c6d26_mini.jpg', 'Biscoito Recheado Isabela Tortinhas Due Cheese Cake com Geléia de Goiaba 140G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.49, 204, '//img.sitemercado.com.br/produtos/9d23a089e338dbaf2b6a9ede75e0b025541baacb1d28cad96c0c57794a4e33d5_mini.jpg', 'Biscoito de Polvilho Ofir Rosquinha Embalagem 80G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 205, '//img.sitemercado.com.br/produtos/f7d5929b70811f626e27c66cacb9a4e8b072219bab9d8d2cefe60f561cff08d0_mini.jpg', 'Biscoito Cream Cracker Marilan 350G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 206, '//img.sitemercado.com.br/produtos/d674951a18b066497b9881edbb13ebe15962a54157fc6579cd179506e66c4496_mini.jpg', 'Biscoito de Água e Sal Marilan 350G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.49, 207, '//img.sitemercado.com.br/produtos/3994a00b2e798af3f371b34d33abc9f9660588359f126daeaf7c3dd145a49dd8_mini.jpg', 'Biscoito de Polvilho sem Glúten Fritelli 40G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.19, 208, '//img.sitemercado.com.br/produtos/2a7892042d7381bb3ad1d37f6c0e25df1e8eada8d0ac61e7652a6ececd5d0c1f_mini.jpg', 'Biscoito Cream Cracker Isabela 350G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.19, 209, '//img.sitemercado.com.br/produtos/901a5f31eb981d72f8ff515a61463e3ba43a8ef0be757c0665e707483238f85b_mini.jpg', 'Biscoito de Polvilho Andriolli Tradicional Embalagem 100G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 210, '//img.sitemercado.com.br/produtos/be83feb58d15e1d3fbf3df9a814ce3b0bd808704157d0b94caf7b05d85c5ee0a_mini.jpg', 'Biscoito Andriolli Polvilho Argolinha Pacote 50G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.19, 211, '//img.sitemercado.com.br/produtos/1ee2bc5ac71dd0650cbd5509586a25328341221963020220fab5390dd916567a_mini.jpg', 'Biscoito de Água e Sal Isabela 350G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.59, 212, '//img.sitemercado.com.br/produtos/309c1ee2e5a068fa648217f466064a28ff9846b886873c7c851a65809f785721_mini.jpg', 'Kit Salgadinho Lanchinho Sortido Elma Chips 98G com 5Un', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 213, '//img.sitemercado.com.br/produtos/577cee1538198d7c421ec1ebb06db4f85665eef530888924219b3e4a1b8ee841_hero_mini.jpg', 'Salgadinho Queijo Nacho Doritos 45g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 214, '//img.sitemercado.com.br/produtos/69c1b6b989b98da8c2aac858a6306c38811094a0ecfc2e95ec7ebf82f39444ae_mini.jpg', 'Salgadinho de Trigo Stiksy Elma Chips 120g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 215, '//img.sitemercado.com.br/produtos/f9bf198eeb187e18e1625910beab312cabbc1d6c834b1ca7ccca3b028424b0b0_hero_mini.jpg', 'Salgadinho Queijo Nacho Doritos 210g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 216, '//img.sitemercado.com.br/produtos/643c17a03fdfc063ab6284ff2a89a42128e05080a7a65707db6d0e763a93fcbe_mini.jpg', 'Salgadinho de Trigo Bacon Elma Chips Pingo Douro 120g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.49, 217, '//img.sitemercado.com.br/produtos/4bc38d5ff3fd7e55f7f328b86001be26d81ac8f64f7536d775b03741b2cb0fae_mini.jpg', 'Palitinho de Trigo Salgado Stiksy Elma Chips 48G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.19, 218, '//img.sitemercado.com.br/produtos/612a0c1fd9fd91e8eae2e9f491367b491a43c8645f890ffad9457177797739ec_mini.jpg', 'Salgadinho Sabor Queijo Nacho Doritos 84 g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 219, '//img.sitemercado.com.br/produtos/1e9e02fba13577c03b8abd2f6e5b6f06bd8a21ef8365c13caac9c057cbb89d65_mini.jpg', 'Salgadinho de Milho Sabor Cebolitos Elma Chips 60g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.99, 220, '//img.sitemercado.com.br/produtos/28ee9e9b9cdac3c044f6d901a7e09f4b6c8971ceeabcca7c08b9e73ebb8185f3_mini.jpg', 'Ovinhos de Amendoim Econômica Elma Chips 400g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.99, 221, '//img.sitemercado.com.br/produtos/09fe5b71a079f7e19c2f2d69d93a36757194373b66feade53e2fc98f9bfaccde_mini.jpg', 'Amendoim Caldo Bom Descascado 500G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 222, '//img.sitemercado.com.br/produtos/03dee182eef9a63f40cd54cee422eae30f08fea0093fc1ca165609a7e93cdb53_mini.jpg', 'Ovinhos de Amendoim Elma Chips 65g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.09, 223, '//img.sitemercado.com.br/produtos/7473ee260000a5bbcf8e1bef9af0a46dc41f34290090b45e703c0d9f37227108_mini.jpg', 'Mix Castanhas Coquetel Uniagro 150G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.75, 224, '//img.sitemercado.com.br/produtos/8c89718e796a8ed87840c36c1f5de6de6682978e6e71e8eb292023340ebfdcbc_mini.jpg', 'Amendoim Torrado Jandira Fino Embalagem 100G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.89, 225, '//img.sitemercado.com.br/produtos/173950071dd384848390874e4021c741d1e94e8178422a56cdc854b10d361945_mini.jpg', 'Amendoim Japonês Dori 150G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.49, 226, '//img.sitemercado.com.br/produtos/43476e128791f575183c2dcbfd30397d320cee9e3e46873f184da72251a98963_mini.jpg', 'Amendoim Crocante Natural Dori Pettiz Pacote 120G', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 227, '//img.sitemercado.com.br/produtos/48679d0b40bfb864d18b3824a5ccb7d41519162bd3bb336ebc5de35f3a01f1d4_mini.jpg', 'Ovinhos de Amendoim Elma Chips 255g', 5);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.49, 228, '//img.sitemercado.com.br/produtos/66196b84c530ed9ed93651df7bd90ce09385178a39c7b22755aa169d8c442161_mini.jpg', 'Água Mineral com Gás Cristal Pet 510Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.75, 229, '//img.sitemercado.com.br/produtos/9e2e3e924f81f57d484ab89cb4c40b67a9b2742b5168db7f990d188304518bd1_mini.jpg', 'Água Mineral com Gás Font Life Garrafa 510Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.29, 230, '//img.sitemercado.com.br/produtos/77690066a21e39a635b302ebd8053ff29333ed24357536c3a3c5a2005218bdaa_mini.jpg', 'Água Mineral Font Life com Casco Galão 10L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 231, '//img.sitemercado.com.br/produtos/d2833086b2509c951e6df4bfe3be157addcd8e9b090abaa61dcfe7f29d4622b2_mini.jpg', 'Água de Coco Autenticoco 400Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.09, 232, '//img.sitemercado.com.br/produtos/2b97f83bb4f40bfeec8f0165d54dea67718f38ae95727890a5c369f207494300_mini.jpg', 'Água Mineral sem Gás Cristal 5L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.59, 233, '//img.sitemercado.com.br/produtos/b529cc9da95dff10ff1f85a1c129e3d7d4f6bb66c032202186345608dacd6964_mini.jpg', 'Água Mineral sem Gás Font Life 510Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.99, 234, '//img.sitemercado.com.br/produtos/3c15856a660f38cf1223d15017925ccc5b37d882c098fc1671d6dd15f6217377_mini.jpg', 'Água Mineral sem Gás Font Life 5L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.89, 235, '//img.sitemercado.com.br/produtos/97bd3ec48db8b18538dc3a85a520da59bc1dc959243235f514aa46986bf610c3_mini.jpg', 'Água Mineral com Gás Crystal 1,5L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.89, 236, '//img.sitemercado.com.br/produtos/ed5f937b80112fce23fe16754c50a7fba0f3e09f7237104f0147bdfc3721ed2f_hero_mini.jpg', 'Água Tônica Sem Açúcar Schweppes 350ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.69, 237, '//img.sitemercado.com.br/produtos/565f9131f67b84e591ec7bf2dd76b754f9341bdfbcc34d90ca7f5b76b1904142_mini.jpg', 'Refrigerante Maçã Verde Cini 2L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.59, 238, '//img.sitemercado.com.br/produtos/feb07d0a90895386313f98e817d89d39576694c152603118cbfcec541bf41832_hero_mini.jpg', 'Refrigerante de Guaraná Fanta 200Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.49, 239, '//img.sitemercado.com.br/produtos/d99d9b24208978199609aeb9ce65c11c3328edb328c1efd4216e8d6520ddf1e1_mini.jpg', 'Kit 1 Coca-Cola Original + 1 Fanta Guaraná 2L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.5, 240, '//img.sitemercado.com.br/produtos/aae38c094e220903d84771b4db41a3fc925b41a05fbcead6ae38a1d97f045e3a_mini.jpg', 'Coca-Cola Original 2 l', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.39, 241, '//img.sitemercado.com.br/produtos/8b411295167372823efe83318ab7f475ddce00b9c4889adcbbb2f5be1c455129_mini.jpg', 'Refrigerante Guaraná Antárctica Tradicional Pitchulinha 200Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.89, 242, '//img.sitemercado.com.br/produtos/0f11445a074c9c777940858b52379200920e9f9f4b91a22c2b9ff18848cae30b_mini.jpg', 'Água Tônica com Açúcar Schweppes 350Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.5, 243, '//img.sitemercado.com.br/produtos/203817336773c6289d664d35282b41453d0ab2309bde0e208ac5d488765b33cf_mini.jpg', 'Coca-Cola Zero 2l', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 244, '//img.sitemercado.com.br/produtos/f42be6dc0b5d40a1500c4a3bec11dfd03a363cac620de253f7f59eb05d3d6cd7_mini.jpg', 'Refresco em Pó Sabor Laranja Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 245, '//img.sitemercado.com.br/produtos/0760604c8d62f79dd4ce795a4fa5a434f5a5e92227dbb6c22fc618d288aa8822_mini.jpg', 'Refresco em Pó Sabor Uva Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 246, '//img.sitemercado.com.br/produtos/d00ab6d67d672ec30c30cf6f6a536eeac503c8eb56cea9d6504f8dcda5d10cf0_mini.jpg', 'Refresco em Pó Sabor Maracujá Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 247, '//img.sitemercado.com.br/produtos/3b6b295ad8fd8c68bb2df01f7958a75789a376959f8edbf520b67b754d7a6e04_mini.jpg', 'Refresco em Pó Sabor Morango Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 248, '//img.sitemercado.com.br/produtos/6399ec3d3e38141fa38069a619dd377b4ec9c347d09e9d50c1fb5277a60e26d1_mini.jpg', 'Refresco em Pó Sabor Laranja Bahia Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 249, '//img.sitemercado.com.br/produtos/d96f30f27f739d784c9bedc0371b3aa1b1ea749928a121a37f099a6f5ef091a1_mini.jpg', 'Suco em Pó Sabor Abacaxi Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (0.89, 250, '//img.sitemercado.com.br/produtos/ce24b8e6428e1f1ffa9fbd515239eed5a87e3b07b71d77a91f65907086e777de_mini.jpg', 'Refresco em Pó Sabor Guaraná Trink 15G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.29, 251, '//img.sitemercado.com.br/produtos/f46e00db1a69cf9b62da4d3a9f27800243794b7fdc21a1e009cf44a6b249bcc1_mini.jpg', 'Suco Pronto Laranja Integral Prats 900Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.65, 252, '//img.sitemercado.com.br/produtos/a35ea39debe964c54461b158461f6a6deea150c5f7a99db1328eadb6e4248a73_mini.jpg', 'Isotônico Sabor Blue Berry Gatorade 500ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (46.74, 253, '//img.sitemercado.com.br/produtos/797825facb3b247c446822230ad1900f2b0106704828b0fc958a13f962cc610f_mini.jpg', 'Energético Red Bull 250Ml com 6Un', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 254, '//img.sitemercado.com.br/produtos/ba16d0e138d42881f6f21c605ff623fe120e1dfbf1156d63726d313ae2cc11f7_mini.jpg', 'Isotônico de Maracujá Gatorade 500Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.29, 255, '//img.sitemercado.com.br/produtos/a96c42ab14a3421c4bfa5dd9bca190221fb22dbe182be69554927eb260536564_mini.jpg', 'Energético Juice Pipeline Punch Monster 473Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.29, 256, '//img.sitemercado.com.br/produtos/6442c590d5d35af15f6c5564cd238494ec366620ec44bd196c46aefc092a9552_mini.jpg', 'Monster Energy Tradicional 473Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (32.02, 257, '//img.sitemercado.com.br/produtos/d00e666aa60ae9d66464d6e92df72d009ff96e1bde3a6926821022a4ec0c01e1_mini.jpg', 'Energético Red Bull Energy Drink 250Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.29, 258, '//img.sitemercado.com.br/produtos/c356ddac1853bb547cf558b4265b9a14ea0f1a0b0501f40a749cace8fa5bc846_mini.jpg', 'Energético Ultra Sabor Watermelon Monster 473Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.29, 259, '//img.sitemercado.com.br/produtos/403366d1fdbacc4cb6db902f63a23488d69d87fca9fe66cb54dfbe30d3b41648_mini.jpg', 'Energético Khaotic Monster 473Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 260, '//img.sitemercado.com.br/produtos/929e89fb07d50fa1022669cc334b8a00ee13c33d30c6e6ec792ce0d561d3d2ed_hero_mini.jpg', 'Chá Sabor Pêssego Ice Tea Leão 1,5l', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.89, 261, '//img.sitemercado.com.br/produtos/52e8bef497ab8bf573328c7909f6e05f6e782d690fdda31cc8076753da826b54_mini.jpg', 'Chá Branco Sabor Lichia Leão 1,5L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.89, 262, '//img.sitemercado.com.br/produtos/2c41caa193f49e4035f78caf5d1a3655490e961e468b9f6fdc9ebcc0480503e4_mini.jpg', 'Chá Mate Limão Matte Leão 1,5l', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.69, 263, '//img.sitemercado.com.br/produtos/0c3bc37459f9839d1ec087e84c9703fcc8a22af56eb968150c89ae00906e60bb_mini.jpg', 'Chá Branco Sabor Lichia Natural Tea 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.39, 264, '//img.sitemercado.com.br/produtos/eb85cf20eef26d90d943b235c8dedab2078e09117d51becb6779a8f8442cff00_hero_mini.jpg', 'Chá Verde Limão Antioxidante Leão 1,5L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 265, '//img.sitemercado.com.br/produtos/d2c2e683337dca59f652d0da0faa3f872b0cb18e4d9166078bda37b757c74377_hero_mini.jpg', 'Chá Ice Tea Leão Limão Zero 1,5L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.49, 266, '//img.sitemercado.com.br/produtos/e972a243817478e4a6683885d17e737bb337fbac3766a9bc1193a9c8bd1c77fb_hero_mini.jpg', 'Chá Ice Tea Leão Pêssego 450Ml', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.78, 267, '//img.sitemercado.com.br/produtos/9bd240f4e1b289ded4be7511cce9f1214c8df41250d02c261a69054f023512d6_mini.jpg', 'Chá de Hibisco com Romã e Gojiberry Natural Tea 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.55, 268, '//img.sitemercado.com.br/produtos/5f83b8f9eb5d1d28f23c31aa1b2441f5aa5efcd3232678afa38302287c2c724e_mini.jpg', 'Ades Original 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 269, '//img.sitemercado.com.br/produtos/ee023985cadd28920dc11fc97d6c484e8d0fe7c914c53c481bcf0f4f1d6fde1e_mini.jpg', 'Bebida de Soja Fruta Sabor Maçã Ades 1l', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.59, 270, '//img.sitemercado.com.br/produtos/bd3cc8beabbe667b1b33e6d44c4d0106e19946f798305aa3d871ea1f274bf8c8_mini.jpg', 'Bebida de Soja Purity Original Caixa 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 271, '//img.sitemercado.com.br/produtos/ae4ec9972c50e883abfa23b5b3535a7278efcc7331583a85837fa9098e6785cd_mini.jpg', 'Bebida À Base de Soja Sabor Pêssego Ades 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 272, '//img.sitemercado.com.br/produtos/987c9e6b2be806ebc387f6fe96cbb87a2c8656f9a52a519d0bb2e516a6b03823_hero_mini.jpg', 'Creme de Amêndoa Almond Breeze 200G', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 273, '//img.sitemercado.com.br/produtos/559558570dfd2b04101e96aa2b53f3287a93add52fffbc62899c5ca86619453f_mini.jpg', 'Bebida À Base de Soja Uva Ades 1l', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.79, 274, '//img.sitemercado.com.br/produtos/a94229f2884087b02133c2f470b0acd404c7ac0b2ac24dbea3ba775749a3e39e_mini.jpg', 'Bebida Vegetal de Coco Ades 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 275, '//img.sitemercado.com.br/produtos/34774923546b8accf4411ad6ad15fab50c290b66a9b6fe51dc30aa3922a54ae2_hero_mini.jpg', 'Bebida À Base de Soja Sabor Abacaxi Ades 1L', 6);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.95, 276, '//img.sitemercado.com.br/produtos/f1e8542b416ca8c13343d0f01a6a8fec992804a993ca973ba53dfd1e9f9ecdff_mini.jpg', 'Orégano Strafit 10G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.39, 277, '//img.sitemercado.com.br/produtos/bf660c2e671d4dd60636f3574fffc39a4d4a7113fb5238c5b13d59462dad3386_mini.jpg', 'Páprica Picante Strafit 30G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.99, 278, '//img.sitemercado.com.br/produtos/3a410c3a9a7151ef548531cf941e8f3e51ca9585793a65b2904a54c019f8d8d9_mini.jpg', 'Alecrim Strafit Embalagem 5G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.69, 279, '//img.sitemercado.com.br/produtos/c12d5a3503ca641cc2425d9ced5cad2c63e78453b5bfaa9c8494952bcf15c5f5_mini.jpg', 'Bicarbonato de Sódio Strafit 50G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.39, 280, '//img.sitemercado.com.br/produtos/1af2429c18edc7cdb9df48022f3f24eb72f8dc4b132f95febc6652c0e26c1a64_mini.jpg', 'Páprica Doce Strafit 30G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 281, '//img.sitemercado.com.br/produtos/79ce132af9c309f117cdb8274d9f5e8a2482ac6c0aa005e8150193ebefeaf7e9_mini.jpg', 'Especiarias Sweet Sabor Açafrão da Terra Embalagem 30G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.69, 282, '//img.sitemercado.com.br/produtos/b19d8285bcd2bfa739bf827c65fce6153f0e268c32c3cf62d070cbe79f501320_hero_mini.jpg', 'Caldo de Galinha Knorr 114G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.39, 283, '//img.sitemercado.com.br/produtos/18de96303d1bc0855e994c5e05ee83e33749f12d8b481979d814e61468b88ddf_mini.jpg', 'Especiarias Sweet Sabor Lemon Pepper Embalagem 30G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.59, 284, '//img.sitemercado.com.br/produtos/587df8dabaf0656a800f064ccd86a7ea25cbb22fa77c9e5c55c8c2fd1f500c8e_mini.jpg', 'Molho Tomate Pomarola Sch 300G Trad', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.29, 285, '//img.sitemercado.com.br/produtos/6f144f92d50892a0c9d119fb10ed3096899b4bbc3c3fd1367722dc83a92461fb_mini.jpg', 'Molho de Tomate Tradicional Salsaretti 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.89, 286, '//img.sitemercado.com.br/produtos/76d345213c7316ef330a40d31218e36db620cff0f106d7f4d34fde453f803d11_mini.jpg', 'Molho de Tomate Tradicional Predilecta 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.49, 287, '//img.sitemercado.com.br/produtos/d8c2d1e3070a2e2dce61a3e092ea99243830d06437436b993d3276a12978c446_hero_mini.jpg', 'Molho de Tomate com Pedaços Tradicional Heinz 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.19, 288, '//img.sitemercado.com.br/produtos/321f1a32eb5994089ae98487c23544f78f0f0bbde3f58def4bb6a444c2539540_hero_mini.jpg', 'Extrato de Tomate Quero 320G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.69, 289, '//img.sitemercado.com.br/produtos/dd57445fbb8c700e63c4be720ef9d9217001896c1b1a25dfba5a9b13d30f9195_mini.jpg', 'Extrato de Tomate Elefante 135G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.58, 290, '//img.sitemercado.com.br/produtos/7132037711505612b70a7f26b9eb8269646f1a23a32609930596592cb78a245c_mini.jpg', 'Polpa de Tomate Tradicional Paganini 690G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.28, 291, '//img.sitemercado.com.br/produtos/65b0e3034f3fdc4decc1342d282b024c2278110304e6b3b3167b53eab1b9fb67_mini.jpg', 'Extrato Tomate Tradicional Pote Predilecta 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.09, 292, '//img.sitemercado.com.br/produtos/93bcd9a87d126b9565d47852aed7e80339915e34f730ef636b5be665f7b34446_mini.jpg', 'Milho Verde Bonare 170G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.9, 293, '//img.sitemercado.com.br/produtos/c0581396213e736e999041e2b9aae16d59e2e2dedcaee55295f3d64d355c7976_mini.jpg', 'Palmito Pupunha do Chef Picado Recheio Embalagem 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (22.99, 294, '//img.sitemercado.com.br/produtos/734e58bb323e6aed9cca6ec2bfb82179fc6981dc4c83e2d7fbf3bcb42ee0db0b_mini.jpg', 'Palmito Palmeira do Vale Rodela Embalagem 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.69, 295, '//img.sitemercado.com.br/produtos/379eac89783f72352d26b34ffdc64e470c9fae93eaf191e54720c9a16dcec1b7_mini.jpg', 'Milho Verde Bonare Lata 170G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 296, '//img.sitemercado.com.br/produtos/1ccb0d6f6419a639cfbb3f20cc446e94d2db9adc3f967fc5389cdf8acd200ced_mini.jpg', 'Azeitona Verde Fatiada Rivoli 150G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 297, '//img.sitemercado.com.br/produtos/3c48603c2bb4bae114360802c992cc5b60af63156ef6b9c453610ef1b84c0042_mini.jpg', 'Palmito do Chef Aperitivo Embalagem 270G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.89, 298, '//img.sitemercado.com.br/produtos/a0767c206bf1eeaa2279ec77b46017479edfe310592d53d8a81d45ff0f07ba57_mini.jpg', 'Milho Verde Predilecta 170G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.69, 299, '//img.sitemercado.com.br/produtos/c7f602e1eada12fae0e1547470187428854883a8276f96ddf1d53f442bd35053_mini.jpg', 'Pepino em Conserva Tauá Embalagem 300G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.98, 300, '//img.sitemercado.com.br/produtos/7c5db720e8d93972899643813d148be1ab98c98ac8e900b19f54cd7ccef91b68_hero_mini.jpg', 'Ketchup Tradicional Heinz 397g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.69, 301, '//img.sitemercado.com.br/produtos/d651bd15ab7ebd45f4b964055512735c65e4d2a644dbcda375945eba5aec754c_mini.jpg', 'Ketchup Tradicional Hemmer 320 g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.59, 302, '//img.sitemercado.com.br/produtos/ec9c7821fb3a5e197a158e975eb60f0d1103eff61766511f2fde97bdb1f05317_mini.jpg', 'Ketchup Heinz 567 g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.49, 303, '//img.sitemercado.com.br/produtos/325479708c9a2d237ebd780b98691633c7ddcbf18f8b4144ac7c8d5b5104c49d_mini.jpg', 'Ketchup Tradicional Hemmer 750g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.49, 304, '//img.sitemercado.com.br/produtos/4fd1d2208130b50c46f16103ccde707cb8aa03a9d04f2da168a6780135dc0747_mini.jpg', 'Catchup Tradicional Hemmer 1kg', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.69, 305, '//img.sitemercado.com.br/produtos/c8a56d031ae9f726784d50e689106c69cdac54a8fd5ddabd0447902ed764ac1f_mini.jpg', 'Mostarda Amarela Hemmer 200 g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 306, '//img.sitemercado.com.br/produtos/ee3e9fae7c1a028282c214d84435630642030e7d5948d1160cd0c408199858cb_hero_mini.jpg', 'Mostarda Yellow Mustard Hellmanns 170g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.49, 307, '//img.sitemercado.com.br/produtos/3f8a57515d0ba99dd80a04bfc0fd4dce113dcab53f8483185a97f53e32c30166_hero_mini.jpg', 'Ketchup Tradicional Hellmanns 380g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.39, 308, '//img.sitemercado.com.br/produtos/68d01806f9455c450b98d10188449802c244f17b56273c99937a63ed6dd70d69_mini.jpg', 'Sardinha com Óleo Coqueiro 83G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 309, '//img.sitemercado.com.br/produtos/960b061a5be6fd9e495e342a5c585b957af32220b9705e6da9c7d9b1369a651f_hero_mini.jpg', 'Sardinha com Óleo Gomes da Costa 125G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 310, '//img.sitemercado.com.br/produtos/cac0bc958f333d84aec27261ad0251fd71b67c12c8c5ff0ec502e4dff6b80a08_hero_mini.jpg', 'Atum Ralado em Óleo Gomes da Costa 170g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 311, '//img.sitemercado.com.br/produtos/b6eabbcf612762c17758e3f6091f36e8686e3e5bd3a83044668aff16d6fa176a_mini.jpg', 'Seleta de Legumes Bonare Lata 170G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.39, 312, '//img.sitemercado.com.br/produtos/e4bb84350ef81da30431ceb0e581a014d633beb24354cbbeba8ff7f31556ffb5_mini.jpg', 'Sardinha Coqueiro 125G Molho Tomate', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.69, 313, '//img.sitemercado.com.br/produtos/3cd0022b74f40f3bc748816029b2e5626a0c0fcf36f9b44df4e0a73130b9592d_mini.jpg', 'Atum Ralado Óleo Coqueiro 170g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.39, 314, '//img.sitemercado.com.br/produtos/1fa4ac48ca6145785144dbf86118ef39753719b15800aaf59c4bd08c09d8fad0_mini.jpg', 'Atum Sólido em Óleo Coqueiro Lata 120g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.39, 315, '//img.sitemercado.com.br/produtos/8ff949f9d7d79ce41bd32df6f09d91e9c38f843e5e719485050d8881457cacc4_mini.jpg', 'Atum em Pedaços em Óleo Coqueiro 170g', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 316, '//img.sitemercado.com.br/produtos/361eb55520a14a42f2beca7d8fcb3a9b74b57f4708937c82a3f84afd37bd98c8_hero_mini.jpg', 'Creme de Cebola Maggi 68G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 317, '//img.sitemercado.com.br/produtos/8f63074580b17188b5cfb0aa3b05ccf785f46785c0bc4afb6aa413dffd37cd80_hero_mini.jpg', 'Sopão de Galinha Maggi 200G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 318, '//img.sitemercado.com.br/produtos/b8d3ea418555f675b570e884489b4acab1ec541245689226740cedc3c15eb7d3_hero_mini.jpg', 'Creme de Cebola Menos Sódio Maggi 61G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.59, 319, '//img.sitemercado.com.br/produtos/2d7e444219ef90e32398ef5107802c6e35477727b470a568fa6edc7cd916fe02_mini.jpg', 'Sopa Mandioquinha com Cebola e Salsa Vono 17G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 320, '//img.sitemercado.com.br/produtos/34d84ea404e1797d84434af5f04c4269d607c5bfeb872988448687f6f56968e2_hero_mini.jpg', 'Sopão Galinha Caipira Maggi 200G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 321, '//img.sitemercado.com.br/produtos/71c77e2c6501c69dbfb9a370f6e033fb98a3df0707667158b7e5550e4393f8a5_mini.jpg', 'Sopão de Canja Galinha Maggi 200G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.99, 322, '//img.sitemercado.com.br/produtos/8655a8819fcaec5e34b6c54bae2ff21aed78df7ff4840d88c8852c2d8a1050f2_hero_mini.jpg', 'Sopa Vono Aipim com Costela 18G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.39, 323, '//img.sitemercado.com.br/produtos/699716c677a0640fe7610d02cfdf2d6a74718f4b7cd6aa6c34e4bf899e6aafe4_hero_mini.jpg', 'Sopa de Cebola Maggi 68G', 7);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 324, '//img.sitemercado.com.br/produtos/7bcc54137fd8c66cd394f5dfb4452496971d43631fcb86039cf7ed7279d5506f_mini.jpg', 'Leite Tirol Integral 1l', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.89, 325, '//img.sitemercado.com.br/produtos/2b450cc2b63878eeff20a9eecac9c4225c288966a59a19782baca18d90857d36_mini.jpg', 'Leite Uht Integral Santa Clara 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 326, '//img.sitemercado.com.br/produtos/d5f4198ee63ec551d26e8dbdc49145f97006529bf7f372d370d7a88a1cbb564c_mini.jpg', 'Leite Uht Integral Batavo 1l', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.95, 327, '//img.sitemercado.com.br/produtos/53edee9bc7b92f98bc525fa9ffe05cf8d4f0e93fbeda662e53c7aa0902764a40_mini.jpg', 'Leite Uht Parmalat Integral 1l', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.19, 328, '//img.sitemercado.com.br/produtos/d3855075124a54dedb0d4d3fd74cc4250cd9770f5234cba32bfb792bb0321f52_mini.jpg', 'Leite Uht Integral Frimesa 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.59, 329, '//img.sitemercado.com.br/produtos/192873c695e346b037f53def60eb3060f88256c74c55befca69794f17fdf76a5_mini.jpg', 'Leite Uht Integral Longa Vida Naturalle 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.29, 330, '//img.sitemercado.com.br/produtos/5bd80d4be532a0666d515bf0d035047fd76371c6d44566e2fdc9072ac48266be_mini.jpg', 'Leite Pasteurizado Integral Cancela 1L Un', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.95, 331, '//img.sitemercado.com.br/produtos/70ccb76a1c9f60830b2fe6986cd6f50f29327cf66fe67f595f074512445b3601_mini.jpg', 'Leite Uht Semidesnatado Parmalat 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.69, 332, '//img.sitemercado.com.br/produtos/4ab001a07737417eae4c2428281f865ff361d400bff56f909fbd34735f524b45_hero_mini.jpg', 'Leite Fermentado Nestlé Chamyto 450G 6un', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.99, 333, '//img.sitemercado.com.br/produtos/c3ce48e1ca69e223e6384750e5f9033dec424b51497cc79094383e6e61fa4779_mini.jpg', 'Iogurte Líquido Parcialmente Desnatado Sabor Morango Danone 1,25L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.19, 334, '//img.sitemercado.com.br/produtos/3d87cc9984c67bb1e046342c1f4587ec8ffbbf02aa6e9f67001e837448b85b2f_hero_mini.jpg', 'Iogurte Nestlé Natural Integral 170g', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.29, 335, '//img.sitemercado.com.br/produtos/4b16a993fae8febb972bb26723b26667c519ad216ca4badbcc38333778d73265_mini.jpg', 'Bebida Láctea Batavo Morango Bandeja 540G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.69, 336, '//img.sitemercado.com.br/produtos/51beaf888ee6a311527940211f051fbf4b579b17672b768c3efcc5a942283b30_hero_mini.jpg', 'Sobremesa Láctea Chocolate Ao Leite Danette 540G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.49, 337, '//img.sitemercado.com.br/produtos/ba430e82252baefdd25761069bff4f82a0621cc7b505d896f00431f0b43340f1_mini.jpg', 'Iogurte Frimesa Morango Bandeja 540G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 338, '//img.sitemercado.com.br/produtos/1edc6482d098893137c565b91ca246c8bf5fe4b05d6e9c1a22062e24abac9a4c_mini.jpg', 'Iogurte de Morango Pense Zero Batavo 540G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.59, 339, '//img.sitemercado.com.br/produtos/5d8fcd22cac382308fae791de0f37d5d6532226b4b4e66b9f3d5e5a61267a0ac_mini.jpg', 'Iogurte Natural Batavo Integral 170G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.59, 340, '//img.sitemercado.com.br/produtos/8bce831696709067ac7115d25d4ed2afef72b6cba6867bbe9593bb10e81855e6_mini.jpg', 'Leite Uht Zero Lactose Santa Clara 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 341, '//img.sitemercado.com.br/produtos/e9f21e0e133098489fc7d9d15247b973b9339365edf51a38a55ca4656aa4e748_mini.jpg', 'Leite Longa Vida Piracanjuba Zero Lactose 1Litro', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.39, 342, '//img.sitemercado.com.br/produtos/8d28bb4f6033cc9d25b159c65b3250d159a323bf42292b651862a341a480e400_mini.jpg', 'Leite Zymil Zero Lactose Desnatado Uht Parmalat 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.39, 343, '//img.sitemercado.com.br/produtos/7ab4245ba78ec6e26b95c1f865d75d30ba4e0e6356abf67b67d220adb21be660_mini.jpg', 'Leite Zymil Zero Lactose Semi Desnatado Uht Parmalat 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.59, 344, '//img.sitemercado.com.br/produtos/380c1a753d85e04e4ce02024e1b61de32cf6cd3982c9ccc9c1a450f20127a150_mini.jpg', 'Leite em Pó Instantâneo Zero Lactose Max Pacote Parmalat 300G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 345, '//img.sitemercado.com.br/produtos/5c6b54163befb7c2da023863f51bafbeb475aa826eddeca6aae1adad3c420c54_hero_mini.jpg', 'Leite Uht Levinho Semidesnatado Zero Lactose Ninho 1L', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.69, 346, '//img.sitemercado.com.br/produtos/2fdbf18cccf2c24ceb8a08a788a1d400ec711bb28834c504aaa4dafe8bf91105_mini.jpg', 'Leite em Pó Glória Integral Pacote 400G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.78, 347, '//img.sitemercado.com.br/produtos/0aba0fa65e8ac07202a8331b6bdbefe497459395337415aa56e498db72347585_hero_mini.jpg', 'Composto Lácteo em Pó Forti+ Instantâneo Nestlé Ninho 380G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (66.9, 348, '//img.sitemercado.com.br/produtos/474deb6ae75f70bb1ed8064c7e32cfeacacc1e5db5e10b7147d33a2d9e026faa_hero_mini.jpg', 'Fórmula Infantil Premium 1 Aptamil 800G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (35.69, 349, '//img.sitemercado.com.br/produtos/90ca3ed3b3d332b3555b26dff27a953d12b97eb7afe8bd26384ee874c23eb3bd_hero_mini.jpg', 'Composto Lácteo Instantâneo Forti+ Ninho 750G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.99, 350, '//img.sitemercado.com.br/produtos/9427b57f9da5627a85894bd34390d8a3f54c338e36bcccfcfe2bc7d71cfa22de_mini.jpg', 'Leite em Pó Integral Finissimo 350G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.69, 351, '//img.sitemercado.com.br/produtos/23f2c35c6a0c8aa0b57a3bbffc109b5b7a40267efb6e7b13c1e570e45f783df6_mini.jpg', 'Leite em Pó Tirol Integral Instantâneo 400G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (57.9, 352, '//img.sitemercado.com.br/produtos/e2739257cb65491a75b099ef3457833a10b3d8bbf5fed94b2873632157029124_hero_mini.jpg', 'Composto Lácteo Premium Milnutri 800G', 8);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (51.9, 353, '//img.sitemercado.com.br/produtos/aaaace946af3ed9b2155ec8198dfcd93cf6ef0d5c5f77b0b35c5c5274ec9b212_hero_mini.jpg', 'Fórmula Infantil Fases 1+ Ninho Nestlé 800G', 8); 
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.39, 354, '//img.sitemercado.com.br/produtos/5056836bacd8e52d9f42d3ae5cbf06f51cd0893fc1d88d56608d631b63c144f8_mini.jpg', 'Leite Condensado Italac Semidesnatado 395g', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 355, '//img.sitemercado.com.br/produtos/7875639ffc649098700a862e7a3f18e3ec5080774772812536676c6b8dce8964_mini.jpg', 'Leite Condensado Frimesa Caixa 395G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.99, 356, '//img.sitemercado.com.br/produtos/41f5e63c89958567c386c74f2193a1822a1aa6f082ab9c32ebd9f738a9eb6fe3_mini.jpg', 'Nata Santa Clara 300Gr', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.89, 357, '//img.sitemercado.com.br/produtos/400efbbb942dc6dedf4f613897bd596b8652ad360fb3a3645acc1b07ef9be4d3_mini.jpg', 'Leite Condensado Colônia Holandesa Embalagem 395G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.75, 358, '//img.sitemercado.com.br/produtos/55d56e9f53386ce32bb914cd5d38ad52ce7786ec209d541349060a651cf507e2_mini.jpg', 'Creme de Leite Glória 200 g', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.75, 359, '//img.sitemercado.com.br/produtos/58bd2fcc786a4da6d1670ad04af910e96be62ec1d12362678460aa9603e54614_mini.jpg', 'Creme de Leite Lider 200g', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.89, 360, '//img.sitemercado.com.br/produtos/c6764c6c92fb675d17ac187a05b07f753398de2056ef15727789c4eceb25bc9f_mini.jpg', 'Creme Leite Italac 200g', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.96, 361, '//img.sitemercado.com.br/produtos/2ef3072996fdcaed609f033d171948b993e8767772483113d17871d9c5312007_hero_mini.jpg', 'Leite Condensado Moça 395 g', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (42.19, 362, '//img.sitemercado.com.br/produtos/7b129b6eb41bcedf06b9774dbdd6359ed339b2c39d0025a562be42891103b0a1_mini.jpg', 'Pavê Tradicional Familia Pavê 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.25, 363, '//img.sitemercado.com.br/produtos/fbce7d5ca39f860d93f1178472589068b864ca4002f4d2c27b19c1d7800b169d_hero_mini.jpg', 'Bombom Especialidades Nestlé 251G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.89, 364, '//img.sitemercado.com.br/produtos/5871facec8b794929de575100250c6108aaee420a3fe5529a0295f5f63c89037_hero_mini.jpg', 'Bombom Sortido Garoto 250G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.49, 365, '//img.sitemercado.com.br/produtos/ee8a745e954b3d2a8c4c7b19603485546a2fbc4f98c9b46072259930adb9f2ab_hero_mini.jpg', 'Chocolate 4 Fingers Ao Leite Kit Kat 41,5g', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 366, '//img.sitemercado.com.br/produtos/7694e79d82ac2cbfd2034f09217e4bf32020f01703813222e578026acff94630_hero_mini.jpg', 'Chocolate Suflair Ao Leite Nestlé 80G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 367, '//img.sitemercado.com.br/produtos/4f3f8b42128f6d6e663093131d42c0a92004aa5dbfe61102353827a342fb4f3e_mini.jpg', 'Chocolate Ao Leite Alpino 85G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 368, '//img.sitemercado.com.br/produtos/bfb447c8c65e403b87e8e61fec2b2a553e47847d44f9a4f5d73149539f6bc5c8_mini.jpg', 'Chocolate Meio Amargo 40% Cacau Hersheys 82G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 369, '//img.sitemercado.com.br/produtos/86269b96bbc6a997e95e70529093c19d2892532ef5c899a019b96f9c30ba10be_hero_mini.jpg', 'Chocolate em Barra Duo Suflair 80G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.19, 370, '//img.sitemercado.com.br/produtos/132977277b1e2a483f0ca516baa8936e3e53a65c85e3ba96ebe3891021bcdb09_mini.jpg', 'Chocolate Amargo 70% Barra Arcor 80G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.69, 371, '//img.sitemercado.com.br/produtos/f6f32da25f2d89294d315e45d45c50cc9da9923b889c3cc021c9ee98ad17dc54_mini.jpg', 'Pêssego em Calda em Metades Neumann Lata 450G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.59, 372, '//img.sitemercado.com.br/produtos/3ced5935d8eb041201d6a424c782528b855d3e4046e40d2ab7d53e4074098705_mini.jpg', 'Pêssego em Calda Metades Schramm Lata 450G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.19, 373, '//img.sitemercado.com.br/produtos/840a511a30a787981b98c0a0e580602f7a01532878d98fd43b36dce0471c1b32_mini.jpg', 'Cereja em Calda Feliz 100G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (22.59, 374, '//img.sitemercado.com.br/produtos/49c625af74dd8bb4888aeed707a45d9d9d3345c0d3364348e51ad2d440564f34_mini.jpg', 'Ameixa em Calda Predilecta 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.65, 375, '//img.sitemercado.com.br/produtos/9dbf733492c583068baa3547b5479d71a3abb18f7c42c036fddc64546a606edd_mini.jpg', 'Abacaxi em Calda Rodela Lata Pinduca 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.49, 376, '//img.sitemercado.com.br/produtos/40dbbbd323e3a863f4d70a8fa947dac81869e83aca45f54e024e027d2916305c_mini.jpg', 'Figo Daldeia em Calda 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.49, 377, '//img.sitemercado.com.br/produtos/24607e08267b914bf3c4ab7dd2cc5e994bd1aac45994fff45b39ed97abada35b_mini.jpg', 'Abacaxi em Calda Neumann Lata 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.79, 378, '//img.sitemercado.com.br/produtos/c83861ee04e539a3fdb5f626a305a1fe028ef9d2002b4a2b436f288c8845f004_mini.jpg', 'Gelatina em Po Oetker S/Sabor 24G Incolor', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.65, 379, '//img.sitemercado.com.br/produtos/0f71ed9dc4fd8d1b8a8cf637be5073114c6e18839dc7a247ef47cd1d0a6c8aa9_mini.jpg', 'Pó para Maria Mole Coco Bretzke 50G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.99, 380, '//img.sitemercado.com.br/produtos/b09e9edb4c6b4b0e5fee9d2f5e81054d7bf717ad75b6dacee4a40ac082a5f94b_mini.jpg', 'Mistura para Pudim Bretzke Diet Chocolate Embalagem 30G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.69, 381, '//img.sitemercado.com.br/produtos/7870be475c99e9d9ae1f05bd214fbec3e4a471e5653d69cf3add509cc659f91d_mini.jpg', 'Maria Mole Oetker 50G Coco', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.19, 382, '//img.sitemercado.com.br/produtos/4065be1cb57a555db7e88eb3350318605e9ccafb4643f95b74e8cf58ac464157_mini.jpg', 'Pó para Pudim Bretzke Coco Caixa 50G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.99, 383, '//img.sitemercado.com.br/produtos/b3ff74efe6a6d7c91f4b09fcc29e9c47025b2a42ba8a1a26323f3144bc462d07_mini.jpg', 'Pó para Pudim Bretzke Diet Morango Embalagem 25G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.19, 384, '//img.sitemercado.com.br/produtos/2401964bf39add084d3098911ea036df36055e27a8e95e5d80695cdfe8482b00_mini.jpg', 'Gelatina em Pó Dr Oetker Diet Limão Caixa 12G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.19, 385, '//img.sitemercado.com.br/produtos/7c01e423f78081bcc4ec0e321f06dbc213b87c8a28d6c35685fbfa3e7a3a405d_mini.jpg', 'Pó para Pudim Bretzke Morango Embalagem 85G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 386, '//img.sitemercado.com.br/produtos/0c052bd38201d2a334080903b370eb16cfdcdea6444b653b6ea0fa1b22fbfce7_mini.jpg', 'Goiabada Predilecta 300G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.99, 387, '//img.sitemercado.com.br/produtos/08fec6d3a431a156e59c7922f92601fa81f0040eb9e83bbce9c31fdfeee86324_mini.jpg', 'Doce de Leite Frimesa Tradicional Pote 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 388, '//img.sitemercado.com.br/produtos/22002acf720ec02c3fbffe2af4f0e6d42e38c6c36f06b159b6d9771e49d1f2ab_mini.jpg', 'Doce de Uva Oliveira Embalagem 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 389, '//img.sitemercado.com.br/produtos/f81d21c9564c77a854044e627b00049f0b016802bce311352544605ea51cf15f_mini.jpg', 'Doce de Morango Oliveira Embalagem 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.49, 390, '//img.sitemercado.com.br/produtos/40e88c5918cadfd098c7fd319bea3a81cea20f97ac2c09dc18aa041f0bec4723_mini.jpg', 'Doce de Leite Aviação 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 391, '//img.sitemercado.com.br/produtos/5494c81a326f2ae7a35260e3f6df449da2d8e4c98ad034f26d9b2c18c95742dc_mini.jpg', 'Doce de Banana Oliveira Cremoso Pote 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 392, '//img.sitemercado.com.br/produtos/f61ccc9789be53b6475c448fcc939e905ebe39650b72a16abe75964dbd8b17c9_mini.jpg', 'Doce de Abóbora Oliveira Embalagem 400G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.69, 393, '//img.sitemercado.com.br/produtos/6dbdd70a5623715deb93547d19e14eb9d338eb9df289ce9d9ed564b735bdf7c6_mini.jpg', 'Paçoca Rolha Santo Antônio 900G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 394, '//img.sitemercado.com.br/produtos/8c2f4f52fede351c8fc81d23bd30e897cff8decd4c9d5f8f174ade15678d72f4_mini.jpg', 'Pirulito Sabor Framboesa 7 Belo 120G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 395, '//img.sitemercado.com.br/produtos/676125f10112537b58fa4203ebbd7213c8f8dbafd22032c4876133d08583ded0_mini.jpg', 'Bala Sabor Framboesa 7 Belo Arcor 100G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.39, 396, '//img.sitemercado.com.br/produtos/b515c61364f738a7acb2386d8de8cce0d4dc3269c8a5705610b078b24c51ff20_mini.jpg', 'Bala Butter Toffees Sabor Chocolate Arcor 100G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.36, 397, '//img.sitemercado.com.br/produtos/12051ecb53d66bd3bc8ce7d2a67b332ba803e0df47a50367159cea07c87829c5_mini.jpg', 'Fini Beijos 90G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.09, 398, '//img.sitemercado.com.br/produtos/77c8bc70dbc112fc260140adf45fd6fa78376066b712722dde59a561c4ef49c4_mini.jpg', 'Bala Yogurte 100 Original Dori 100G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.49, 399, '//img.sitemercado.com.br/produtos/a604509f4801ba1e5c81a0d4b71fffbfda3f58e4e96375ab66f7d46ad5cb70f8_mini.jpg', 'Bala Gelatin Beijos Morango a Fini 15G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.45, 400, '//img.sitemercado.com.br/produtos/6e922ed469343812eff1c68f518e1956e22cc642c4c8d3ca81161f1487a8e625_mini.jpg', 'Chiclete Fini 14G Classicos', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.09, 401, '//img.sitemercado.com.br/produtos/718a2f23f5c9096c58c1fc750f1e2b507eb026d97d956cf04d6da6486d6f55fe_mini.jpg', 'Bala Chicle Bolete Dori 100G', 9);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 402, '//img.sitemercado.com.br/produtos/3555a720924e8a0bc22d8c4b0370e09a329327328d697652b5a7630d7243ead2_mini.jpg', 'Mandioca Descascada Resfriada 1Kg', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.39, 403, '//img.sitemercado.com.br/produtos/3a1bb7623e2cf5de76f671102ca2eb5664a94977240b9162d4fbda4b88db3648_mini.jpg', 'Batata Palito Congelada Copacol Pacote 400G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.9, 404, '//img.sitemercado.com.br/produtos/cafe587111d95705b0c3ff3df265c486877f181cf54f06d5e62b3754142d7f56_mini.jpg', 'Batata Congelada Tradicional Mccain 720G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.9, 405, '//img.sitemercado.com.br/produtos/f06a339d52b1332f7f40f136485cc5e13be781ba99ed8e2c47ca5456e7cb0a24_mini.jpg', 'Batata Pré Frita Extra Crocante Airfryer Congelada Mccain 600G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.19, 406, '//img.sitemercado.com.br/produtos/42d5c1bf4ee5f4b04425f26f715e43b92871a09fd87ebca6d4c57577b61e3b26_hero_mini.jpg', 'Seleta de Legumes Copacol Congelada 300G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 407, '//img.sitemercado.com.br/produtos/00bbe6eb1ba621a071717033353478b3207a94ed53aaddeba307735195807b0c_hero_mini.jpg', 'Milho Verde Congelado Copacol 300G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.99, 408, '//img.sitemercado.com.br/produtos/ca6e48fcee7de9ad013bc8ca251bb5cd7acc504fc7b96844cb216612a353b145_mini.jpg', 'Batata Pré-Frita Tradicional Congelada Mccain Tamanho Família', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.29, 409, '//img.sitemercado.com.br/produtos/d2c2048fb59acc792a467e06388099a5238189d102732512729e229dc3999a14_hero_mini.jpg', 'Ervilha Congelada Copacol 300G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.9, 410, '//img.sitemercado.com.br/produtos/677df18d0f66b149e4212a089894efe64f082ea25d7204063de49ac6fcf80ab5_mini.jpg', 'Waffle Tradicional Congelado Forno de Minas 210G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.99, 411, '//img.sitemercado.com.br/produtos/dc3f42beca731da8f5ccaf29244a0f12d6c3f62bd9e05502f437826e6214720a_mini.jpg', 'Lasanha À Bolonhesa Aurora 600G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.59, 412, '//img.sitemercado.com.br/produtos/c4055bfd5e62b2fd5d278d7050bccda3edf8ee56bc46dc5a6979a1607c82bfa3_mini.jpg', 'Lasanha Sadia Bolonhesa 350G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.79, 413, '//img.sitemercado.com.br/produtos/dd431b7bcfc57563cbdd3863f463ce98d80ee920e3db15cbd69f452e8fb1af60_mini.jpg', 'Pizza 4 Queijos Sadia 460G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.89, 414, '//img.sitemercado.com.br/produtos/35d23e5c883139c960e0795cb8aa59f35fad5644065e9c204fc267ba42e8f996_hero_mini.jpg', 'Fettuccine Levíssimo e Brócolis Seara 350G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.89, 415, '//img.sitemercado.com.br/produtos/efe128cd05a59a3be9c715d83fc0ed2cf64cc7051933da1dcaf64d3647f0e3ee_mini.jpg', 'Lasanha Congelada Sadia Quatro Queijos Embalagem 350G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.9, 416, '//img.sitemercado.com.br/produtos/02b60e4b72d5ed316817805269ad57261f7c78bd8288ed49d7224f0af6788994_mini.jpg', 'Torta Sadia Frango com Requeijão Embalagem 500G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.89, 417, '//img.sitemercado.com.br/produtos/80857b2b84e3dc7380a77dcaa3b3c8daed4535acbf30dda407a5b9c530db1571_mini.jpg', 'Pizza de Calabresa Aurora 460G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.9, 418, '//img.sitemercado.com.br/produtos/83c602e18f4e627f919ab0a1ecf21d7275018208294c87092ddc352d87716aec_hero_mini.jpg', 'Chicken Supreme Seara 300Gr', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.29, 419, '//img.sitemercado.com.br/produtos/438f9d4cb51f3125e4e9a5e41662f6e3d889115fc30186d2013633c433310ab3_hero_mini.jpg', 'Tekitos Tradicional Seara 300G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.29, 420, '//img.sitemercado.com.br/produtos/371db1d77d22b21869565df331e8e23ea83cd7a1900030aa5ff72ecc249d02a9_mini.jpg', 'Mini Chicken Tradicional Perdigão 275G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.19, 421, '//img.sitemercado.com.br/produtos/759f8bdb4946b4a7a202042d8882886ce88b37988fddda5a3487f502106f5c43_mini.jpg', 'Empanado Frango Perdigão Big Chicken 1Kg Tradicional', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.69, 422, '//img.sitemercado.com.br/produtos/519e1bfff49de663dd5e9c5630ecf2e53fbc195ddcb705a6de1bcc70ccebda37_mini.jpg', 'Tirinhas de Frango Aurora 300G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.99, 423, '//img.sitemercado.com.br/produtos/1298aec753cdaa17cba44ab0782ee2edb22a47ba8e991a0761b36965469ddf63_hero_mini.jpg', 'Tirinhas Sticks de Tilápia Empanado Congelado 300G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.69, 424, '//img.sitemercado.com.br/produtos/11fb28f8e65c831f2baf3ea2d8a3fd7ef7c4d88d76200cb2c93e8eb3f11c225c_mini.jpg', 'Pierogue Batata com Cheiro Verde Schmidt Embalagem 400G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.99, 425, '//img.sitemercado.com.br/produtos/8c5b1f7294e3a27aac6e936681329a4d373bbacb0c819b7a58c4d15db605f2e1_hero_mini.jpg', 'Steak de Frango Seara 100G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.15, 426, '//img.sitemercado.com.br/produtos/03a41b4b8a51ed634ecd7cbdcf7f1c0716630565a75894c06d588592ebe7a598_mini.jpg', 'Hambúrguer Bov Cong Montana 56G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.59, 427, '//img.sitemercado.com.br/produtos/6ea988d9739884bc09d56b672e9a678e792fd590b99d44904c375194bc012919_mini.jpg', 'Hambúrguer Sadia Tradicional 672G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.99, 428, '//img.sitemercado.com.br/produtos/7aec96eb0d6d7735b79e1471cb11ab1b3df4e1c339fcc9c5e9ba784b878c8abb_mini.jpg', 'Hambúrguer Misto Frimesa 56G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.98, 429, '//img.sitemercado.com.br/produtos/cdd7ca2ed314fbe92bffaae03e64951758a89193cb33195c7c9db33e14c91cad_mini.jpg', 'Hambúrguer Bovino Resfriado 360G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (25.79, 430, '//img.sitemercado.com.br/produtos/e654d7ab4d50523e1b83d4f9013aec62d44119c7b184d7d4648bcea305497a71_hero_mini.jpg', 'Gran Angus Burger Seara Gourmet 400G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.19, 431, '//img.sitemercado.com.br/produtos/0041d07961a6344202ee21f83a3a6bda1a69db39ccee65267046597ab6f42b3d_mini.jpg', 'Hambúrguer Bovino Frimesa Unidade 56G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (25.19, 432, '//img.sitemercado.com.br/produtos/cceb1762d718ec7f172396d89eb5e6b4af00ff3f16e56a2b4fc85de7de23d031_mini.jpg', 'Hambúrguer Bovino Frimesa Caixa 672G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.55, 433, '//img.sitemercado.com.br/produtos/cfc40488fc664bde1f630dede1f77316e4c5c1813d8f3c22ea9f6e93f7c0d765_mini.jpg', 'Hambúrguer Frimesa Carne Bovina Embalagem 90G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 434, '//img.sitemercado.com.br/produtos/584f7ad986443959195b76e1475ff0e7f0da661ec9de3b93c119efb5529a5f06_mini.jpg', 'Pão de Alho Santa Massa Tradicional Pacote 400G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.9, 435, '//img.sitemercado.com.br/produtos/0d5d4ec296467865c74a292eaf1ed9c0d875c731bc87bbada6dad7e63898a899_mini.jpg', 'Pão de Queijo Tradicional Forno de Minas 400G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 436, '//img.sitemercado.com.br/produtos/b8ec94d3cd79c3f197a8c926af68d29051c261fd89e6b51d9abcae93bac40716_mini.jpg', 'Pão de Alho Santa Massa Tradicional Pacote 240Gramas', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.9, 437, '//img.sitemercado.com.br/produtos/125d57c92f854ee492a79345f62ed0e5922480d657f40cb7a61169e95a2f7f3a_mini.jpg', 'Pão de Queijo Congelado Tradicional Forno de Minas 820G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (22.04, 438, '//img.sitemercado.com.br/produtos/cac83c22d975ddf1bb06642ad73854f0ab76ca10a123f0e8d5af7ee5332b0f22_mini.jpg', 'Pão de Queijo Lanche Massaleve Pacote 1Kg', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 439, '//img.sitemercado.com.br/produtos/3d110f5c4a1d63625698698f4c124650136226874293029bf7c1e367604ea484_mini.jpg', 'Pão de Alho Santa Massa Tradicional 240G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 440, '//img.sitemercado.com.br/produtos/778ae748fbb9f82f02a2e8f9918e25fbaa1085554bc3b962ccd149bae8dfec7c_mini.jpg', 'Pão de Alho Santa Massa Picante Pacote 270G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.99, 441, '//img.sitemercado.com.br/produtos/3f5e44f39f1ffffa798aba88f2be3d1ec7d24078d0c75c38a154bef74886c0a2_mini.jpg', 'Pão de Queijo Receita Caseira Forno de Minas 400G', 10);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.49, 442, '//img.sitemercado.com.br/produtos/b91c84fa94d4165e058d1616261807fa7b494a25e32f315c13bd0225d85d3ed0_hero_mini.jpg', 'Achocolatado Nescau 550G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.93, 443, '//img.sitemercado.com.br/produtos/4b75dfb1a58f8fc94b41d1ac9c4fecac13bf474cf516ed83167195112a0334ad_mini.jpg', 'Achocolatado em Pó Tradicional Nescau 370G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.49, 444, '//img.sitemercado.com.br/produtos/a0fd81e293c96cd192ee5678acbbe65715cf7317fb2c3c3a7c1eebf8bb8a10e3_mini.jpg', 'Achocolatado em Pó Chocolatto 3 Corações 700G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.49, 445, '//img.sitemercado.com.br/produtos/14c01b2da05c2d87df674c1cf942ef90cbdb19cb3321d169d7d5f81e4f5a37d8_mini.jpg', 'Achocolatado em Pó Original Toddy 370g', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 446, '//img.sitemercado.com.br/produtos/2f0eb724d4e9c2e601a2728cddd28cd0777a05a324f997a8e71fc0ac03de0faf_hero_mini.jpg', 'Achocolatado em Pó Original Toddy 700g', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.89, 447, '//img.sitemercado.com.br/produtos/40193a17a1c22f8a174c01930e4f95b3ddf837097be18be96d0283e4378b12e5_mini.jpg', 'Bebida Láctea Friminho de Chocolate Frimesa 200Ml', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 448, '//img.sitemercado.com.br/produtos/159e609b38cb6c58105de5a04596025ec7a37f6d08a5843bf6db93e793fb3f23_hero_mini.jpg', 'Achoc em Po Chocolatto Sch 300G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (56.9, 449, '//img.sitemercado.com.br/produtos/a3dbde3e1fb3647a20406da5bc19c0ff9b882d6a0619fc2c84bd117f460e0427_hero_mini.jpg', 'Suplemento em Pó Sustagen Kids Baunilha Embalagem 500G + Grátis 200G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.25, 450, '//img.sitemercado.com.br/produtos/eecd68e640366f03e21861c35176caf00e1b1af8bfc62b14098f107100d83b55_mini.jpg', 'Café 3 Corações 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.9, 451, '//img.sitemercado.com.br/produtos/b1901d73080bf7d09c63c89a44bbfd00bef0afab63fdbbb952d1c3a18320605f_hero_mini.jpg', 'Café 3 Corações Tradicional Vácuo 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.05, 452, '//img.sitemercado.com.br/produtos/70c33b3cdb12f01f62e089d1a372c3ff2f09df7d4ee76d90719ef980a64a286e_hero_mini.jpg', 'Café Torrado e Moído Tradicional Melitta 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.98, 453, '//img.sitemercado.com.br/produtos/0e44586c205757fa833c30fa587dc0267106148e8a1fb9979f3b63484c87c97f_mini.jpg', 'Café Damasco 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.06, 454, '//img.sitemercado.com.br/produtos/1a42fe95d9d3dfdcd8a08a7b3c0b556d1cdddfd9d4eca2fa9adc8c51f95f3ca9_mini.jpg', 'Café Torrado e Moído Tradicional Vácuo Melitta 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.25, 455, '//img.sitemercado.com.br/produtos/21945724e7f576ae859cb982e5b1850b6422d86025e0d8a8b78f43ba6e56eac1_mini.jpg', 'Café Extra Forte 3 Corações Leve 500G Pague 475G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.9, 456, '//img.sitemercado.com.br/produtos/86b5357087a1265c3aa7c11384814959e27ccfdcbdc1c22de99d67eb8eb619c6_hero_mini.jpg', 'Cafe 3 Coracoes 500G Extra Forte', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.18, 457, '//img.sitemercado.com.br/produtos/e994bdb7ccb4bc796ef6efc2f638924601c3aac1b9287a056233220143525b6f_mini.jpg', 'Café Bom Taí Extra Forte Vácuo 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.69, 458, '//img.sitemercado.com.br/produtos/b05c0d6bd48f26036a27a64417ec5e2f0eea05f6e7292347d51c02d6103c731e_hero_mini.jpg', 'Cereal Sucrilhos Kellog 240G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 459, '//img.sitemercado.com.br/produtos/62c985da9569e7867ee6d5a99b513180a649dd1415f1bca30778281566988b6d_mini.jpg', 'Aveia em Flocos Finos Quaker 165 g', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.99, 460, '//img.sitemercado.com.br/produtos/09fbedf75740700276b9146b592c9cb9a6e271f4298f2a181232fed7bbb883bc_mini.jpg', 'Cereal Sucrilhos 690G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.99, 461, '//img.sitemercado.com.br/produtos/f4ed12322d370f9a72db9be42bf03ddd4a2f8c9c5ca28317e3214e8cf49dfc9b_mini.jpg', 'Cereal Matinal Snow Flakes Leve 620G Pague 470G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.69, 462, '//img.sitemercado.com.br/produtos/516bcdc0b3a27f65528d327088438d3a6a6658158789c1c8b4d83f0274d5bf26_mini.jpg', 'Farinha Láctea Original Nestlé 210G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (23.39, 463, '//img.sitemercado.com.br/produtos/5a3985b9d8260b64e10e6e48149bff77fbce192e346a36926a28af916a5bca92_hero_mini.jpg', 'Farinha Láctea Original Nestlé 360g', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.69, 464, '//img.sitemercado.com.br/produtos/ffc05695b307d0a412195210dfbf4fe44558717e8fce496a4edc780492adfa75_mini.jpg', 'Kit Cereal Nestle Nescau 210G + Snow Flakes 230G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.49, 465, '//img.sitemercado.com.br/produtos/fabafce99db0462b2b61e801bfad34a7b089414a9c1ef75882356dacf1588de0_hero_mini.jpg', 'Granola Tradicional Mãe Terra 250G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.49, 466, '//img.sitemercado.com.br/produtos/57816d97934561aacb14b98694d27c4f33f0e72554573eaf0bf2161b4dc2e493_mini.jpg', 'Torrada Tradicional Bauducco 284G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.49, 467, '//img.sitemercado.com.br/produtos/45b638c633d0b5e571bf7c6e007473a2d0f3ac407580bb10805de9eedf9cb029_mini.jpg', 'Torrada Visconti 120G Tradicional', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 468, '//img.sitemercado.com.br/produtos/da70e4c22a57a8d6c9eaf0b683b4dc88d136f5da28839e8bcfb2ba24535fc986_mini.jpg', 'Torrada Bauducco 142G Multigrao', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.59, 469, '//img.sitemercado.com.br/produtos/61d776e140cd8dc1c51b4d5a446373120be6b14be0bba360f3ec6224cef318dd_mini.jpg', 'Torrada Tradicional Bauducco 142G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 470, '//img.sitemercado.com.br/produtos/7a0cedd21db7578e634502bc8364ba02abcb77b2642ee68ad3cc317a35767486_mini.jpg', 'Torrada Lev Magic Toast Original Marilan 100G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.59, 471, '//img.sitemercado.com.br/produtos/aedfbbf80bc78001ffa92b17a105a1d5d9fcc78fb8ed4d7ce43b894957002466_mini.jpg', 'Torrada Visconti 120G Integral', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.59, 472, '//img.sitemercado.com.br/produtos/b56b6d435c00b15bc8de2d3c528225562bddd284831658bd167a365d20126c62_mini.jpg', 'Torrada Visconti 120G Multigraos', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 473, '//img.sitemercado.com.br/produtos/cd5d4070e999c4f47ec456a3fc578cc5903b759fb5ebfd2af94dd2d726641c84_mini.jpg', 'Torrada Integral Bauducco 284G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.49, 474, '//img.sitemercado.com.br/produtos/995e1b0d6d669bb471679a6e2eca31669edd68d84350406626250b1689dfa1cc_hero_mini.jpg', 'Creme de Avelã com Cacau Nutella 140G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.99, 475, '//img.sitemercado.com.br/produtos/993807db17825c59c9e3888a89380a13ee9ad978d84bb06b69671d0ad7d2cc83_hero_mini.jpg', 'Creme de Avelã Ferrero Nutella 350G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.89, 476, '//img.sitemercado.com.br/produtos/43e89e16def0294527eea6d218e29075899db4c59d68617ee8ce0bf31197fd22_mini.jpg', 'Creme de Avelã Nutella 350G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (51.9, 477, '//img.sitemercado.com.br/produtos/ef0657bf59a2c824012e8dee2abc77be879a95982c2dc00d7a94211d65380219_mini.jpg', 'Creme de Avelã com Cacau Nutella 650G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (34.98, 478, '//img.sitemercado.com.br/produtos/a00e42494ef57fb0bff043de4640e9c71f9a5a1405f22a0e9921e08c85c6ab2c_mini.jpg', 'Creme de Avelã Zero Vegano Vitao 180G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.99, 479, '//img.sitemercado.com.br/produtos/4715b00b2d5cd09c132fe9df2f1050ce71e892b91236ec4b3ecb4c89a56e8438_mini.jpg', 'Creme de Avelã com Cacau Barion 280G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (21.59, 480, '//img.sitemercado.com.br/produtos/5a17d46c747412c5baf6a0b6a4a18eb62a37321c17ae3339c0eacf35a159c474_mini.jpg', 'Creme de Amendoim Negresco Guimarães 200G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.55, 481, '//img.sitemercado.com.br/produtos/6ad3713c5623cab7b1f479be65016f598877d20dd801a9e732288f8c50f19ee4_mini.jpg', 'Creme de Avelã com Cacau Divine Creamy 150G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.89, 482, '//img.sitemercado.com.br/produtos/514865e774543e7ebbd804224693dfd8d238ab14c8061e4fcb80c79aa078b190_hero_mini.jpg', 'Chá Matte Natural Leão 250G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.09, 483, '//img.sitemercado.com.br/produtos/7ba66afd5af82ad5a46561ff1301ad43777d9bea27f84d5d86d5d13548e5b631_hero_mini.jpg', 'Chá de Erva Doce Leão 16G com 10Un', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.19, 484, '//img.sitemercado.com.br/produtos/8befb8fba3fa31d00221743be9506f4bad2aa5bb69953391abb97a94d908b6dd_hero_mini.jpg', 'Chá Mate Natural Leão 40G com 25Un', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 485, '//img.sitemercado.com.br/produtos/3f4d6a5fd5430404c90ccba60dd016150d29745c07d92418c5ae35f5194f3edc_hero_mini.jpg', 'Chá de Camomila Leão 15G com 15Un', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.39, 486, '//img.sitemercado.com.br/produtos/123cc88dcae7f402201c803d360dc623bdfc46ba85d993635e58403a86fe1435_mini.jpg', 'Erva Mate para Tereré 81 Hortelã e Menta 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.59, 487, '//img.sitemercado.com.br/produtos/94f69fe0d3f19864b5c7a403c6a1fc01b4bf203e5d451c4136586886ba6ed733_mini.jpg', 'Cha Mate Real Natural 250G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.69, 488, '//img.sitemercado.com.br/produtos/9a690264ad0a13de5203eaa2a4540c6e63bbcd473f2a75f47f1538f58ba32c36_hero_mini.jpg', 'Chá Sabor Hortelã Leão 10G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.29, 489, '//img.sitemercado.com.br/produtos/935c7c195c84df41841ad75b6ae811d0fc15b54db7ea88b61b03b9adf3b7372a_mini.jpg', 'Erva Mate Premium Embalada a Vácuo Regina 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.89, 490, '//img.sitemercado.com.br/produtos/702da62d1b30640a55052f1d9816659ac47ec372b8daa3afb827a9af896e010d_mini.jpg', 'Mel Orgânico Breyer 200G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.65, 491, '//img.sitemercado.com.br/produtos/aa6e336edab181ed19dd3574136e5ff7f6f424e4b733e79b46c500a89eacb96a_mini.jpg', 'Mel Unimel Pote 500G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 492, '//img.sitemercado.com.br/produtos/65d361ba1a4810db88ec3ec9450d68cf080c7e926c79fa3c1cd37763d572538b_mini.jpg', 'Doce de Fruta Misto Oliveira Cremoso Sabor Tutti Frutti Pote 400G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.05, 493, '//img.sitemercado.com.br/produtos/6752a820631b39cc10aa3bd7ccbda424c0f393a2b0f45a3b5c480406c0c14711_mini.jpg', 'Doce Cremoso de Fruta Ritter Morango Pote 400G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.39, 494, '//img.sitemercado.com.br/produtos/69516533939f7a4ee3b54c11b859199a23e32feec1b971a02c37956797ab3150_mini.jpg', 'Mel Unimel Bisnaga 270G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (30.39, 495, '//img.sitemercado.com.br/produtos/921f366aeec98ebab5127aacf482b782c829b6b9f28d521b225101b6803ae41b_mini.jpg', 'Geleia de Frutas Vermelhas Queensberry 280G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.05, 496, '//img.sitemercado.com.br/produtos/69944013cb3e25425ac2a955f622c44bf378218b1a659ed96c390d170fa2dd44_mini.jpg', 'Doce Cremoso de Fruta Ritter Light Uva Pote 380G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (30.39, 497, '//img.sitemercado.com.br/produtos/198d49aeb2589cbeb172179e1cedfae1bd7e6f1450794e0369af249bc41befe1_mini.jpg', 'Geleia de Morango Diet Queensberry 280G', 11);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 498, '//img.sitemercado.com.br/produtos/2512aead8e2477d8097a5c3e01486cb1ab2bb6f1f301d949277e3850dbfebbcc_mini.jpg', 'Pão de Forma Tradicional Visconti 400G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.98, 499, '//img.sitemercado.com.br/produtos/1c7423d253a275de7c2584fdf5f180960273ad6958145ef982621189a675fbc8_hero_mini.jpg', 'Pao de Forma Pullman 480G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 500, '//img.sitemercado.com.br/produtos/0fd8c5d258ca56eb256f0e2b77ab2659c6f77b1c1efa0e7f13532fc59b307859_mini.jpg', 'Pão Croissant 300G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 501, '//img.sitemercado.com.br/produtos/e659329607c36d518b3f87d6c79628aa22e1737f3a5a2a64e2e86bebad51f221_mini.jpg', 'Bisnaguinha Seven Boys', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 502, '//img.sitemercado.com.br/produtos/c312b6f29fb610eae3ac88678bb11f102c9b1c88d791efedd3f620703d92808f_mini.jpg', 'Pão Caseirinho Hot Dog 400g', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.29, 503, '//img.sitemercado.com.br/produtos/10a15b21f30eb92665216406a9cd3ced3ca734d21855de40e001fc7d6f853c79_mini.jpg', 'Pão de Forma Integral Castanha e Quinoa Pão Nino 400G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.69, 504, '//img.sitemercado.com.br/produtos/2d8b47f2b2815a977a2915cff8998898250bb7bb9b1386946fee22a9d0093924_mini.jpg', 'Pão de Forma Sanduíche Tradicional Seven Boys 450G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.98, 505, '//img.sitemercado.com.br/produtos/6f95672ff875f0eaa89028d8b47345c3156c44303c611a6df0b29d9f4a6e321f_hero_mini.jpg', 'Bisnaguito Pullman Pacote 300G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.99, 506, '//img.sitemercado.com.br/produtos/4b2dee6a11231057031c822d6c491b87df6963520a5396dd5f9c2211fd1bd84f_mini.jpg', 'Panettone Chocolate Condor 500G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.99, 507, '//img.sitemercado.com.br/produtos/37f7b7bb838653d7ad84c124696487be1d755f954b62ac8313c4a100dd704ac3_mini.jpg', 'Panettone Frutas Condor 500G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.49, 508, '//img.sitemercado.com.br/produtos/e437aeddfa3956303cfe62f40fb4f05ff4b73a23879b7bae4dcc704b866b6afb_hero_mini.jpg', 'Chocottone Bauducco Bites 107G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.39, 509, '//img.sitemercado.com.br/produtos/7fcfe75d3a7ff625e72494a0f94911dedec1c008d39ef4412fef3a2135981e3c_mini.jpg', 'Fermento em Pó Fermix Biologico Dona Benta Sachê 10G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.99, 510, '//img.sitemercado.com.br/produtos/793e00bb475876832d6bb6b971128a272e450e137d3bea7e84d8dd799f56014e_mini.jpg', 'Fermento em Pó Químico Dr. Oetker 100G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.99, 511, '//img.sitemercado.com.br/produtos/7618f075da6ec67dd81e9ebc9a7fd1617a69deb40af9ca4ef9b5b91bde9d3a73_mini.jpg', 'Fermento Biológico Instantâneo Fleischmann 125G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.49, 512, '//img.sitemercado.com.br/produtos/9211c49714a8d7ee675eaf1af20b63981eeebc2c9583c7d7267d9fd4ccf95069_mini.jpg', 'Fermento Biológico Dr Oetker Seco Instantâneo 125G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.99, 513, '//img.sitemercado.com.br/produtos/614d1d63cfccb00f769aefc30dbf0604fd84446108af8c61e9f8297841b325a8_hero_mini.jpg', 'Fermento Fleischmann Super 13G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.99, 514, '//img.sitemercado.com.br/produtos/4933f5b7c218d78e72246617a59fa2a11a2dead8a0ea9775879968809302164c_mini.jpg', 'Bolo Sabor Laranja Panco 300G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.99, 515, '//img.sitemercado.com.br/produtos/48d74959c8bd1777892466e09ce089d59ba0c7f934a9809419e32436797f5e29_mini.jpg', 'Bolinho Bauducco Roll 34G Chocolate', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.89, 516, '//img.sitemercado.com.br/produtos/f3c2c94294a8936595390e9e8e4c58d7ede37e751424c6af90ea9c49fe19e93f_mini.jpg', 'Bolinho Duplo Chocolate Bauducco 40G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.95, 517, '//img.sitemercado.com.br/produtos/9e459ce133ee71819f27910858b0d9b6040aea3a9c45ff6964033fd385889a64_hero_mini.jpg', 'Bolinho Baunilha Ana Maria 70G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.89, 519, '//img.sitemercado.com.br/produtos/c548b7a2912caafd038365c5e24595aa01ba5347d85ea6b5156b8a960086ded3_mini.jpg', 'Bolinho Sabor Chocolate com Baunilha Bauducco 40g', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.45, 520, '//img.sitemercado.com.br/produtos/f6953d7d4f75932923988a7fb86a75c5f3fb1d36fb39af2f21fa39a98b48879d_mini.jpg', 'Bolo de Chocoboy Panco 300G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (1.49, 521, '//img.sitemercado.com.br/produtos/6b7f3d9367ec7d9a274d50b2d425ce30e30b74c01594525f530c0863ccf63fc9_mini.jpg', 'Bolinho Bauducco Duo Chocolate 27G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.95, 522, '//img.sitemercado.com.br/produtos/d6b81ae83fee81ff49d1b0a7a7c0f433b54b15fcb05ace5db6b790828b48cf1d_mini.jpg', 'Essência de Baunilha Fleischmann 30Ml', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 523, '//img.sitemercado.com.br/produtos/404678f75c21701d95bc14f053e69ab5a25430360b855007cb55cf94270ed956_mini.jpg', 'Mistura para Bolo Chocolate com Avelã Dona Benta 450G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.59, 524, '//img.sitemercado.com.br/produtos/a313e57d8dd0724519ec139592f53900e69e008d6f495f43d0537068eb6e4b6a_mini.jpg', 'Casquinha de Sorvete Barion Kasketes 75G 18Un', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 525, '//img.sitemercado.com.br/produtos/d82fe4830b2f91d82339dd4f4addbb8c2c13e94518121141ef01bd6d860fb3bb_mini.jpg', 'Mistura para Bolo de Coco Dona Benta 450G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.39, 526, '//img.sitemercado.com.br/produtos/4682de21b9da3de491a7b7d3674ebd488df0403c1023d2905d5b9cb5c1d4e466_mini.jpg', 'Mistura Pão sem Glúten Tradicional Vitao 300G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.39, 527, '//img.sitemercado.com.br/produtos/6d98f3396c8eaf067e9c0ba84326e1b78498542efb9952a5395d76e192978879_mini.jpg', 'Mistura para Pão Vitao Sementes e Grãos sem Glúten sem Lactose Embalagem 300G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.05, 528, '//img.sitemercado.com.br/produtos/551a378f6e9465cf6af2db3a758ada274f699d439749453af3756c56d0db8cba_mini.jpg', 'Mistura para Bolo Integral Frutas e Grãos Magro 200G', 12);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.99, 529, '//img.sitemercado.com.br/produtos/89e084290fc1c28240289df027ff591ad4941c7bf4b34dc0000a46cbf0add232_mini.jpg', 'Mistura para Panqueca Americana Fru Fruta 300G', 12); 
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 530, '//img.sitemercado.com.br/produtos/a3d59446d95333e9a17e114169a6af2e6c71f5928173e7ab637b01ba4fc29986_mini.jpg', 'Filtro Papel Melitta 103 C/30', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.19, 531, '//img.sitemercado.com.br/produtos/2524f20e638d1e1cd355948846d70c9ecbf4e056b21d5b78fe0b2f8e7205f6c4_mini.jpg', 'Saco Freezer Giopack 2Kg 100Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.77, 532, '//img.sitemercado.com.br/produtos/6fc3a9fc9beee22bee72177eee3679fe6774a537b4aef60a0b3d20f7f6447302_mini.jpg', 'Filme Pvc Giopack 28Cm X 30M Rolo 1 Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.19, 533, '//img.sitemercado.com.br/produtos/c9d571f14ea0b53e7cb55b086a7f84174b5ec7b2616efb399ee308516c79ba63_mini.jpg', 'Saco Plástico para Freezer Giopack 3Kg Rolo 100Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.49, 534, '//img.sitemercado.com.br/produtos/49849cc33ff774167d5bfe6711634e3a22e6399fdb3d6c423e0cff72bece7dd8_mini.jpg', 'Filtro de Papel Grande N°103 Bom Jesus 30Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.85, 535, '//img.sitemercado.com.br/produtos/d5ffb78844043c332fa39eec8df00c927c8e2aa349aecc96ff502013799367aa_mini.jpg', 'Papel Alumínio Giopack 45Cm Embalagem 4M', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.89, 536, '//img.sitemercado.com.br/produtos/051e37bace8acf21d2f05470fdece7a090221e58b7edaf985dc2d172ec0dd428_mini.jpg', 'Filtro Papel Melitta 102 C/30', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.49, 537, '//img.sitemercado.com.br/produtos/38182656c695f3d007f2e7fecf97901a04505701ff0cad7bfaf3a048bedc08dc_mini.jpg', 'Saco Plástico Giopack 5Kg Embalagem 100Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.9, 538, '//img.sitemercado.com.br/produtos/25d5032a2c11c35c19f9071fb76b6d3d0dac8cc6a5464155c8d6102f12390c6f_mini.jpg', 'Flor Rosa do Deserto P15 Unidade', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.9, 539, '//img.sitemercado.com.br/produtos/958571b3265ac517e6c9fb24f939b604153c82dff1c23a8cdeff786b53b1926f_mini.jpg', 'Flor Rosa do Deserto P15 1Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.39, 540, '//img.sitemercado.com.br/produtos/a88151b2140ff85780dffa348c08cfd3afae37782e17e92d0454ad9b3517beb8_mini.jpg', 'Suculentas P06', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.39, 541, '//img.sitemercado.com.br/produtos/30f9916dc4b8af5dc579955170d0e267ca059be2dbf4dc232233cadff03faca8_mini.jpg', 'Flor da Fortuna Kalanchoe P11 A1', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.39, 542, '//img.sitemercado.com.br/produtos/760d404344bf70e9167c6ef1dc2fb80c3d71e5efa2858d30b062647379013baf_mini.jpg', 'Flor Kalanchoe Dobrado P11', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (53.9, 543, '//img.sitemercado.com.br/produtos/59260b2eb00e3d9e549b37a5c7c45e1ddc29c220d5523ccc4bdd3fd8d8d249ef_mini.jpg', 'Phalaenopsis P12 2 Hastes', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.89, 544, '//img.sitemercado.com.br/produtos/e591d42b57bc2140504a6d5ac80a3f05eba1ff3ac9a92d5ad6882a55dbb0bbd9_mini.jpg', 'Flor Dracena Lucky Bamboo', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.99, 545, '//img.sitemercado.com.br/produtos/87dcaf93f8626e5c78eebe7fbd3252eac2839e8a86e60c9bae62375d11bdcb89_mini.jpg', 'Palmeira Chamaedora Elegans P11 1 Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (36.39, 546, '//img.sitemercado.com.br/produtos/b485bfe53219a8f0487f0d2767fa07a74d7a3806b490543f45e81239429bcd39_mini.jpg', 'Tigela Duralex Facilita Retangular 750Ml 1 Unidade', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.75, 547, '//img.sitemercado.com.br/produtos/0f7a955f0d982e40e4f32a0866c7e33cfe9cc971bf1297a97fe81f0a40fe5bc6_mini.jpg', 'Fósforo Forno e Fogão Paraná 200 Palitos', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.95, 548, '//img.sitemercado.com.br/produtos/3387ea1186a3e77c6451eec34bc73dd2d8564219df7511b33b73cd65458b3fb1_mini.jpg', 'Fósforo de Cozinha Fiat Lux 200 Palitos', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (153.9, 549, '//img.sitemercado.com.br/produtos/8c3e8534463d8da171c60f82846c0f4d52d5fc7d9eb6903a8440b24a05578861_mini.jpg', 'Garrafa de Inox Térmica Lumina Termolar Unidade 1L', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.49, 550, '//img.sitemercado.com.br/produtos/b5634462bcbb8f1fe42f5fcd00abdbd0dc2a5cfe226385dcff2ea6fa27d51187_mini.jpg', 'Copo Nadir Brooklyn 330Ml Long Drink', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (75.9, 551, '//img.sitemercado.com.br/produtos/8f896263814a944758c11360ade3ff6082990822e5e2fca56cf286de291fce24_mini.jpg', 'Bule Térmico Exata Preto Tramontina 1L', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (45.9, 552, '//img.sitemercado.com.br/produtos/ff05a8113c7748a36436080387820fac3cbc325ab9ed362db1a78d2424ad1502_mini.jpg', 'Garrafa Térmica Gostar Preta Sanremo 750Ml', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (36.39, 553, '//img.sitemercado.com.br/produtos/16c938950d786aa98f95b00f1f3f527ef6ff8e88ff85aaef901f948349f4220d_mini.jpg', 'Tigela Marinex Facilita Vap com Tampa Unidade 750Ml', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.49, 554, '//img.sitemercado.com.br/produtos/4eb19ec16596a7eb282461d6af57043f27ad283c5cedb696f222fb8fdcc69014_mini.jpg', 'Super Bonder Precisão Loctite 5G', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.39, 555, '//img.sitemercado.com.br/produtos/114a4a5e0cde9c0e5510f9eee3d7b19beea5624f16b7e10deda55707ee0cd330_mini.jpg', 'Pilha Alcalina Palito Duracell com 4Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.9, 556, '//img.sitemercado.com.br/produtos/6a5bc2695d5e594718f2fd682a644b840102510c50692698cfe48de536cad92c_mini.jpg', 'Fita de Reparos 3M 45Mm Silver Tape Unidade 5M', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 557, '//img.sitemercado.com.br/produtos/0ddb73f7852d0ce5a7effc4b96c986fcae768e204fac9d1b5ee7117618b430e1_mini.jpg', 'Pilha Alcalina Aaa Mn 2400B2 1,5V Duracell 2Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.99, 558, '//img.sitemercado.com.br/produtos/82527fef3eba94fdf053aa6b35531db9e77c5982f123f3b357221175f4c62140_mini.jpg', 'Lâmpada Led Ph Branca 806Lm 9W', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.39, 559, '//img.sitemercado.com.br/produtos/f4eb62af1fd41321facf3e9f9076dab90228b3150809b030876832bb8ee333c3_mini.jpg', 'Cola Durepoxi 100G', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.69, 560, '//img.sitemercado.com.br/produtos/2504bcd08d89e3db6c724ae13762276dd422d95c64e92a06093bc8d93fe78591_mini.jpg', 'Pilhas Duracell Alcalina Aa 2Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 561, '//img.sitemercado.com.br/produtos/0ebb12166015e2c81a4e9ba538aba65d7ca68555438f722a3701b1f0e301d108_mini.jpg', 'Adesivo Instantâneo Vonder 20G', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.59, 562, '//img.sitemercado.com.br/produtos/e988f192c7048a9a7a31a5df1fd5357d161748d0729cc659c7017f0d725e4299_mini.jpg', 'Escova Prime Grill Limpa Grelhas', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.14, 563, '//img.sitemercado.com.br/produtos/c69a9dd8e4c2588d26efe7c39660f78f0e82aff40046f808ec2a54c9e2d110f0_mini.jpg', 'Isqueiro Bic Mini', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 564, '//img.sitemercado.com.br/produtos/62844750642b5f67ac6bc9b250a0d9c07108211f043666de69c903f4eecc3386_mini.jpg', 'Palito Bambu Paraná Embalagem 50 Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (110.9, 565, '//img.sitemercado.com.br/produtos/afd66b063345d59bdcd6c40b8e765c9aa7ebdfa4536e57b2efe6881291b8cb23_mini.jpg', 'Grelha Inox Moeda 38X48cm Utimil', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.29, 566, '//img.sitemercado.com.br/produtos/6b7e33532a13e70bf286a8df3beb43818db5ccc6e6cda04aba0ac7b79d76cd4b_mini.jpg', 'Acendedor para Churrasqueira Bastão Fiat Lux 5Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (78.9, 567, '//img.sitemercado.com.br/produtos/fd998a742a61d93ba9e23833fae5fe7967fa243a67d9af8ad6e6b226dd77218d_mini.jpg', 'Tábua de Madeira para Churrasco Stolf Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (33.9, 568, '//img.sitemercado.com.br/produtos/bb566d31e84b5da4927751e80fcc64c496913d9c7e300894ead417db0f0c0bea_mini.jpg', 'Faca Tramontina Inox Carne 8''Embalagem 1Un Ref 22938/108', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (41.9, 569, '//img.sitemercado.com.br/produtos/c739943e842825756575bea647029d8ef824e14a599319a083e393d71c28e740_mini.jpg', 'Grelha Super Grill 02 Mor', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.79, 570, '//img.sitemercado.com.br/produtos/c95cfdf56ef12d44dcca36947ff37e5599ccfb0a443418a8c14ed09c57ab4430_mini.jpg', 'Fósforo Ecológico Gigante Paraná 50Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.69, 571, '//img.sitemercado.com.br/produtos/89dce88c27f24d26f14b303fdc1c57187fdeff6e15806bc4257018bef7660565_mini.jpg', 'Rolo Adesivo Refil Scotch Brite 21 Folhas', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (35.29, 572, '//img.sitemercado.com.br/produtos/e862496f65d6d36634c843df8bacf5d54c1902ebf69be6b6df111069a174484f_mini.jpg', 'Pote de Cerâmica Heart Branco 12X10x10cm Lyor', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (169.9, 573, '//img.sitemercado.com.br/produtos/0d679259b2d0bd812870363fd8b9ffb21b06d09334c2a57fad4dfb056299d445_mini.jpg', 'Tábua para Passar Roupa Dobrável Utimil 1,20M X 35Cm Unidade', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.69, 574, '//img.sitemercado.com.br/produtos/f85e76f2d6813667f0c1e9fec751ebe84d0fdaba3119fc357fa580480a5b0aa8_mini.jpg', 'Filtro para Bomba Chimarrão Chimarrita 2 Unidade', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (32.9, 575, '//img.sitemercado.com.br/produtos/b21d27dc83c29e3cf8394cae310c37a18ed6c0bf3394175993a86d4fe0752e67_mini.jpg', 'Porta Sabão Sanremo Ref 267 Unidade 2,35 Litros', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (72.9, 576, '//img.sitemercado.com.br/produtos/8c89b94fac4fe3769251e33120c20c64bcbb3ebd87c32648fd4b3330d50b74f3_mini.jpg', 'Cesto Sanremo', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.9, 577, '//img.sitemercado.com.br/produtos/1445c89b6f10876a2892b1974f5a1edb172482f4cb03c1f97440d7445dd852b5_mini.jpg', 'Conjunto de Cabides Primafer Cristal Embalagem Leve 6 Un Pague 5 Un', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (31.9, 578, '//img.sitemercado.com.br/produtos/6b24a9b079b2827c87f48e62249c819543aed47bb692bbd63841e443d9451e1c_mini.jpg', 'Óleo para Motor Ipiranga Moto 4T Sae 10W30 Embalagem 1L', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (31.9, 579, '//img.sitemercado.com.br/produtos/c64f3dba56b89e8ef057b15e0acc9b24b81074c613b784df0cf36ace5710b222_mini.jpg', 'Óleo para Motor Ipiranga Moto Performance 4T 10W30 Embalagem 1L', 13);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.59, 580, '//img.sitemercado.com.br/produtos/aa9c4c71a8dfa39453f05581b8a0ac82975bcbf378cd08bbfa60ea0c2d99c2f2_mini.jpg', 'Álcool Nobre Embalagem 1 Litro', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.79, 581, '//img.sitemercado.com.br/produtos/a87a3d3dce2bdc9c6c2d57aaa33f6e70bde053c3525e6044e0c79cac0a890f0f_mini.jpg', 'Água Sanitária Qboa 1L', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.9, 582, '//img.sitemercado.com.br/produtos/51e2e10efba2c17d610018f36e5864ab609a7c3299dc29262915f06b7cdb68f3_hero_mini.jpg', 'Multiuso Cremoso Original Cif 250Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.29, 583, '//img.sitemercado.com.br/produtos/73b95cf7d42c670438b82ee0637cba4cc1a943eeac17bd937a41f07fe7720411_hero_mini.jpg', 'Multiuso Cremoso Original Cif 450Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.59, 584, '//img.sitemercado.com.br/produtos/e57b711e8650540f929fecb9c66b06173c983f8466ccbbee0c0a778530b1be9d_hero_mini.jpg', 'Desinfetante de Lavanda Ypê 2L', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.89, 585, '//img.sitemercado.com.br/produtos/aa9314c8cc2022ed5ad11220bc33d019db52c6b8e62c591b13c5d31f44b3b297_mini.jpg', 'Lustra-Móveis Lavanda Peroba 200Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.79, 586, '//img.sitemercado.com.br/produtos/7b73b734d49bd9c7010a132602daf8acfd81264d28ca5e95960178b31dace612_mini.jpg', 'Saponéceo Cremoso Classic Sapólio Radium 250Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.99, 587, '//img.sitemercado.com.br/produtos/7f19df90cc7da32ba68e7ea324d5e2dc8b7a8c8bc94d4104bcb4d6aa5879b4dd_mini.jpg', 'Limpador Multiuso Original Gold Veja 500ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.4, 588, '//img.sitemercado.com.br/produtos/9fa792003e11ccb2ba8a4386505701fc475c7e3a70105a0288ac25c8f97cb4ce_hero_mini.jpg', 'Esponja Dupla Fac Scotch Brite L4p3', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.9, 589, '//img.sitemercado.com.br/produtos/9dbfd445ea3628859f97ef32db624a2492828dc001a2219777d31340f82baf69_mini.jpg', 'Saco de Lixo Brilhus Rolo 30 Unidades 50L', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.89, 590, '//img.sitemercado.com.br/produtos/09dc630ff93e9cf2c5912eceb46ad6f35f9fa1696ca16cdb7f887ff2df1c2471_mini.jpg', 'Detergente Líquido Limpol Neutro Leve + Pague - com 6 Unidades 500Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.69, 591, '//img.sitemercado.com.br/produtos/cf35523b31243c4a36079b5c4db41d6f7c53f2dfc6203658c04fe99b8021eb3b_mini.jpg', 'Detergente Líquido Cristal Limpol 500Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.69, 592, '//img.sitemercado.com.br/produtos/7ac70d491d82cbd6e07bdae1a3fb7ac28b040b143927f3ea158d14eaeef281c5_mini.jpg', 'Detergente Líquido Neutro Limpol 500Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (30.89, 593, '//img.sitemercado.com.br/produtos/04fcaa4f40426b9735673cd84464242378f551dec16dd0e4b7161237e51bab76_hero_mini.jpg', 'Secador Abrilhantador para Lava Louças Finish 250ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (29.39, 594, '//img.sitemercado.com.br/produtos/78634537d358896b568f10b7baec9a794826e6aa89443c2e0690d8674d5014b9_mini.jpg', 'Detergente Tablete para Máquina de Lavar Louças Finish Powerball Pouch 138G', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.9, 595, '//img.sitemercado.com.br/produtos/c4498ede3cd9165c7b9ccc371d8eabf7c7ce10686f125e306e5f5568e4ad3a28_hero_mini.jpg', 'Detergente Limpol Gel Aloe Vera - Leve 511G Pague 411G', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.59, 596, '//img.sitemercado.com.br/produtos/545e563612c8432c838a94db504977735c754ce7260cdfeb46f437e6f11e121f_mini.jpg', 'Detergente Líquido Neutro Limpol 5L', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.19, 597, '//img.sitemercado.com.br/produtos/efc46ba374b4374071e7a5f4cf9b141122c3cb096ad21db4ed1f62aa1f59dc6f_mini.jpg', 'Pasta Multiuso Cristal Rosa 500G', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (33.99, 598, '//img.sitemercado.com.br/produtos/060a1f1e06e24eefc163a1d56602e275f4e3491600fe600ef1fd3885239369d7_hero_mini.jpg', 'Sabão em Pó Lavagem Perfeita Omo 2,2Kg', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (27.69, 599, '//img.sitemercado.com.br/produtos/5b297c27c3b32ab91ef91af3d686d6870042fdf23c49b96ba24d74d11f750f23_mini.jpg', 'Amaciante de Roupa Concentrado Brisa de Verão Leve 1,5L Pague 1,25L Downy', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (22.57, 600, '//img.sitemercado.com.br/produtos/96adf31450f618ac5af2bfdfc3f880fdc397f0762e5e01919717180aab4fb6d5_hero_mini.jpg', 'Sabão em Pó Lavagem Perfeita Omo 1,6Kg', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.79, 601, '//img.sitemercado.com.br/produtos/e0f6c1c13d73dd3076655de99c80b15d538d4588df2de1f9f5ea39c6d79bfb67_mini.jpg', 'Sabão em Barra Glicerinado Neutro Ypê 180G 5Un', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.58, 602, '//img.sitemercado.com.br/produtos/a6269fbb7d3e9bc9b28c8dc691306ac1143e9c70f0c3b257b7a48e7913c02506_mini.jpg', 'Amaciante Ypê Intenso Embalagem 2L', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.59, 603, '//img.sitemercado.com.br/produtos/cb977a95f35cd6bc53cbd8e52ee38275dedd05500816a371ecf22fa99019bb06_mini.jpg', 'Amaciante Downy Brisa do Verão 500Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (20.49, 604, '//img.sitemercado.com.br/produtos/8f12495711502738be5b1bec9e6fe489cdf8e39b59bffb043043a6e67f4fe7f6_mini.jpg', 'Anil Imperial Reckitt 44G', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.9, 605, '//img.sitemercado.com.br/produtos/f131b22242c4a8e7bef7939f4d6a099b12e3cf65ec3f24d848494a5f5c25510a_hero_mini.jpg', 'Omo Lavagem Perfeita 800G', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.9, 606, '//img.sitemercado.com.br/produtos/bc35e8554838e0bdd48c43ac30b3bee1447219de944fb6b7fd9086c02c506d20_hero_mini.jpg', 'Inseticida Aerosol Ação Total Óleo de Eucalipto Baygon 360Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.9, 607, '//img.sitemercado.com.br/produtos/3fc459da503b59d1d63a590b2b1685a9cdaa33051b34027610cd29736a02201d_mini.jpg', 'Inseticida Aerosol Ação Total Baygon 360Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.9, 608, '//img.sitemercado.com.br/produtos/99631ebfb2e2df405d4022fc5549f3036f3214ee6528cc9c64fe2cac235abbce_mini.jpg', 'Inseticida Aerossol sem Cheiro Noites Tranquilas Sbp 360ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (38.19, 609, '//img.sitemercado.com.br/produtos/e3c5698e68082812b767a49760a9dc91a38727c300fb10cb9d2bca797490bcd1_mini.jpg', 'Inseticida Jimo Cupim Incolor Aerosol 400Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (25.59, 610, '//img.sitemercado.com.br/produtos/51e7b8fe5accbd6cb4a7582cda56af070e13c3e36918d1248e56030f76d1403a_hero_mini.jpg', 'Repelente Elétrico Líquido 45 Noites Raid com 02 Refis de 32,9Ml Cada', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (21.9, 611, '//img.sitemercado.com.br/produtos/7fb7b9778636385b993614c5a22fe2c27344d8c0066d6f3cc6200acd2ebec8f6_hero_mini.jpg', 'Inset Sbp 45 Noites Refil 50%Desc', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (18.9, 612, '//img.sitemercado.com.br/produtos/c325665d0df99587750837322ca569b053d40178480c892a4f9aa9c8deb2331b_mini.jpg', 'Inseticida Aerossol Ação Magnética Base Água Sbp 360ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.39, 613, '//img.sitemercado.com.br/produtos/33cb55cb6c60d47e020c6570861ca56c7107521ca28106888696df1f4504c2a7_mini.jpg', 'Multi-Inseticida Aerossol Ação Total Pro Mortein 360ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.19, 614, '//img.sitemercado.com.br/produtos/cb62ef22842e917a8126827d8be8d0d3a86abea30dd2980db3405d95b6ce171e_hero_mini.jpg', 'Pastilha Adesiva Lavanda 20% de Desconto Pato com 3Un', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.99, 615, '//img.sitemercado.com.br/produtos/a2d10d3f92d4fad724a9dd8884efe1a2a76b8076b8e990442b0fb497adff1785_mini.jpg', 'Pastilha Sanitária Lavanda Fresca Girando Sol 9G', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.59, 616, '//img.sitemercado.com.br/produtos/d301403acbac440e3b7683dd2ba3585cf95879b2d1b0632c5c8b04f2a3882598_hero_mini.jpg', 'Pedra Sanitária Aroma Plus Citrus Harpic 20g', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 617, '//img.sitemercado.com.br/produtos/c051edbce0984376da2c99c4503d9ba8653bcc9894dc0593bb8e82b795d54edf_hero_mini.jpg', 'Gel Adesivo Sanitário Refil Marine Pato com 6Un', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (49.9, 618, '//img.sitemercado.com.br/produtos/77a7ff4e8398ff75b156dee1f23df6dccfd0956aceaa102514701cce7dc26508_hero_mini.jpg', 'Aromatizador Bom Ar Spray Automático Freshmatic Refil 250ml 50% Off Na 2ª Unidade Campos de Lavanda', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (20.9, 619, '//img.sitemercado.com.br/produtos/970f386c513aba4f78408f38a45f79a5ab8bab1a5a1af3fd1d35fab5e7b5e7c5_mini.jpg', 'Gel Adesivo Lavanda Oferta Refil Pato 38G com 2Un', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.9, 620, '//img.sitemercado.com.br/produtos/7973f81b177a17747365489f532e758efab7fe7b5b773fdf1e267eaa487900eb_mini.jpg', 'Bloco Sanitário Caixa Acoplada Lavanda Fresca Girando Sol 35G com 2Un', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.15, 621, '//img.sitemercado.com.br/produtos/7a79873d0e6eb5c4a14a085d9eacce6d42cedf31be4fabb5e9e091a3e8be537b_hero_mini.jpg', 'Aromatizador de Ambientes Lavanda e Baunilha Oferta Spray Glade 269Ml', 14);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.99, 622, '//img.sitemercado.com.br/produtos/8810aebfa15284b8e7b25f31d0c121b56e3fdb580a6a8247cc4df1d8588f5510_mini.jpg', 'Papel Higiênico Folha Dupla Neutro Vip 30m Personal Leve 16 Pague 15 Rolos', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.59, 623, '//img.sitemercado.com.br/produtos/afe3c1404cce67c4fd93f018cf0ad1834e389e282e02471577d3de8e103a05ca_mini.jpg', 'Haste Flexível Cottonbaby 75Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.89, 624, '//img.sitemercado.com.br/produtos/04af9b2ee1f2736944acc72db152f4d2817ae395879ff608eae625a05520eeda_mini.jpg', 'Papel Higiênico Prime Folha Tripla 20M Mili com 12 Rolos', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.29, 625, '//img.sitemercado.com.br/produtos/660f4b8855232547a86b25fed73f57aa82c67456b662388f8021a898f28221f7_mini.jpg', 'Hastes Flexíveis Johnsons 75Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (30.49, 626, '//img.sitemercado.com.br/produtos/8ddb14c5a5529a1f67b241c082df31fd893949877f6b2942f47807aa42b929eb_mini.jpg', 'Papel Higienico Mili Soft Comfort 18Un 30M', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.39, 627, '//img.sitemercado.com.br/produtos/6df34b36ceabf5d7e8c1c19d8a61f51cfa06c4f14ff579c3925eff361245ce79_mini.jpg', 'Absorvente Noturno Suave com Abas Mili 16Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (23.49, 628, '//img.sitemercado.com.br/produtos/be532048ae3562b34000e4f7544fbd7c17f7a92cc1819f73bd4da8f3bfca6672_mini.jpg', 'Papel Higiênico Folha Dupla Neutro Fofinho Leve 16 e Pague 15Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.59, 629, '//img.sitemercado.com.br/produtos/48d38debaedf0bf6bee1b9b5e018a19e4d02135887dc07a1a464f02e216b03b6_mini.jpg', 'Algodão Condor Disco com 60 Unidades', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.19, 630, '//img.sitemercado.com.br/produtos/93e9a411b78ec3071d6caf68a1ab58dde4d33b2b20115d79554f1f44f895376e_mini.jpg', 'Sabonete em Barra Perfumes da Natureza Frutas Vermelhas Albany 85G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (5.59, 631, '//img.sitemercado.com.br/produtos/94af4e421a16cb5546a32f6124d146806044f7e6dfa1e69ff550df933cb751b2_hero_mini.jpg', 'Sabonete em Barra Original Dove 90G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.99, 632, '//img.sitemercado.com.br/produtos/58cf67de56fb646e1d4f64171f6ad7ad1825e7961893c115f47593cf2e019a72_mini.jpg', 'Sabonete Nivea Leite 85g Oferta 6un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.19, 633, '//img.sitemercado.com.br/produtos/2608642d8a564f67b0dd802e12ad5847aab233ac160763742855e69c94ed5391_hero_mini.jpg', 'Sabonete de Baunilha Nivea 85g', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.19, 634, '//img.sitemercado.com.br/produtos/27a53fcf22836259b1bf137cbcba830a761044a54ed50ee0ad29575dda5bedc0_hero_mini.jpg', 'Sabonete de Orquidea Nivea 85g', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.09, 635, '//img.sitemercado.com.br/produtos/5528606f5fc167e5c675775156ba497dea4e2f2355fdb190ccf2ff6f4ce1caef_mini.jpg', 'Talco Antisséptico Perfumado Barla Embalagem 140G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.19, 636, '//img.sitemercado.com.br/produtos/fb6d281591e4d367536a88d6bebec5789deddfd9130258eb6b873c83edcc9a9c_hero_mini.jpg', 'Sabonete em Barra Leite Nivea 85g', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.39, 637, '//img.sitemercado.com.br/produtos/9cd0a38c7b58ed083077f0e3c3c80f33cf83b563131505650dfb63d5348430cd_hero_mini.jpg', 'Repelente Sbp Advanced Spray Oferta 100ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.08, 638, '//img.sitemercado.com.br/produtos/d6bd7cbedef186268121dec182eee4be79b0214acf935668d4c404cb8e09ccb4_mini.jpg', 'Creme Dental Menta Suave Oral-B 1-2-3 70G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.99, 639, '//img.sitemercado.com.br/produtos/1decca3ed72796a19e56cc0664ace6cbf9e5587823949c5f1d57dc897180e634_hero_mini.jpg', 'Creme Dental Colgate Trip Acao 90G Original', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.19, 640, '//img.sitemercado.com.br/produtos/702e6277326a92061b6d32254d6373cd185f17d6c059a49691a22c1c519e5bdb_hero_mini.jpg', 'Creme Dental Advance Total 12 Colgate 90G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.9, 641, '//img.sitemercado.com.br/produtos/1c8937c9c82d0712db51ebbf1c57673d05bf34c599ed43706ec9fbfbc41559b0_mini.jpg', 'Fio Dental Essencial Johnson & Johnson100m', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.19, 642, '//img.sitemercado.com.br/produtos/0be47484d5228146348c90fd074c502ecaa5e7f75b73795cb11256afa9e0203a_hero_mini.jpg', 'Creme Dental Total 12 Clean Mint Colgate 1Un 90G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.59, 643, '//img.sitemercado.com.br/produtos/310e145ac3a4780b80e2d64c7b999e1f77c58fa92bd386becbef28f8b45e699f_hero_mini.jpg', 'Kit Creme Dental para Sensibilidade Sensitive Pro Alívio Imediato Original Colgate 90G com 3Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.19, 644, '//img.sitemercado.com.br/produtos/a7253aa4a2c228dd7097c28b09150e35911793562127e0c5cda33ad6a4e68dde_mini.jpg', 'Creme Dental Total12 Carvão Ativado Colgate 90G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.48, 645, '//img.sitemercado.com.br/produtos/e86a04f7bbc5b90592771a68e665a6d8cb9952307d299473f19a0c9a41cc025a_hero_mini.jpg', 'Enxaguante Bucal Cool Mint Listerine 500Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.9, 646, '//img.sitemercado.com.br/produtos/0d8b9ffaae6f29e324a63a036c616dbf21e1e458340ea4c264559f9c4d59601d_mini.jpg', 'Tinta de Cabelo Iluminadas do Brasil 6.35 Castanho Caramelo Cor & Ton', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (15.9, 647, '//img.sitemercado.com.br/produtos/0173246752b6c489544c11211cb84359247c611fde5f3f6d17a9b885ab427481_mini.jpg', 'Leave In de Tratamento Cicatri Renov Elseve Reparação Total 5+ Loréal Paris 50Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (9.9, 648, '//img.sitemercado.com.br/produtos/ccb569914ccff7f0b93ba239da156a0feea56f7b66f05b2a9bf08ba3ab7b84bf_mini.jpg', 'Shampoo Naturre Camomila 300Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (28.9, 649, '//img.sitemercado.com.br/produtos/c2ee180dc28417e70ed816d86db7b2a6796e38f6f6ad2a4962d8e1404b6210db_mini.jpg', 'Kit Hidra Hialurônico Shampoo 375Ml + Condicionador 170Ml + Sachê Revitalift Hialurônico Elseve', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (26.49, 650, '//img.sitemercado.com.br/produtos/1b96ae8e60422605e5e12477740ee806d3b51e058aef75c05df9212ed87f4e44_mini.jpg', 'Kit Reconstrução Shampoo 350ml + Condicionador 175ml Dove', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.95, 651, '//img.sitemercado.com.br/produtos/501b255a271b3a8177393a650696eea75a27e25d8f19f53b910fee383450092b_mini.jpg', 'Kit Shampoo 350ml + Condicionador 175ml Blindagem Antifrizz Tresemmé', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.69, 652, '//img.sitemercado.com.br/produtos/8b580ff80a314136cbe294e415ecb13166ac437c875eed0786625407b846a711_hero_mini.jpg', 'Kit de Shampoo 325Ml + Condicionador Ceramidas 325Ml Seda', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (24.95, 653, '//img.sitemercado.com.br/produtos/fd2d34a242043a23d0299ed5883ff4dd0f85b5bbe271fccbd8367b481c77c716_mini.jpg', 'Kit Hidratação Profunda Shampoo + Condicionador Tresemmé 350ml + 175ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.09, 654, '//img.sitemercado.com.br/produtos/3e8e37bc447ea6a501f9e9277f883fc4e81310e90b1032beb1e859f321ff0a46_mini.jpg', 'Acetona Farmax 100Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (21.19, 655, '//img.sitemercado.com.br/produtos/e065b169a3240f90e6c66e4f7d83bd1409039f314b759e967534eb27530b75ed_mini.jpg', 'Removedor de Esmalte À Base de Acetona Farmax 500Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.98, 656, '//img.sitemercado.com.br/produtos/c10c9dac04fc094082f5e04e525dc90985c3afa0ed866c3f354c5762c2a5935e_mini.jpg', 'Esmalte Tratamento Incolor Impala 7,5Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.98, 657, '//img.sitemercado.com.br/produtos/50f6a230d4b73af43da948d3aee217be655c4e27b2fd111d3e79529ceb9b2f37_mini.jpg', 'Esmalte Perolado Sonho Impala 7,5Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.98, 658, '//img.sitemercado.com.br/produtos/c59b260d1a70ee7d3bc87cac0318922c2c2897765a8e020e59e64dd58cf57aa7_mini.jpg', 'Esmalte Impala Cremoso Preto Embalagem 7,5Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (10.89, 659, '//img.sitemercado.com.br/produtos/020497d9117e86c3b53facee443f7a66a48ef4c990f7ef7e053b04a5ae1839d7_mini.jpg', 'Removedor Esmalte Ap Eco Lutex Embalagem 100Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 660, '//img.sitemercado.com.br/produtos/67be0b0cfab008e7a93f5f9da84a90a89c92581f6a69bd915e46e95f018d1508_mini.jpg', 'Talco para Pés Canforado Tenys Pé 100G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.79, 661, '//img.sitemercado.com.br/produtos/8c187d3d6a024b7ea41582cac736c5a30261f8b469612e0c8dbac63fd098f879_mini.jpg', 'Esmalte Escuro Cremoso Preto Sépia Risqué 8Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (66.9, 662, '//img.sitemercado.com.br/produtos/3cb2b1849660b05280e7a6a1a0c8da06d7c7f9b497a2e2ae17ca5f16d68c5cd3_mini.jpg', 'Fralda Ultrasec Galinha Pintadinha Hiper Xg Babysec 60Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.99, 663, '//img.sitemercado.com.br/produtos/5c6d67d770abac570b80a6b5b318ba52731ace788267517366361bc686eb83d9_mini.jpg', 'Sabonete Líquido Kids Slime Tutti Frutti Premisse 500Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.39, 664, '//img.sitemercado.com.br/produtos/c96e42c19fb20ac0e9101ddc10763e4919d7bd5c858d862c8b6c3a5a9bf226e9_hero_mini.jpg', 'Sabonete Infantil Tradicional Granado 90G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (4.19, 665, '//img.sitemercado.com.br/produtos/9cb1ed28e4db7ffccc51226ff1cd6ba1b74b9de9268a87e0f00fb98aedf311c4_hero_mini.jpg', 'Sabonete em Barra Extra Suave para Bebê Huggies 75G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (47.9, 666, '//img.sitemercado.com.br/produtos/25624e9d705f7903a9a23cc7502aaf0614ff8309c04b273bac187a2e4a84053a_hero_mini.jpg', 'Lenço Umedecido Toque da Seda Neve Leve 4Un Pague 3Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.29, 667, '//img.sitemercado.com.br/produtos/37026e8ed5b8851b7f7873bd0937f8bdaf569cfd0df67b5547ce89f1c916fb66_mini.jpg', 'Toalha Umedecida Meu Bebê Ultra Embalagem 100Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (3.69, 668, '//img.sitemercado.com.br/produtos/5ff3c838a49eba31b22318bb18da4b70ee2ccda631aeea53ea6f83109fef5207_mini.jpg', 'Sabonete em Barra para Bebê Baby Delicate Care Protex 85G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (106.9, 669, '//img.sitemercado.com.br/produtos/a419019183b39cb41713c23a1820ccc569940c2b138d7df3bff422f452c7f101_mini.jpg', 'Pampers Confort Sec Fort Bag Xxg C/52', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (27.9, 670, '//img.sitemercado.com.br/produtos/09d2bb25a6394377f9e48734fefe39cf3eb876cf4e93b51d8a15319f8bcba45a_mini.jpg', 'Protetor Solar Above Fps30 150Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (63.9, 671, '//img.sitemercado.com.br/produtos/9ae901fe6b1f62820aa69b1139c8ad34f5107b5f1d5ea4b5b3f35ae3a0a96864_hero_mini.jpg', 'Protetor Solar Facial Anti-Idade Fps 50 Beauty Expert Nivea Sun 50g', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (47.9, 672, '//img.sitemercado.com.br/produtos/2f3713fcca593e95f0801cc97fc0a26708fe93c96ae3c5bcd90ee54dc5502564_mini.jpg', 'Protetor Solar Fps 50 Cenoura e Bronze 200Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (41.4, 673, '//img.sitemercado.com.br/produtos/8b5d6606aac22b2d918d126f5b5ef9350f1c2e857d87b0087598fb29218d0686_hero_mini.jpg', 'Gel Hidratante Antioxidante Pós Sol Sundown 140G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (55.9, 674, '//img.sitemercado.com.br/produtos/966fce975063229103908dab772b04125ff79cddd53e0abe41cf15fdcbb35d27_hero_mini.jpg', 'Protetor Solar Protect & Hidrata Fps 30 Nivea 200ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (37.89, 675, '//img.sitemercado.com.br/produtos/fc9f7d8fcf91102ff67b56a1480f840c1244be3c1098aed22c8906930b09a07e_hero_mini.jpg', 'Loção Bronzeadora Nivea Intense e Bronze Fps 6 Embalagem 125ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (62.55, 676, '//img.sitemercado.com.br/produtos/bf473902c26bc4e7a389edb80fb64bf682e8ba9c5b6c8ca6373498234eb3fd43_hero_mini.jpg', 'Protetor Solar Corpo e Rosto Praia e Piscina Fps 50 Sundown 200Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (52.9, 677, '//img.sitemercado.com.br/produtos/6a7610d27723abcf7d6209f6a988adea815012975f0eb56200c5ba8c949d7c06_mini.jpg', 'Kit Protetor Solar Facial Fps30 30G + Protetor Solar Corporal Fps30 200Ml Cenoura & Bronze', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (17.58, 678, '//img.sitemercado.com.br/produtos/8d56952b60be311ab9ce5cefb27b1d79b32633033d16d25d2f21bcc44df6205d_hero_mini.jpg', 'Curativos Transparentes Band-Aid 40Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (13.29, 679, '//img.sitemercado.com.br/produtos/ed661539933498bf57139c0b6b00ddfc621402157bfbe530d57a07543e9c2d17_mini.jpg', 'Curativos Cremer Transparente Embalagem 40 Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.95, 680, '//img.sitemercado.com.br/produtos/6124c5274f8c37d2592b1518034bb39cdf7e7b0e06fd0ae4e3d9c219cf72bf9f_mini.jpg', 'Curativos Cottonbaby Tradicional 10 Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (7.99, 681, '//img.sitemercado.com.br/produtos/badae93b93011f0c7c891ea79c9cffba249e0313644837aedb19d1687ce44cca_mini.jpg', 'Preservativo Clássico Prudence Leve 8 Un Pague 6', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (19.69, 682, '//img.sitemercado.com.br/produtos/75a39ba130f87e51be9acfc97054d34e2d4e33d28bb657bf8d690ea2648d8ddd_hero_mini.jpg', 'Curativos Transparente Variados Band-Aid 30Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (6.69, 683, '//img.sitemercado.com.br/produtos/985053d668977abd0ff09869aa9a631ca7756017b16399efbbd507ae386f5ceb_hero_mini.jpg', 'Preservativo Jontex Lubrificado 3Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (2.95, 684, '//img.sitemercado.com.br/produtos/6aa93a465012a105acbc4d9915233905414f38c3072f375536921b83f425a72c_mini.jpg', 'Compressa Gaze Cremer Max 10 Unidades', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (14.99, 685, '//img.sitemercado.com.br/produtos/a42d73647b2894f4af9f9db4dd1dee927df98e87bac8784a6d11efa94d908d49_mini.jpg', 'Preservativo Prudence Super Sensitive 6Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (8.19, 686, '//img.sitemercado.com.br/produtos/6b4492c8acc625bdb540e51cb4c16a1653d66e711067b8e10d726344eef1e93a_mini.jpg', 'Hastes Flexíveis Cottonbaby Aplicador de Maquiagem Embalagem 30Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (34.39, 687, '//img.sitemercado.com.br/produtos/fe646a2fa16d8f1ca30db163f6c041602d5dc223d06d3ed1a3c7caf22e04bea1_mini.jpg', 'Manteiga Emoliente Granado Embalagem 60G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.19, 688, '//img.sitemercado.com.br/produtos/01882438c2747d77087ab53f13683031d8fb816942944d8f7fd15c8bfd0ec1f3_mini.jpg', 'Lenço Demaquilante Vitamina C Dermachem Embalagem com 25Un', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (16.49, 689, '//img.sitemercado.com.br/produtos/12ec4ac8e020509bb3797e6c255a2a4ea5c4011ca4787bb60821c02657df816b_mini.jpg', 'Gel Esfoliante Facial Pedras Vulcânicas Dermachem 100G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.59, 690, '//img.sitemercado.com.br/produtos/66830fa2721caf2009f0f49f0a93f30396f22c0e897eddc19dd83649326313d9_mini.jpg', 'Sabonete Demaquilante Make Out Dermachen 100Ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (30.89, 691, '//img.sitemercado.com.br/produtos/ba1a052304c02c662838fdba2224e2dddba5702468b6bf172084dc04c6348ede_hero_mini.jpg', 'Sabonete em Gel Facial Controle do Brilho Nivea 150ml', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (11.99, 692, '//img.sitemercado.com.br/produtos/3e0d46fb7bab4078360a6c0db2ef0d8d19c7331c3d7395003ee7893c40c3a68e_mini.jpg', 'Protetor Labial Sun Fruits Fps 24 Sabor Baunilha Dermachem 3,5G', 15);
INSERT INTO tb_produtos (preco_produto, id_produto, imagem_produto, nome_produto, fk_categoria) VALUES (12.59, 693, '//img.sitemercado.com.br/produtos/3100147a8b84634132bf4b3acbbd845b70ad4d6c640407ee5bc37e9a87a24ff5_mini.jpg', 'Sabonete Dermachem Facial Make Up 100Ml', 15);






SELECT setval('tb_categorias_id_categoria_seq', (SELECT COALESCE(MAX(id_categoria), 0) FROM tb_categorias) + 1, false);
SELECT setval('tb_categorias_id_categoria_seq1', (SELECT COALESCE(MAX(id_categoria), 0) FROM tb_categorias) + 1, false);

-- Sequências para tb_itempedido
SELECT setval('tb_itempedido_id_itempedido_seq', (SELECT COALESCE(MAX(id_itempedido), 0) FROM tb_itempedido) + 1, false);
SELECT setval('tb_itempedido_id_itempedido_seq1', (SELECT COALESCE(MAX(id_itempedido), 0) FROM tb_itempedido) + 1, false);

-- Sequências para tb_pedidos
SELECT setval('tb_pedidos_id_pedido_seq', (SELECT COALESCE(MAX(id_pedido), 0) FROM tb_pedidos) + 1, false);
SELECT setval('tb_pedidos_id_pedido_seq1', (SELECT COALESCE(MAX(id_pedido), 0) FROM tb_pedidos) + 1, false);

-- Sequências para tb_produtos
SELECT setval('tb_produtos_id_produto_seq', (SELECT COALESCE(MAX(id_produto), 0) FROM tb_produtos) + 1, false);
SELECT setval('tb_produtos_id_produto_seq1', (SELECT COALESCE(MAX(id_produto), 0) FROM tb_produtos) + 1, false);
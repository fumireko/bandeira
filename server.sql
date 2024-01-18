--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: tb_categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_categorias (
    id_categoria integer NOT NULL,
    desc_categoria character varying(255)
);


ALTER TABLE public.tb_categorias OWNER TO postgres;

--
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
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_categorias_id_categoria_seq1 OWNED BY public.tb_categorias.id_categoria;


--
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
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_itempedido_id_itempedido_seq1 OWNED BY public.tb_itempedido.id_itempedido;


--
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
	data_criado timestamp(6),
	data_entregue timestamp(6),
);


ALTER TABLE public.tb_pedidos OWNER TO postgres;

--
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
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_pedidos_id_pedido_seq1 OWNED BY public.tb_pedidos.id_pedido;


--
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
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_produtos_id_produto_seq1 OWNED BY public.tb_produtos.id_produto;


--
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
-- Name: tb_categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.tb_categorias_id_categoria_seq1'::regclass);


--
-- Name: tb_itempedido id_itempedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido ALTER COLUMN id_itempedido SET DEFAULT nextval('public.tb_itempedido_id_itempedido_seq1'::regclass);


--
-- Name: tb_pedidos id_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.tb_pedidos_id_pedido_seq1'::regclass);


--
-- Name: tb_produtos id_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos ALTER COLUMN id_produto SET DEFAULT nextval('public.tb_produtos_id_produto_seq1'::regclass);


--
-- Data for Name: tb_categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_categorias (id_categoria, desc_categoria) FROM stdin;
1	Alimentos Básicos
2	Carnes, Aves e Peixes
3	Bebidas
4	Biscoitos e Salgadinhos
\.


--
-- Data for Name: tb_itempedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_itempedido (id_itempedido, qtde_itempedido, fk_pedido, fk_produto) FROM stdin;
\.


--
-- Data for Name: tb_pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_pedidos (id_pedido, entregue, url_pedido, bairro_pedido, cidade_pedido, logradouro_pedido, nome_cliente_pedido, numero_predial_pedido, opcao_pagamento, referencia_pedido, tel_cliente_pedido) FROM stdin;
\.


--
-- Data for Name: tb_produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_produtos (id_produto, preco_produto, fk_categoria, imagem_produto, nome_produto) FROM stdin;
1	39.9	1	//img.sitemercado.com.br/produtos/7e9e53de8995d36c9e2d9a437a021d7b6289af3ec58cd3e6d9d0aad2112ff8cc_hero_mini.jpg	Cesta de Natal Alegria Condor
2	86.45	1	//img.sitemercado.com.br/produtos/2f0bef6007a4f49b6155b574f405bb317f96ac20d5c8248fa8c916634d84d452_mini.jpg	Cesta Basica Aurora Tropical 11 Itens
3	5.98	1	//img.sitemercado.com.br/produtos/86de8486ff4e7433b8f05d40cc4c618986a7806b5fc890cc576665d718377724_mini.jpg	Oleo de Soja Liza 900Ml
4	5.69	1	//img.sitemercado.com.br/produtos/04d9059cee26a5c4067eb434319c307b2fc52299012539f11ebf16df2b6ead40_mini.jpg	Óleo de Soja Coamo 900Ml
5	2.15	1	//img.sitemercado.com.br/produtos/94bc5b92be1d7df71566c9e6a788b57eaf769425c447c168751c77236cc92dbb_mini.jpg	Vinagre de Álcool Chemim 750Ml
6	35.59	1	//img.sitemercado.com.br/produtos/efa5446a97cff3fbc90389cee1d5eb4a4876d94391df8b6369a2b747c993e93c_mini.jpg	Azeite de Oliva Extravirgem Oliveira da Serra 1Un
7	14.95	1	//img.sitemercado.com.br/produtos/bddac251b059a4bbf8ac88299ba66d2a6e6bf1a9c4b282c38ee128b247d2f022_mini.jpg	Ovos Brancos Tipo Grande Mantiqueira Bandeja 30 Un
8	7.99	1	//img.sitemercado.com.br/produtos/4d37daa43d3a61629b5ca219d1a9c8455ecf64f66149ef1b4eab42b6faa32bfd_mini.jpg	Ovos Branco Marutani Grande Embalagem 12Un
9	14.95	1	//img.sitemercado.com.br/produtos/77dfdef91a2733fc59262d43aa660ed9c3285895c1cea86c279a44aee550bac9_mini.jpg	Ovos Brancos Tipo Médio Mantiqueira 30Un
10	7.99	1	//img.sitemercado.com.br/produtos/3b462ebe47d9ca8064e11d4a3ddfe8a3ab50b8fabae85ccae5c15f1968c8babf_hero_mini.jpg	Ovos Brancos Real Agro c/12un
11	19.98	1	//img.sitemercado.com.br/produtos/0c31808e1b9da5680307db60c7b4171a7796b32b1007309e33c4edca75e81a7c_mini.jpg	Açúcar Refinado Caravelas Embalagem 5Kg
12	4.75	1	//img.sitemercado.com.br/produtos/b1d787104e212437179f782987ece95e547a47ee6c6a5a351899195f11aee885_mini.jpg	Açúcar Demerara Caravelas 1Kg
13	5.52	1	//img.sitemercado.com.br/produtos/003c0c4e5912b75a5c414fbc2eca4584bf4185d519497e925913d6492af68f21_mini.jpg	Açúcar Mascavo Condor
14	7.39	1	//img.sitemercado.com.br/produtos/2829059fa51d6c687ca4308e1df0752d2e14ac79495f9b83bb2822e3b56f2195_mini.jpg	Adoçante Líquido Adocyl 200Ml
15	31.98	1	//img.sitemercado.com.br/produtos/9834ff5c24a13af637e323265653848e8bd9a4f4a59ac8c052455915440f1495_mini.jpg	Arroz Branco Longo Fino Polido Tipo 1 Camil 5kg
16	29.62	1	//img.sitemercado.com.br/produtos/2efb60a035e5888566443125d3fe8cfe51613db5d1eadbde60aac7f927d4f33e_mini.jpg	Arroz Tipo 1 Namorado 5Kg
17	6.95	1	//img.sitemercado.com.br/produtos/79569f2df93ab2e1bfd24fec9e34a9744d29fe1a80ed69fe2fe241c62e92fcb4_mini.jpg	Arroz Parboilizado Tipo 1 Buriti Pacote 1Kg
18	6.99	1	//img.sitemercado.com.br/produtos/1a0c8c610dabfbff753f1a442d7e93d64936255faef402b3f085154bd0d49e43_mini.jpg	Arroz Integral Buriti Pacote 1Kg
19	2.49	1	//img.sitemercado.com.br/produtos/df259e0aafdc4d5e1dcabe8d3c3dc1f2aff62ef40a126224fca818a3ce9b4ab9_mini.jpg	Sal Refinado Moc Pacote 1Kg
20	2.59	1	//img.sitemercado.com.br/produtos/989d8b4a35a997b1e8ff1e20df7dd65520f505285c35d135f2ebc449d150a4a5_mini.jpg	Sal Refinado Diana 1Kg
21	4.69	1	//img.sitemercado.com.br/produtos/82fe205625c0d477249494b0eab53e257a9c2571747065a5cc41ab71a269c1db_mini.jpg	Sal Marinho Zaeli Natural 1Kg
22	3.05	1	//img.sitemercado.com.br/produtos/8a11d77b2f016a55e367e2ef79a05ce605f5c5832122d31c0242c8faf4037090_mini.jpg	Sal Grosso Diana 1Kg
23	9.98	1	//img.sitemercado.com.br/produtos/f2db24741581d0b2988271e007606c48446cefc7da5a26344ea8de62d59836a8_mini.jpg	Feijão Preto Caldobom Stival 1Kg
24	2.29	1	//img.sitemercado.com.br/produtos/82ccaa905dc9af2a914008c13be9c42d10a4ffe0bd2016f796f7a6746c057072_mini.jpg	Feijão Carioca Tchê 1Kg
25	6.19	1	//img.sitemercado.com.br/produtos/a51e36e9788ddfb52f8737b77124cab0995b1f1a9da808538ab329d4c6361776_mini.jpg	Feijão Fradinho Caldo Bom 500G
26	8.79	1	//img.sitemercado.com.br/produtos/87c264eb4eb5d4ba6ed5cbdb790b1dcd0418f1d26afd3bb10ff469edda0d8776_mini.jpg	Feijão Cavalo Caldo Bom 500G
27	6.69	1	//img.sitemercado.com.br/produtos/ef1d40a3c6842e570c461be65718ea2e733dd3b21b0cea8a3f60ed6987057880_mini.jpg	Farinha Láctea Condor
28	9.29	1	//img.sitemercado.com.br/produtos/3f585980b3c0e23e0798513c729956e99160ae61b9bee0cfe0f1261ab1f821d9_mini.jpg	Farofa Pronta Zaeli Milho 500G
29	11.59	1	//img.sitemercado.com.br/produtos/d855e1b6e945d46f719e63d78dbbf95ae21286ca14864ecf522cdfd5581bc3b5_mini.jpg	Farinha de Milho Branca Campo Largo Embalagem 1Kg
30	2.95	1	//img.sitemercado.com.br/produtos/e6a68d93d24fbe0a8859d5c304d8e2bc7bb9517cff5ff7adab1c293d09ae6354_mini.jpg	Amido de Milho Condor 200G
31	4.69	1	//img.sitemercado.com.br/produtos/0e04af244830cab8be07f2aaa3c1308ac1fc1a5e5e10d8fc20308d9d53b24a34_mini.jpg	Macarrão Espaguete N5 Todeschini com Ovos Pacote 500G
32	12.99	1	//img.sitemercado.com.br/produtos/18fb90593544b00af2c7e7299a39619cc2b4e6622aca360b53c066cd3af6f3ac_mini.jpg	Macarrão Instantâneo Lámen Galinha Caipira 85G Nissin Leve6 Pague5un
33	5.29	1	//img.sitemercado.com.br/produtos/74a860eb73eff9ff4029839dfd6c6e92a338c65f19b5ae7b6fc71f305581610e_mini.jpg	Massa Condor Caseira Speciale 500G
34	3.79	1	//img.sitemercado.com.br/produtos/9aefc44d4be212bb202725fccafa51d25f897646cba343af735873b28a5c307e_mini.jpg	Macarrão Linguine Isabela com Ovos Embalagem 500G
35	5.09	1	//img.sitemercado.com.br/produtos/2c6b29ac024295c4a019aa850d0058f8d4e01f0389fb229f450af037b8248df9_mini.jpg	Milho para Pipoca Jandira Premium Pacote 500G
36	9.79	1	//img.sitemercado.com.br/produtos/2c95cdab4b0be13b8bec9e443c72cc7d777eee6756067f40559bc35ac5e3dfe3_mini.jpg	Grão de Gergelim Caldo Bom 200G
37	4.98	1	//img.sitemercado.com.br/produtos/305cd51ee38db661040822652b28531625bbf307d6eeb4b0a0ad54a429366fcf_mini.jpg	Milho para Pipoca Tipo 1 Pacote Yoki 400G
38	87.5	2	//img.sitemercado.com.br/produtos/73a484f23d11a8eb4dc971cbba588650c46c20877b3900c5edbac3928dd11d4e_mini.jpg	Picanha Bovina Reserva Kg
39	29.73	2	//img.sitemercado.com.br/produtos/6e9775b6a81b970d685fced5b735312a8da8c7e467cf687652f3e49ff239c982_mini.jpg	Coxão Mole Resfriado
40	49.9	2	//img.sitemercado.com.br/produtos/e93bbcbd9ed2f62ca17eed2c93b618f4106ef598bd8106a164d3c7665fa5536b_mini.jpg	Alcatra Bovina Bife Bandeja Kg
41	32.69	2	//img.sitemercado.com.br/produtos/1ce36223e50fafe0a0504ad90cebbbaa9dce36c0622c8575085c437db389e527_mini.jpg	Contra Filé Bovino com Osso
42	9.98	2	//img.sitemercado.com.br/produtos/db711842270ac7db7bb91576c660d6787b2e6328e223af9b65f646f60d8b7fb9_mini.jpg	Coxinha da Asa Congelada   Kg
43	14.87	2	//img.sitemercado.com.br/produtos/f14951a6352ee054d13ba6837245d193259952538b5a4b0143ba37539386cd93_mini.jpg	Peito de Frango com Osso Kg
44	10.69	2	//img.sitemercado.com.br/produtos/df2a4d494ca92877ca52e2d4a3b0581d621fa0daa66aa7beefb510243b31283e_hero_mini.jpg	Sobrecoxa sem Pele Resfriada 600G
45	16.89	2	//img.sitemercado.com.br/produtos/c12048ab9647b8462043a259d8440a3149933fed33bbbbeee404e1f671c1a6f3_mini.jpg	Filezinho Copacol Sassami Congelado 1Kg
46	10.98	2	//img.sitemercado.com.br/produtos/1560f0929f2f583722e67fa5d448d580435a20a26b7c84c82cd8c87cc14fcf68_mini.jpg	Salsicha Hot Dog Perdigão 700G
47	18.54	2	//img.sitemercado.com.br/produtos/389b4e8ad2bcd202e7df9ba5b7c7ebf16783d63635e416d55587fb45715d7902_mini.jpg	Linguiça Calabresa Alegra
48	7.79	2	//img.sitemercado.com.br/produtos/fe8765b31016b82652b152084b3e2a2094936ed1b5816c871a9caff34f27d4bb_mini.jpg	Linguiça Calabresa Alegra 400G
49	23.9	2	//img.sitemercado.com.br/produtos/3ea6939d13ff13a36fd7e06e2caf74a1ad2dff3258812b81429ca49d6ac88336_mini.jpg	Linguiça Calabresa Defumada Frimesa Kg
50	19.99	2	//img.sitemercado.com.br/produtos/71ba2df4bc006701f2b650bb0389eb6ca22f1f6f485386180bc0796125bff7b8_mini.jpg	Bacon Alegra Tablete
51	42.9	2	//img.sitemercado.com.br/produtos/11202c398e878f80efd79ab4fbb0c6e89a20cc422627c005d670648e9485ee7a_mini.jpg	Costela Suína Defumada Alegra
52	33.79	2	//img.sitemercado.com.br/produtos/8ad7a4e03face101db4a9ba433a806cec81ee05bb77b60ba9492dd544fe0c200_mini.jpg	Bacon Defumado Sadia
53	31.9	2	//img.sitemercado.com.br/produtos/84834724cc5b9c0a96729c1249ffa577cbaa969a46fa6de2359a8e9eabe7e295_mini.jpg	Bacon Alegra Kg
54	19.89	2	//img.sitemercado.com.br/produtos/53ce9bd2ead7e87f5483613430bfa12d6762ffc161fd6ae58b7cf541dafc166a_mini.jpg	Filé Mignon Suíno Sadia sem Osso Congelado 1Kg
55	35.19	2	//img.sitemercado.com.br/produtos/a4df35800071df77348d5996953b68e13fb0e499a2aef2f4dc3d8b6fd609a2ee_mini.jpg	Costela Suína Sulita Kg
56	24.9	2	//img.sitemercado.com.br/produtos/79428e8a032dd6bd035c74a8efacd7888cc86f35f432ea89e693bb81986b2ae2_mini.jpg	Tender Suíno Bolinha Frimesa Kg
57	15.98	2	//img.sitemercado.com.br/produtos/87233e85eb713aff25500b450f52c202b6da6bca6bcdb2e5efa1be7c9503c0e5_mini.jpg	Pernil Suíno Temperado
58	27.79	2	//img.sitemercado.com.br/produtos/6babf9194083bd8efbb1f4bfa78a9daa6c93a91cdf692fc97c6183da946754b5_mini.jpg	Tilápia Congelada Copacol Filé Pacote 400G
59	47.9	2	//img.sitemercado.com.br/produtos/0343b8a0e68f40cb0fe9741e9296a9c41b1b0ba73a0855ab5f32e50445297cd9_mini.jpg	Peixe Tipo Bacalhau Pollock Desfiado Peixaria
60	43.9	2	//img.sitemercado.com.br/produtos/3eb4c604aa810bb47c8ebe80e20c77faeac629468d00e3d6b90dde81b70d8071_hero_mini.jpg	Filé de Tilápia Congelada Copacol 800G
61	21.9	2	//img.sitemercado.com.br/produtos/49cede4ebdc7691cbc1e67d4f872cf5fc1fbedeed14962a6e3ee380bc79a7ce7_mini.jpg	Posta de Tilápia Copacol 800G
62	57.9	2	//img.sitemercado.com.br/produtos/74ed5bdf974c29b5dfd5947b2c5cc2fda3c5139e985dd4ef6f2d5ce3cc955e5b_hero_mini.jpg	Camarão Sete Barbas Descascado Congelado 400G
63	59.9	2	//img.sitemercado.com.br/produtos/4aed3a71c4ddcecffa868637f655ddb62e70fb0e93a7fd8c9e596c1cbb0cb64b_mini.jpg	Camarão Vannamei Copacol Descascado Cozido Congelado 380G
64	39.9	2	//img.sitemercado.com.br/produtos/ff5a10a2795293c2a082ee04acd2daf00453b97252b0c1d5a5a9c87d2324b477_mini.jpg	Camarão Vanamei Inteiro Costa Sul Cozido Congelado Embalagem 400G
65	52.9	2	//img.sitemercado.com.br/produtos/d81e9554ebce646e00d5e2b04d5e6ab78603372b4c1c5c56b0bc82780ee15b93_mini.jpg	Ingredientes para Paella Lula, Mexilhão, Polvo e Camarão Costa do Sul 400G
66	23.9	2	//img.sitemercado.com.br/produtos/caf3eb6e5014fdc38f05790ab5889eda4657b20e206ca76cc61b585643016f9f_mini.jpg	Hambúrguer Vegano Tradicional Futuro Burguer 230G
67	19.98	2	//img.sitemercado.com.br/produtos/07b6e676be8d7cee2e934d89d4b1aebc99c19a0673f699ba597e69a2691673e4_mini.jpg	Carne Moída 100% Vegetal Seara Incrível 200g
68	13.19	2	//img.sitemercado.com.br/produtos/bfd3f4cc84b81a1c9105d03e4d898a5330be6aeac7e6651ccc7aa983ba95af7f_mini.jpg	Mistura Vegana Caldo Bom Quibe 250G
69	26.98	2	//img.sitemercado.com.br/produtos/fb1184dde00067c8418441a0962773828d1eb30e762952c17781ddae3747e886_hero_mini.jpg	Pernil Desfiado Pulled Pork 100% Vegetal Seara Incrível 350g
70	119.99	2	https://taguatech.com.br/adm/uploads/2094236.jpg	Placa de Vídeo XFX PCI-E GF GT240 1GB/DDR3
71	8.29	3	//img.sitemercado.com.br/produtos/d2833086b2509c951e6df4bfe3be157addcd8e9b090abaa61dcfe7f29d4622b2_mini.jpg	Água de Coco Autenticoco 400Ml
72	1.49	3	//img.sitemercado.com.br/produtos/66196b84c530ed9ed93651df7bd90ce09385178a39c7b22755aa169d8c442161_mini.jpg	Água Mineral com Gás Cristal Pet 510Ml
73	1.75	3	//img.sitemercado.com.br/produtos/9e2e3e924f81f57d484ab89cb4c40b67a9b2742b5168db7f990d188304518bd1_mini.jpg	Água Mineral com Gás Font Life Garrafa 510Ml
74	2.85	3	//img.sitemercado.com.br/produtos/0c3a2b463e5de1b3d80cfbd43a6865a314bfbabab5bf7c25215c5611cc41d3f8_mini.jpg	Água Mineral Premium com Gás Cristal 1,5L
75	7.29	3	//img.sitemercado.com.br/produtos/a4906152766a25c82227e5b5bcc8944183348cfeeda5c9a58b62d59fbf074614_hero_mini.jpg	Fanta Guaraná 2L
76	4.79	3	//img.sitemercado.com.br/produtos/565f9131f67b84e591ec7bf2dd76b754f9341bdfbcc34d90ca7f5b76b1904142_mini.jpg	Refrigerante Maçã Verde Cini 2L
77	3.19	3	//img.sitemercado.com.br/produtos/ed5f937b80112fce23fe16754c50a7fba0f3e09f7237104f0147bdfc3721ed2f_hero_mini.jpg	Água Tônica Sem Açúcar Schweppes 350ml
78	9.5	3	//img.sitemercado.com.br/produtos/5e787417039821caba1bd4edf10c1c5082401d5617dcefe42d6283235e50c01d_mini.jpg	Coca-Cola Original Garrafa 2l
79	35.29	3	//img.sitemercado.com.br/produtos/d00e666aa60ae9d66464d6e92df72d009ff96e1bde3a6926821022a4ec0c01e1_mini.jpg	Energético Red Bull Energy Drink 250Ml
80	4.99	3	//img.sitemercado.com.br/produtos/fa7cfb36f14d0b24c1fea638ff9f7deea0ed74be2c876d0ab184d5c445849e77_hero_mini.jpg	Isotônico de Limão Gatorade 500Ml
81	4.99	3	//img.sitemercado.com.br/produtos/df2f93334ccd7f23b1117f85c41b8db692af1380e94b71be6e67eb6b11bed1ad_mini.jpg	Isotônico de Tangerina Gatorade 500Ml
82	4.65	3	//img.sitemercado.com.br/produtos/a35ea39debe964c54461b158461f6a6deea150c5f7a99db1328eadb6e4248a73_mini.jpg	Isotônico Sabor Blue Berry Gatorade 500ml
83	24.99	3	//img.sitemercado.com.br/produtos/fa8c6565929b8f046941502fefdedb1fa3bea696f13d4acae2174729fe0d2d7c_mini.jpg	Néctar de Laranja 3L
84	0.89	3	//img.sitemercado.com.br/produtos/0760604c8d62f79dd4ce795a4fa5a434f5a5e92227dbb6c22fc618d288aa8822_mini.jpg	Refresco em Pó Sabor Uva Trink 15G
85	0.89	3	//img.sitemercado.com.br/produtos/f42be6dc0b5d40a1500c4a3bec11dfd03a363cac620de253f7f59eb05d3d6cd7_mini.jpg	Refresco em Pó Sabor Laranja Trink 15G
86	0.89	3	//img.sitemercado.com.br/produtos/6399ec3d3e38141fa38069a619dd377b4ec9c347d09e9d50c1fb5277a60e26d1_mini.jpg	Refresco em Pó Sabor Laranja Bahia Trink 15G
87	6.49	3	//img.sitemercado.com.br/produtos/929e89fb07d50fa1022669cc334b8a00ee13c33d30c6e6ec792ce0d561d3d2ed_hero_mini.jpg	Chá Sabor Pêssego Ice Tea Leão 1,5l
88	6.19	3	//img.sitemercado.com.br/produtos/c6f2f4bc00ee62942847ff1bdc5ce27307dc7c3ff5f4b5380f046cb66cd2ae01_mini.jpg	Chá Ice Tea Pêssego Lipton 1,5l
89	6.89	3	//img.sitemercado.com.br/produtos/2c41caa193f49e4035f78caf5d1a3655490e961e468b9f6fdc9ebcc0480503e4_mini.jpg	Chá Mate Limão Matte Leão 1,5l
90	5.99	3	//img.sitemercado.com.br/produtos/9bd240f4e1b289ded4be7511cce9f1214c8df41250d02c261a69054f023512d6_mini.jpg	Chá de Hibisco com Romã e Gojiberry Natural Tea 1L
91	19.9	3	//img.sitemercado.com.br/produtos/bf97092f66cd9b21b954223afb2bfc0195ca0bd76e893566e3b5261359b24d42_mini.jpg	Bebida de Aveia Orgânica Original Nude. 1L
92	8.55	3	//img.sitemercado.com.br/produtos/5f83b8f9eb5d1d28f23c31aa1b2441f5aa5efcd3232678afa38302287c2c724e_mini.jpg	Ades Original 1L
93	8.55	3	//img.sitemercado.com.br/produtos/3a1b853cef44bb73fbd852806dc4cfb3b00eb5f439a353c0177292ea80adc31d_mini.jpg	Bebida de Soja Zero Adição de Açúcares Ades 1L
94	6.59	3	//img.sitemercado.com.br/produtos/bd3cc8beabbe667b1b33e6d44c4d0106e19946f798305aa3d871ea1f274bf8c8_mini.jpg	Bebida de Soja Purity Original Caixa 1L
95	4.99	4	//img.sitemercado.com.br/produtos/deeaf32725806135c7ff6ae00b6a6c9f6d46a0cc5c414b6bc9177d4a5f2cb8ba_mini.jpg	Biscoito Maizena Marilan 350G
96	2.99	4	//img.sitemercado.com.br/produtos/d84d947ae65f2c9dd6e9ccef4a8312181417148b3b80ab74def03a5acd776b47_hero_mini.jpg	Biscoito de Chocolate Recheio Baunilha Negresco 90G
97	4.35	4	//img.sitemercado.com.br/produtos/be57991925099ce3e96131f21a1fbc7e99ae11cb8839c49f0d608f5e3b3f4e12_mini.jpg	Biscoito Maizena Piraquê Pacote 175G
98	2.95	4	//img.sitemercado.com.br/produtos/12a9a092186390b7fca4d643a564380d2edf423d27e3fb04bf1480f63cb5829f_mini.jpg	Biscoito Tortinhas Sabor Torta de Limão Isabela 160G
99	4.49	4	//img.sitemercado.com.br/produtos/9d23a089e338dbaf2b6a9ede75e0b025541baacb1d28cad96c0c57794a4e33d5_mini.jpg	Biscoito de Polvilho Ofir Rosquinha Embalagem 80G
100	2.99	4	//img.sitemercado.com.br/produtos/3994a00b2e798af3f371b34d33abc9f9660588359f126daeaf7c3dd145a49dd8_mini.jpg	Biscoito de Polvilho sem Glúten Fritelli 40G
101	8.19	4	//img.sitemercado.com.br/produtos/901a5f31eb981d72f8ff515a61463e3ba43a8ef0be757c0665e707483238f85b_mini.jpg	Biscoito de Polvilho Andriolli Tradicional Embalagem 100G
102	5.49	4	//img.sitemercado.com.br/produtos/2a11d9837f5dc3c07ef5e35e6bc1791a73b485ede1d8a5419ba6ee2cca443e26_mini.jpg	Biscoito Água com Gergelim Piraquê Pacote 215G
103	18.79	4	//img.sitemercado.com.br/produtos/28ee9e9b9cdac3c044f6d901a7e09f4b6c8971ceeabcca7c08b9e73ebb8185f3_mini.jpg	Ovinhos de Amendoim Econômica Elma Chips 400g
104	12.58	4	//img.sitemercado.com.br/produtos/4d3314139f2d26af8f8590707315be3fefd1a8972e92741833b6fb2c23d10408_mini.jpg	Amendoim Japonês Dori 500G
105	9.99	4	//img.sitemercado.com.br/produtos/09fe5b71a079f7e19c2f2d69d93a36757194373b66feade53e2fc98f9bfaccde_mini.jpg	Amendoim Caldo Bom Descascado 500G
106	11.79	4	//img.sitemercado.com.br/produtos/399b072974c261808dfb53d7276318f05e108172ddabaedc9eebde70b906795b_mini.jpg	Castanha do Pará Jandira sem Casca Embalagem 100G
107	10.99	4	//img.sitemercado.com.br/produtos/1cff092909798ee9ec34e6d243cc19afbf9d8e8cafea363e605079b5aa1a5670_mini.jpg	Salgadinho Original Pringles 104G
108	12.19	4	//img.sitemercado.com.br/produtos/309c1ee2e5a068fa648217f466064a28ff9846b886873c7c851a65809f785721_mini.jpg	Kit Salgadinho Lanchinho Sortido Elma Chips 98G com 5Un
109	6.19	4	//img.sitemercado.com.br/produtos/577cee1538198d7c421ec1ebb06db4f85665eef530888924219b3e4a1b8ee841_hero_mini.jpg	Salgadinho Queijo Nacho Doritos 45g
110	1.06	4	//img.sitemercado.com.br/produtos/b1c89ea9eac4d46bd47d929891c9059d8c1250b958b3a207207ef7a3388af7be_mini.jpg	Pipoca Doce Karoli 50G
\.


--
-- Name: tb_categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categorias_id_categoria_seq', 1, false);


--
-- Name: tb_categorias_id_categoria_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_categorias_id_categoria_seq1', 5, true);


--
-- Name: tb_itempedido_id_itempedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_itempedido_id_itempedido_seq', 1, false);


--
-- Name: tb_itempedido_id_itempedido_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_itempedido_id_itempedido_seq1', 1, false);


--
-- Name: tb_pedidos_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pedidos_id_pedido_seq', 1, false);


--
-- Name: tb_pedidos_id_pedido_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_pedidos_id_pedido_seq1', 1, false);


--
-- Name: tb_produtos_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_produtos_id_produto_seq', 70, true);


--
-- Name: tb_produtos_id_produto_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_produtos_id_produto_seq1', 1, false);


--
-- Name: usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_seq', 1, false);


--
-- Name: tb_categorias tb_categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_categorias
    ADD CONSTRAINT tb_categorias_pkey PRIMARY KEY (id_categoria);


--
-- Name: tb_itempedido tb_itempedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_pkey PRIMARY KEY (id_itempedido);


--
-- Name: tb_pedidos tb_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_pedidos
    ADD CONSTRAINT tb_pedidos_pkey PRIMARY KEY (id_pedido);


--
-- Name: tb_produtos tb_produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT tb_produtos_pkey PRIMARY KEY (id_produto);


--
-- Name: tb_produtos fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria) REFERENCES public.tb_categorias(id_categoria) ON DELETE CASCADE;


--
-- Name: tb_itempedido tb_itempedido_fk_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_fk_pedido_fkey FOREIGN KEY (fk_pedido) REFERENCES public.tb_pedidos(id_pedido);


--
-- Name: tb_itempedido tb_itempedido_fk_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_itempedido
    ADD CONSTRAINT tb_itempedido_fk_produto_fkey FOREIGN KEY (fk_produto) REFERENCES public.tb_produtos(id_produto);


--
-- Name: tb_produtos tb_produtos_fk_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_produtos
    ADD CONSTRAINT tb_produtos_fk_categoria_fkey FOREIGN KEY (fk_categoria) REFERENCES public.tb_categorias(id_categoria) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


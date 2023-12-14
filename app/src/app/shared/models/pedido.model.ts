import { Itempedido } from "./itempedido.model";

export class Pedido {
    constructor(
        public cidade: String,
        public logradouro: String,
        public numero_predial: String,
        public bairro: String,
        public referencia: String,
        public nome_cliente: String,
        public tel_cliente: String,
        public opcaoPagamento: String,
        public urlPedido: string,
        public itens: Itempedido[]
    ){}
}

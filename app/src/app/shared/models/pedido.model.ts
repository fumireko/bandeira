import { ItemPedido } from "./itempedido.model";

export class Pedido {
    constructor(
        public id?: number,
        public cidade?: string,
        public logradouro?: string,
        public numero_predial?: string,
        public bairro?: string,
        public referencia?: string,
        public nome_cliente?: string,
        public tel_cliente?: string,
        public opcaoPagamento?: string,
        public urlPedido?: string,
        public itens?: ItemPedido[],
        public data_criado?: string,
        public data_entregue?: string,
        public entregue?: boolean
    ){}
}

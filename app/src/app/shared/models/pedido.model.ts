import { ItemPedido } from "./itempedido.model";

export class Pedido {
    constructor(
        public id?: number,
        public cidade?: string,
        public logradouro?: string,
        public numeroPredial?: string,
        public bairro?: string,
        public referencia?: string,
        public nome_cliente?: string,
        public tel_cliente?: string,
        public opcaoPagamento?: string,
        public urlPedido?: string,
        public dataCriado?: string,
        public dataEntregue?: string,
        public entregue?: boolean,
        public precoFrete?: number,
        public itens?: ItemPedido[],
        public totalPedido?: number
    ){}
}

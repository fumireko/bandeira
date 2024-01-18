import { Pedido } from "./pedido.model";
import { Produto } from "./produto.model";

export class ItemPedido {
    constructor(
        public id?: number,
        public pedido?: Pedido,
        public produto?: Produto,
        public quantidade: number = 0
    ){}
}

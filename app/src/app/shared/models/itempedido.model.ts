import { Pedido } from "./pedido.model";
import { Produto } from "./produto.model";

export class Itempedido {
    constructor(
        public produto: Produto,
        public quantidade: number
    ){}
}

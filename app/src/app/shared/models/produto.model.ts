import { Observable } from "rxjs";
import { Categoria } from "./categoria.model";

export class Produto {
    constructor(
        public id?: number,
        public nome?: string,
        public preco?: number,
        public imagem?: string,
        public categoria?: Categoria,
        public disponivel?: boolean
    ){}
}

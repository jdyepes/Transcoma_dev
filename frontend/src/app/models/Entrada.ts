import { EntidadBase } from "./EntidadBase";
import { Producto } from "./Producto";
import { Almacen } from "./Almacen";
import { Cliente } from "./Cliente";

export class Entrada extends EntidadBase {

    private _fechaEntrada: string ;
    private _producto: Producto ;
    private _almacen: Almacen ;
    private _cliente: Cliente ;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$fechaEntrada = data._fechaEntrada;
            this.$producto = data._producto;
            this.$almacen = data._almacen;
            this.$cliente = data._cliente;
        }
    }

    /** Getters y setters */
    public get $fechaEntrada(): string {
        return this._fechaEntrada;
    }

    public set $fechaEntrada(value: string) {
        this._fechaEntrada = value;
    }

    public get $producto(): Producto {
        return this._producto;
    }

    public set $producto(value: Producto) {
        this._producto = value;
    }

    public get $almacen(): Almacen {
        return this._almacen;
    }

    public set $almacen(value: Almacen) {
        this._almacen = value;
    }

    public get $cliente(): Cliente {
        return this._cliente;
    }

    public set $cliente(value: Cliente) {
        this._cliente = value;
    }
}

import { EntidadBase } from "./EntidadBase";
import { Cliente } from "./Cliente";
import { Producto } from "./Producto";
import { Almacen } from "./Almacen";

export class Salida extends EntidadBase {

    private _fechaSalida: string;
    private _producto: Producto;
    private _almacen: Almacen;
    private _cliente: Cliente;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$fechaSalida = data._fechaSalida;
            this.$producto = data._producto;
            this.$almacen = data._almacen;
            this.$cliente = data._cliente;
        }
    }

    /** Getters y setters */
    public get $fechaSalida(): string {
        return this._fechaSalida;
    }

    public set $fechaSalida(value: string) {
        this._fechaSalida = value;
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
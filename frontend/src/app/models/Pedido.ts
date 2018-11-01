import { EntidadBase } from "./EntidadBase";
import { Producto } from "./Producto";
import { Almacen } from "./Almacen";
import { Cliente } from "./Cliente";

export class Pedido extends EntidadBase {

    private _fechaSolicitud: Date;
    private _fechaEntrega: Date;
    private _estadoPedido: string;
    private _destinatario: string;
    private _producto: Producto;
    private _almacen: Almacen;
    private _cliente: Cliente;



    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$fechaSolicitud = data._fechaSolicitud;
            this.$fechaEntrega = data._fechaEntrega;
            this.$estadoPedido = data._estadoPedido;
            this.$destinatario = data._destinatario;
            this.$producto = data._producto;
            this.$almacen = data._almacen;
            this.$cliente = data._cliente;
        }
    }

    /** Getters y setters */
    public get $fechaSolicitud(): Date {
        return this._fechaSolicitud;
    }

    public set $fechaSolicitud(value: Date) {
        this._fechaSolicitud = value;
    }

    public get $fechaEntrega(): Date {
        return this._fechaEntrega;
    }

    public set $fechaEntrega(value: Date) {
        this._fechaEntrega = value;
    }

    public get $estadoPedido(): string {
        return this._estadoPedido;
    }

    public set $estadoPedido(value: string) {
        this._estadoPedido = value;
    }

    public get $destinatario(): string {
        return this._destinatario;
    }

    public set $destinatario(value: string) {
        this._destinatario = value;
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
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
            this.$id = data.id;
            this.$fechaSolicitud = data.fechaSolicitud;
            this.$fechaEntrega = data.fechaEntrega;
            this.$estadoPedido = data.estadoPedido;
            this.$destinatario = data.destinatario;
            if (data.producto !== undefined) {
                this.$producto = new Producto(data.producto);
            }
            else {
                this.$producto = null;
            }

            if (data.almacen !== undefined){
                this.$almacen = new Almacen(data.almacen);
            }
            else {
                this.$almacen = data.almacen;
            }

            if (data.cliente !== undefined) {
                this.$cliente = new Cliente(data.cliente);
            }
            else {
                this.$cliente = data.cliente;
            }
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
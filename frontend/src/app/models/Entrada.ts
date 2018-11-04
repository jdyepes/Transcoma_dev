import { EntidadBase } from "./EntidadBase";
import { Producto } from "./Producto";
import { Almacen } from "./Almacen";
import { Cliente } from "./Cliente";

export class Entrada extends EntidadBase {

    private _fechaEntrada: Date ;
    private _producto: Producto ;
    private _almacen: Almacen ;
    private _cliente: Cliente ;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$fechaEntrada = data.fechaEntrada;

            if( data.producto != undefined ) {
                this.$producto = new Producto( data.producto );
            }
            else{
                this.$producto = null;
            }

            if( data.almacen != undefined) {
                this.$almacen = new Almacen( data.almacen );
            }
            else{
                this.$almacen = null;
            }

            if( data.cliente != undefined) {
                this.$cliente = new Cliente( data.cliente );
            }
            else{
                this.$cliente = null;
            }
        }
    }

    /** Getters y setters */
    public get $fechaEntrada(): Date {
        return this._fechaEntrada;
    }

    public set $fechaEntrada(value: Date) {
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

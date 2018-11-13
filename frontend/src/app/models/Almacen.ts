import { EntidadBase } from "./EntidadBase";
import { Entrada } from "./Entrada";
import { Salida } from "./Salida";
//import { Pedido } from "./Pedido";

export class Almacen extends EntidadBase {

    private _nombre: string;
    private _direccion: string;
    private _entrada: Entrada;
    private _salida: Salida;
    //private _pedido: Pedido;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$nombre = data._nombre;
            this.$direccion = data._direccion;
            this.$entrada = data._entrada;
            this.$salida = data._salida;
           // this.$pedido = data._pedido;
        }
    }

    /** Getters y setters */
    public get $nombre(): string {
        return this._nombre;
    }

    public set $nombre(value: string) {
        this._nombre = value;
    }

    public get $direccion(): string {
        return this._direccion;
    }

    public set $direccion(value: string) {
        this._direccion = value;
    }

    public get $entrada(): Entrada {
        return this._entrada;
    }

    public set $entrada(value: Entrada) {
        this._entrada = value;
    }

    public get $salida(): Salida {
        return this._salida;
    }

    public set $salida(value: Salida) {
        this._salida = value;
    }
/*
    public get $pedido(): Pedido {
        return this._pedido;
    }

    public set $pedido(value: Pedido) {
        this._pedido = value;
    }*/
}

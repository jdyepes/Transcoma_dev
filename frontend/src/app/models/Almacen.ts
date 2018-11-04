import { EntidadBase } from "./EntidadBase";
import { Entrada } from "./Entrada";
import { Salida } from "./Salida";
import { Pedido } from "./Pedido";

export class Almacen extends EntidadBase {

    private _nombre: string;
    private _direccion: string;
    private _entrada: Entrada;
    private _salida: Salida;
    private _pedido: Pedido;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$nombre = data.nombre;
            this.$direccion = data.direccionAlmacen;

            if (data.entrada !== undefined) {
                this.$entrada = new Entrada(data.entrada);
            }
            else {
                this.$entrada = null;
            }

            if (data.salida !== undefined) {
                this.$salida = new Salida(data.salida);
            }
            else {
                this.$salida = null;
            }

            if (data.pedido !== undefined) {
                this.$pedido = new Pedido(data.pedido);
            }
            else {
                this.$pedido = null;
            }
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

    public get $pedido(): Pedido {
        return this._pedido;
    }

    public set $pedido(value: Pedido) {
        this._pedido = value;
    }
}

import { EntidadBase } from "./EntidadBase";

export class Producto extends EntidadBase {

    private _descripcion: string;
    private _lote: string;
    private _estadoCalidad: string;
    private _disponible: string;


    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$descripcion = data._descripcion;
            this.$lote = data._lote;
            this.$estadoCalidad = data._estadoCalidad;
            this.$disponible = data._disponible;
        }
    }

    /** Getters y setters */
    public get $descripcion(): string {
        return this._descripcion;
    }

    public set $descripcion(value: string) {
        this._descripcion = value;
    }

    public get $lote(): string {
        return this._lote;
    }

    public set $lote(value: string) {
        this._lote = value;
    }

    public get $estadoCalidad(): string {
        return this._estadoCalidad;
    }

    public set $estadoCalidad(value: string) {
        this._estadoCalidad = value;
    }

    public get $disponible(): string {
        return this._disponible;
    }

    public set $disponible(value: string) {
        this._disponible = value;
    }
}
import { EntidadBase } from "./EntidadBase";

export class Shipper extends EntidadBase {

    private _nombre: string;
    private _empresa: string;
    private _nif: string;

    constructor(data?: any)  {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$empresa = data._empresa;
            this.$nif = data._nif;
        }
    }

    public get $nombre(): string {
        return this._nombre;
    }

    public set $nombre(value: string) {
        this._nombre = value;
    }

    public get $empresa(): string {
        return this._empresa;
    }

    public set $empresa(value: string) {
        this._empresa = value;
    }

    public get $nif(): string {
        return this._nif;
    }

    public set $nif(value: string) {
        this._nif = value;
    }
}
import { EntidadBase } from "./EntidadBase";
import { Almacen } from "./Almacen";

export class Aduana extends EntidadBase {

    private _nombre: string;
    private _codigo: string;
    private _almacen: Almacen;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$nombre = data.nombre;
            this.$codigo = data.codigo;

            if (data.almacen !== undefined) {
                this.$almacen = new Almacen(data.almacen);
            }
            else {
                this.$almacen = null;
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

    public get $codigo(): string {
       return this._codigo;
    }

    public set $codigo(value: string) {
        this._codigo = value;
    }

    public get $almacen(): Almacen {
        return this._almacen;
    }

    public set $almacen(value: Almacen) {
        this._almacen = value;
    }
}

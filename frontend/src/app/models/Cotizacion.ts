import { EntidadBase } from "./EntidadBase";

export class Cotizacion extends EntidadBase {

    private _flete: number;
    private _recargo: number ;
    private _gastosAdmin: number ;
    private _fechaSalida: string ;
    private _duracion: number;
    private _total: number;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data._id;
            this.$Flete = data._flete;
            this.$Recargo = data._recargo;
            this.$GastosAdmin = data._gastosAdmin;
            this.$FechaSalida = data._fechaSalida;
            this.$Duracion = data._duracion;
            this.$Total = data._total;
        }
    }

    /** Getters y setters */
    public get $Flete(): number {
        return this._flete;
    }

    public set $Flete(value: number) {
        this._flete = value;
    }

    public get $Recargo(): number{
        return this._recargo;
    }

    public set $Recargo(value: number) {
        this._recargo = value;
    }

    public get $GastosAdmin(): number {
        return this._gastosAdmin;
    }

    public set $GastosAdmin(value: number) {
        this._gastosAdmin = value;
    }

    public get $FechaSalida(): string {
        return this._fechaSalida;
    }

    public set $FechaSalida(value: string) {
        this._fechaSalida = value;
    }

    public get $Duracion(): number {
        return this._duracion;
    }

    public set $Duracion(value: number) {
        this._duracion = value;
    }

    public get $Total(): number {
        return this._total;
    }

    public set $Total(value: number) {
        this._total = value;
    }
}

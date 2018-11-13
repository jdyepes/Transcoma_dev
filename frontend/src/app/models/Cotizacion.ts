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
            this.$id = data.id;
            this.$Flete = data.flete;
            this.$Recargo = data.recargo;
            this.$GastosAdmin = data.gastosAdmin;
            this.$FechaSalida = data.fechaSalida;
            this.$Duracion = data.duracion;
            this.$Total = data.total;
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

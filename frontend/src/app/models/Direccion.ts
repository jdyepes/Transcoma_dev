import { EntidadBase } from "./EntidadBase";

export class Direccion extends EntidadBase {

    private _codigoZip: string ;
    private _ciudad: string ;
    private _provincia: string ;
    private _estado: string ;
    private _pais: string;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$CodigoZip = data.codigoZip;
            this.$Ciudad = data.ciudad;
            this.$Provincia = data.provincia;
            this.$Estado = data.estado;
            this.$Pais = data.pais;
        }
    }

    /** Getters y setters */
    public get $CodigoZip(): string {
        return this._codigoZip;
    }

    public set $CodigoZip(value: string) {
        this._codigoZip = value;
    }

    public get $Ciudad(): string{
        return this._ciudad;
    }

    public set $Ciudad(value: string) {
        this._ciudad = value;
    }

    public get $Provincia(): string {
        return this._provincia;
    }

    public set $Provincia(value: string) {
        this._provincia = value;
    }

    public get $Estado(): string {
        return this._estado;
    }

    public set $Estado(value: string) {
        this._estado = value;
    }

    public get $Pais(): string {
        return this._pais;
    }

    public set $Pais(value: string) {
        this._pais = value;
    }
}

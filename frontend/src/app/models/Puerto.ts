import { EntidadBase } from "./EntidadBase";
import { Direccion } from './Direccion';

export class Puerto extends EntidadBase {

    private _codigo: string ;
    private _nombre: string ;
    private _direccion: Direccion;

    constructor(data?: any) {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$Codigo = data.codigo;
            this.$Nombre = data.nombre;
            if(data.direccion != undefined){
                this.$Direccion = new Direccion(data.direccion);
            }
            else{
                this.$Direccion = null;
            }
           
        }
    }

    /** Getters y setters */
    public get $Codigo(): string {
        return this._codigo;
    }

    public set $Codigo(value: string) {
        this._codigo = value;
    }

    public get $Nombre(): string {
        return this._nombre;
    }

    public set $Nombre(value: string) {
        this._nombre = value;
    }

    public get $Direccion(): Direccion {
        return this._direccion;
    }

    public set $Direccion(value: Direccion) {
        this._direccion = value;
    }


}

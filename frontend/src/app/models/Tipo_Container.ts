import { EntidadBase } from "./EntidadBase";
import { Puerto } from './Puerto';

export class Tipo_Container extends EntidadBase {

    private  _nombre: string;
    private  _tarifa: string;
    private  _dimension: string;
    private  _alto: number;
    private  _ancho: number;
    private  _profundidad: number;
   
    constructor(data?: any)  {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$Nombre = data.nombre;
            this.$Tarifa= data.tarifa;
            this.$Dimension =data.dimension;
            this.$Alto = data.alto;
            this.$Ancho = data.ancho;
            this.$Profundidad = data.profundidad;
            
        }
    }

    public get $Nombre(): string {
        return this._nombre;
    }

    public set $Nombre(value: string) {
        this._nombre = value;
    }

    public get $Tarifa(): string {
        return this._tarifa;
    }

    public set $Tarifa(value: string) {
        this._tarifa = value;
    }

    public get $Dimension(): string {
        return this._dimension;
    }

    public set $Dimension(value: string) {
        this._dimension = value;
    }


    public get $Alto(): number {
        return this._alto;
    }

    public set $Alto(value: number) {
        this._alto= value;
    }

    public get $Ancho(): number {
        return this._ancho;
    }

    public set $Ancho(value: number) {
        this._ancho= value;
    }

    public get $Profundidad(): number {
        return this._profundidad;
    }

    public set $Profundidad(value: number) {
        this._profundidad= value;
    }
    
    
}
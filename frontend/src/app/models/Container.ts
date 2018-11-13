import { EntidadBase } from "./EntidadBase";
import { Puerto } from './Puerto';
import { Cliente } from './Cliente';
import { Cotizacion } from './Cotizacion';
import { Tipo_Container } from './Tipo_Container';

export class Container extends EntidadBase {

    private  _peso: number;
    private  _dimPeso: string;
    private  _volumen: number;
    private  _dimVol: string;
   private _tipoContainer: Tipo_Container;

    constructor(data?: any)  {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$Peso = data.peso;
            this.$DimPeso= data.dimPeso;
            this.$Volumen =data.volumen;
            this.$DimVol = data.dimVol;
            if(data.tipoContainer != undefined){
                this.$TipoContainer = new Tipo_Container(data.tipoContainer);
            }
            else{
                this.$TipoContainer = null;
            }
           
            
        }
    }

    public get $Peso(): number {
        return this._peso;
    }

    public set $Peso(value: number) {
        this._peso = value;
    }

    public get $DimPeso(): string {
        return this._dimPeso;
    }

    public set $DimPeso(value: string) {
        this._dimPeso = value;
    }

    public get $Volumen(): number {
        return this._volumen;
    }

    public set $Volumen(value: number) {
        this._volumen = value;
    }

    public get $DimVol(): string {
        return this._dimVol;
    }

    public set $DimVol(value: string) {
        this._dimVol = value;
    }

    public get $TipoContainer(): Tipo_Container {
        return this._tipoContainer;
    }

    public set $TipoContainer(value: Tipo_Container) {
        this._tipoContainer = value;
    }
 
}
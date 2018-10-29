import { EntidadBase } from "./EntidadBase";
import { Puerto } from './Puerto';
import { Cliente } from './Cliente';
import { Cotizacion } from './Cotizacion';

export class BL extends EntidadBase {

    private  _notifyParty: string;
    private  _lugarRecepcion: string;
    private  _buqueOceano: string;
    private  _pol: Puerto;
    private  _pod: Puerto;
    private  _lugarEntrega: string;
    private  _fletePagoEn: string;
    private  _numPaquetes: number;
    private  _descripcion: string;
    private  _pesoCarga: number;
    private  _volumen: number;
    private  cotizacion: Cotizacion;
    private  _cliente: Cliente;

    constructor(data?: any)  {
        super();
        if (data !== undefined) {
            this.$id = data.id;
            this.$NotifyParty = data.notifyParty;
            this.$LugarRecepcion= data.lugarRecepcion;
            this.$BuqueOceano =data.buqueOceano;
            if(data.pol != undefined){
                this.$Pol = new Puerto(data.pol);
            }
            else{
                this.$Pol = null;
            }
            if(data.pod != undefined){
                this.$Pod = new Puerto(data.pod);
            }
            else{
                this.$Pod = null;
            }
            this.$LugarEntrega = data.lugarEntrega;
            this.$FletePagoEn = data.fletePagoEn;
            this.$NumPaquetes = data.numPaquetes;
            this.$Descripcion = data.descripcion;
            this.$PesoCarga = data.pesoCarga;
            this.$Volumen = data.volumen;
           /* if(data.cotizacion != undefined){
                this.$Cotizacion = new Cotizacion(data.cotizacion);
            }
            else{
                this.$Cotizacion = null;
            }

            if(data.cliente != undefined){
                this.$Cliente = new Cliente(data.cliente);
            }
            else{
                this.$Cliente = null;
            }*/
            
        }
    }

    public get $NotifyParty(): string {
        return this._notifyParty;
    }

    public set $NotifyParty(value: string) {
        this._notifyParty = value;
    }

    public get $LugarRecepcion(): string {
        return this._lugarRecepcion;
    }

    public set $LugarRecepcion(value: string) {
        this._lugarRecepcion = value;
    }

    public get $BuqueOceano(): string {
        return this._buqueOceano;
    }

    public set $BuqueOceano(value: string) {
        this._buqueOceano = value;
    }

    public get $Pol(): Puerto {
        return this._pol;
    }

    public set $Pol(value: Puerto) {
        this._pol = value;
    }

    public get $Pod(): Puerto {
        return this._pod;
    }

    public set $Pod(value: Puerto) {
        this._pod = value;
    }

    
    public get $LugarEntrega(): string {
        return this._lugarEntrega;
    }

    public set $LugarEntrega(value: string) {
        this._lugarEntrega = value;
    }

    
    public get $FletePagoEn(): string {
        return this._fletePagoEn;
    }

    public set $FletePagoEn(value: string) {
        this._fletePagoEn = value;
    }

    
    public get $NumPaquetes(): number {
        return this._numPaquetes;
    }

    public set $NumPaquetes(value: number) {
        this._numPaquetes = value;
    }

    
    public get $Descripcion(): string {
        return this._descripcion;
    }

    public set $Descripcion(value: string) {
        this._descripcion = value;
    }

    
    public get $PesoCarga(): number {
        return this._pesoCarga;
    }

    public set $PesoCarga(value: number) {
        this._pesoCarga = value;
    }

    
    public get $Volumen(): number {
        return this._volumen;
    }

    public set $Volumen(value: number) {
        this._volumen = value;
    }

    public get $Cotizacion(): Cotizacion {
        return this.cotizacion;
    }

    public set $Cotizacion(value: Cotizacion) {
        this.cotizacion = value;
    }

    public get $Cliente(): Cliente {
        return this._cliente;
    }

    public set $Cliente(value: Cliente) {
        this._cliente = value;
    }
}
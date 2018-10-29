
export class DTOClienteId {

    private _idCliente: number;

    constructor(data?: any) {
       
        if (data !== undefined) {
            this.$IdCliente = data._idCliente;
        }
    }

    /** Getters y setters */
    public get $IdCliente(): number {
        return this._idCliente;
    }

    public set $IdCliente(value: number) {
        this._idCliente = value;
    }



    
}
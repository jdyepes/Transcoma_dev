using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace TranscomaAPI.Comun.Entidades
{
    /// <summary>
    /// Entidad que almacena los datos del BL
    /// </summary>
    public class BL : Entidad
    {
        private string _notifyParty;
        private string _lugarRecepcion;
        private string _buqueOceano;
        private Puerto _pol;
        private Puerto _pod;
        private string _lugarEntrega;
        private string _fletePagoEn;
        private int _numPaquetes;
        private string _descripcion;
        private float _pesoCarga;
        private int _volumen;
        private Cotizacion _cotizacion;
        private Cliente _cliente;


        /// <summary>
        /// /Constructor de la entidad BL
        /// </summary>
        /// <param name="notifyParty"></param>
        /// <param name="lugarRecepcion"></param>
        /// <param name="buqueOceano"></param>
        /// <param name="pol"></param>
        /// <param name="pod"></param>
        /// <param name="lugarEntrega"></param>
        /// <param name="fletePagoEn"></param>
        /// <param name="numPaquetes"></param>
        /// <param name="descripcion"></param>
        /// <param name="pesoCarga"></param>
        /// <param name="volumen"></param>
        /// <param name="cotizacion"></param>
        /// <param name="cliente"></param>
        public BL(string notifyParty, string lugarRecepcion,
                  string buqueOceano, Puerto pol, Puerto pod,
                  string lugarEntrega, string fletePagoEn,
                  int numPaquetes, string descripcion,
                  float pesoCarga, int volumen, Cotizacion cotizacion, Cliente cliente)
        {
            this._notifyParty = notifyParty;
            _lugarRecepcion = lugarRecepcion;
            _buqueOceano = buqueOceano;
            _pol = pol;
            _pod = pod;
            _lugarEntrega = lugarEntrega;
            _fletePagoEn = fletePagoEn;
            _numPaquetes = numPaquetes;
            _descripcion = descripcion;
            _pesoCarga = pesoCarga;
            _volumen = volumen;
            this._cotizacion = cotizacion;
            _cliente = cliente;
        }

        public BL() { }

        public string NotifyParty { get => _notifyParty; set => _notifyParty = value; }
        public string LugarRecepcion { get => _lugarRecepcion; set => _lugarRecepcion = value; }
        public string BuqueOceano { get => _buqueOceano; set => _buqueOceano = value; }
        public Puerto Pol { get => _pol; set => _pol = value; }
        public Puerto Pod { get => _pod; set => _pod = value; }
        public string LugarEntrega { get => _lugarEntrega; set => _lugarEntrega = value; }
        public string FletePagoEn { get => _fletePagoEn; set => _fletePagoEn = value; }
        public int NumPaquetes { get => _numPaquetes; set => _numPaquetes = value; }
        public string Descripcion { get => _descripcion; set => _descripcion = value; }
        public float PesoCarga { get => _pesoCarga; set => _pesoCarga = value; }
        public int Volumen { get => _volumen; set => _volumen = value; }
        public Cotizacion Cotizacion { get => _cotizacion; set => _cotizacion = value; }
        public Cliente Cliente { get => _cliente; set => _cliente = value; }
    }
}

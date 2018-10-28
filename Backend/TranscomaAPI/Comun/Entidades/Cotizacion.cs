using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Cotizacion: Entidad
    {
        private float _flete;
        private float _recargo;
        private float _gastosAdmin;
        private string _fechaSalida;
        private float _duracion;
        private float _total;

        public Cotizacion() { }

        public Cotizacion(float flete, float recargo, float gastosAdmin, string fechaSalida, float duracion, float total)
        {
            _flete = flete;
            _recargo = recargo;
            _gastosAdmin = gastosAdmin;
            _fechaSalida = fechaSalida;
            _duracion = duracion;
            _total = total;
        }

        public float Flete { get => _flete; set => _flete = value; }
        public float Recargo { get => _recargo; set => _recargo = value; }
        public float GastosAdmin { get => _gastosAdmin; set => _gastosAdmin = value; }
        public string FechaSalida { get => _fechaSalida; set => _fechaSalida = value; }
        public float Duracion { get => _duracion; set => _duracion = value; }
        public float Total { get => _total; set => _total = value; }
    }
}

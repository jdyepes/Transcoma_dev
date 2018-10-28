using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Embarque: Entidad
    {
        private Puerto _puertoEmbarque;
        private Puerto _puertoRecepcion;
        private DateTime _fechaSalida;
        private int _duracion;

        public Embarque() { }

        public Embarque(Puerto puertoEmbarque, Puerto puertoRecepcion, DateTime fechaSalida, int duracion)
        {
            _puertoEmbarque = puertoEmbarque;
            _puertoRecepcion = puertoRecepcion;
            _fechaSalida = fechaSalida;
            _duracion = duracion;
        }

        public Puerto PuertoEmbarque { get => _puertoEmbarque; set => _puertoEmbarque = value; }
        public Puerto PuertoRecepcion { get => _puertoRecepcion; set => _puertoRecepcion = value; }
        public DateTime FechaSalida { get => _fechaSalida; set => _fechaSalida = value; }
        public int Duracion { get => _duracion; set => _duracion = value; }
    }
}

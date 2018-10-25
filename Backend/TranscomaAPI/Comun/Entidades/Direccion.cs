using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    /// <summary>
    /// Entidad para almacenar las direcciones
    /// de envio y recepcion de carga
    /// </summary>
    public class Direccion: Entidad
    {
        private string _codigoZip;
        private string _ciudad;
        private string _provincia;
        private string _estado;
        private Pais _pais;

        public Direccion(int id)
        {
            Id = id;
        }

        public Direccion(string codigoZip, string ciudad, string provincia, string estado, Pais pais)
        {
            _codigoZip = codigoZip;
            _ciudad = ciudad;
            _provincia = provincia;
            _estado = estado;
            _pais = pais;
        }

        public string CodigoZip { get => _codigoZip; set => _codigoZip = value; }
        public string Ciudad { get => _ciudad; set => _ciudad = value; }
        public string Provincia { get => _provincia; set => _provincia = value; }
        public string Estado { get => _estado; set => _estado = value; }
        public Pais Pais { get => _pais; set => _pais = value; }
    }
}

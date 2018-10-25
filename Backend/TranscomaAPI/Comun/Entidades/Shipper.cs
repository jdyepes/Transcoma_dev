using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    /// <summary>
    /// Entidad que registra los datos del Shipper
    /// del BL
    /// </summary>
    public class Shipper: Entidad
    {
        private string _nombre;
        private string _empresa;
        private string _nif;

        public Shipper(int id)
        {
            this.Id = id;
        }

        public Shipper(int id, string nombre, string empresa, string nif)
        {
            this.Id = id;
            this._nombre = nombre;
            this._empresa = empresa;
            this._nif = nif;
        }

        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Empresa { get => _empresa; set => _empresa = value; }
        public string Nif { get => _nif; set => _nif = value; }
    }
}

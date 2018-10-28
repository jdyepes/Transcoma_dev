using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    /// <summary>
    /// Entidad que almacena los datos de
    /// los puertos de envio
    /// </summary>
    public class Puerto: Entidad
    {
        private string _codigo;
        private string _nombre;
        private Direccion _direccion;


        public Puerto() { }
        /// <summary>
        /// Constructor de la EntidadPuerto
        /// </summary>
        /// <param name="id">identificacion del puerto</param>
        /// <param name="codigo">Codigo del puerto</param>
        /// <param name="nombre">Nombre de =l puerto</param>
        public Puerto(int id, string codigo, string nombre)
        {
            Id = id;
            _codigo = codigo;
            _nombre = nombre;
        }

        public string Codigo { get => _codigo; set => _codigo = value; }
        public string Nombre { get => _nombre; set => _nombre = value; }
        public Direccion Direccion { get => _direccion; set => _direccion = value; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Aduana : Entidad
    {
        private string _nombre;
        private string _codigo;
        private Almacen _almacen;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Aduana(int id)
        {
            Id = id;
        }

        /// <summary>
        /// Constructor para la consulta de un aduana dado un almacen
        /// </summary>
        /// <param name="id"></param>
        /// <param name="codigoAduana"></param>
        /// <param name="nombreAduana"></param>
        /// <param name="almacen"></param>
        public Aduana (int id, string codigoAduana, string nombreAduana, Almacen almacen)
        {
            Id = id;
            _nombre = nombreAduana;
            _codigo = codigoAduana;
            _almacen = almacen;
        }

        /// <summary>
        /// Constructor para la consulta de todas las aduanas
        /// </summary>
        /// <param name="id"></param>
        /// <param name="codigoAduana"></param>
        /// <param name="nombreAduana"></param>
        public Aduana(int id, string codigoAduana, string nombreAduana)
        {
            Id = id;
            _nombre = nombreAduana;
            _codigo = codigoAduana;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string DireccionAlmacen { get => _codigo; set => _codigo = value; }
        public Almacen Almacen { get => _almacen; set => _almacen = value; }
    }
}

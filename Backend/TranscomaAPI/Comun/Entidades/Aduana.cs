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
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="direccion"></param>
        public Aduana(int id, string nombre, string codigo)
        {
            Id = id;
            _nombre = nombre;
            _codigo = codigo;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string DireccionAlmacen { get => _codigo; set => _codigo = value; }
        public Almacen Almacen { get => _almacen; set => _almacen = value; }
    }
}

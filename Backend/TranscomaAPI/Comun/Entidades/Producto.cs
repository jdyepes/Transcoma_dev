using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{ 
    public class Producto : Entidad
    {
        private string _descripcion;
        private string _lote;
        private string _estadoCalidad;
        private bool _disponible;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Producto(int id)
        {
            Id = id;
        }

       /// <summary>
       /// 
       /// </summary>
       /// <param name="id"></param>
       /// <param name="_descripcion"></param>
       /// <param name="_lote"></param>
       /// <param name="_estadoCalidad"></param>
       /// <param name="_disponible"></param>
        public Producto(int id, string descripcion, string lote, string estadoCalidad, bool disponible)
        {
            Id = id;
            _descripcion = descripcion;
            _lote = lote;
            _estadoCalidad = estadoCalidad;
            _disponible = disponible;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public string Descripcion { get => _descripcion; set => _descripcion = value; }
        public string Lote  { get => _lote; set => _lote = value; }
        public string Estado  { get => _estadoCalidad; set => _estadoCalidad = value; }
        public bool Disponible  { get => _disponible; set => _disponible = value; }

    }
}

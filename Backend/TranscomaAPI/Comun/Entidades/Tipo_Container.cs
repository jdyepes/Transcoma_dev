using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Tipo_Container: Entidad
    {
        private string _nombre;
        private string _tarifa;
        private string _dimension;
        private int _alto;
        private int _ancho;
        private int _profundidad;

        public Tipo_Container(int id)
        {
            Id = id;
        }

        public Tipo_Container(string nombre, string tarifa, string dimension, int alto, int ancho, int profundidad)
        {
            _nombre = nombre;
            _tarifa = tarifa;
            _dimension = dimension;
            _alto = alto;
            _ancho = ancho;
            _profundidad = profundidad;
        }


    }
}

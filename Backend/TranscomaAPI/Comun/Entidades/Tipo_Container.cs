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


        public Tipo_Container() { }

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

        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Tarifa { get => _tarifa; set => _tarifa = value; }
        public string Dimension { get => _dimension; set => _dimension = value; }
        public int Alto { get => _alto; set => _alto = value; }
        public int Ancho { get => _ancho; set => _ancho = value; }
        public int Profundidad { get => _profundidad; set => _profundidad = value; }
    }
}

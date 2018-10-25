using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Incoterm: Entidad
    {

        private string _nombre;
        private float _tarifa;

        public Incoterm(string nombre, float tarifa)
        {
            _nombre = nombre;
            _tarifa = tarifa;
        }

        public string Nombre { get => _nombre; set => _nombre = value; }
        public float Tarifa { get => _tarifa; set => _tarifa = value; }
    }
}

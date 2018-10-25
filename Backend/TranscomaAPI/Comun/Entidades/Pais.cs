using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    /// <summary>
    /// Entidad para almacenar la lista de paises
    /// </summary>
    public class Pais: Entidad
    {
        private string _nombre;

        public Pais(int id, string nombre)
        {
            _nombre = nombre;
        }

        public string Nombre { get => _nombre; set => _nombre = value; }
    }
}

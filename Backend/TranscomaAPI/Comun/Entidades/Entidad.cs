using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public abstract class Entidad
    {
        private int _id;

        /// <summary>
        /// Getters y Setters del atributo id
        /// </summary>
        public int Id { get => _id; set => _id = value; }
    }
}

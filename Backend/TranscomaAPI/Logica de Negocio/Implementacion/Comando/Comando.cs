using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Comando
{
    public abstract class Comando
    {
        private Entidad entidad;

        public Entidad Entidad { get => entidad; set => entidad = value; }

        public abstract void Ejecutar();

        public abstract Entidad GetEntidad();

        public abstract List<Entidad> GetEntidades();
    }
}

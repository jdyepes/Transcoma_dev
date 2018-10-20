using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Comun.Entidades.Fabrica
{
    public static class FabricaEntidades
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <returns></returns>
        public static Entrada CrearEntrada(int id, DateTime fechaEntrada)
        {
            return new Entrada(id, fechaEntrada);
        }
    }
}

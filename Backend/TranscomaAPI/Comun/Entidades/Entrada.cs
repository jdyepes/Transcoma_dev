using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Entrada : Entidad
    {
        private DateTime _fechaEntrada;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Entrada(int id)
        {
            Id = id;
        }

        /// <summary>
        /// Registro de la fecha de entrada
        /// </summary>
        /// <param name="fechaEntrada"></param>
        public Entrada (DateTime fechaEntrada)
        {
            _fechaEntrada = fechaEntrada;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        public Entrada(int id, DateTime fechaEntrada)
        {
            Id = id;
            _fechaEntrada = fechaEntrada;
        }
        /// <summary>
        /// Getters y Setters
        /// </summary>
        public DateTime FechaEntrada {get=> _fechaEntrada;set => _fechaEntrada = value;}
    }
}

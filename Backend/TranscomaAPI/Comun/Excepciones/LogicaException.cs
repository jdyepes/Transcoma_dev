using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Excepciones
{
    public class LogicaException: Exception
    {
        private DateTime _fecha; //Hora y fecha de cuando se genero la excepción.
        private string _mensaje; //Breve descripción de la excepción genereda.

        public LogicaException( string mensaje)
        {
            _fecha = DateTime.Now;
            _mensaje = mensaje;
        }

        public LogicaException(DaoException e, object p)
        {
        }

        /// <summary>
        /// Getters y Setters del atributo _fecha
        /// </summary>
        public DateTime Fecha { get => _fecha; set => _fecha = value; }

        /// <summary>
        /// Getters y Setters del atributo _mensaje
        /// </summary>
        public string Mensaje { get => _mensaje; set => _mensaje = value; }
        

    }
}

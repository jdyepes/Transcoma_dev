using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Validaciones
{
    /// <summary>
    /// Clase para las validaciones de entrada
    /// Expresiones Regulares
    /// </summary>
    public class ValidacionEntrada
    {
        /// <summary>
        /// Metodo que valida que el parametro de entrada este compuesta unicamente de
        /// mayusculas, minusculas, puntos, comas y espacios en blanco,
        /// </summary>
        /// <param name="input">Cadena de caracteres que se requiere verificar.</param>
        /// <returns>Retorna "true", si cumple con no tener caracteres especiales, y "false" en caso contrario.</returns>
        public bool ValidarCaracteresEspeciales(String input)
        {
            if (Regex.Match(input, @"^[a-zA-Z \,\.]+$").Success)
            {
                return true;
            }
            return false;
        }

        public bool ValidarIdUsuario()
        {
            return true;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class UsuarioAdministrador
    {
        //public string _primerNombre { get; set; }
        //public string _segundoNombre { get; set; }
        //public string _primerApellido { get; set; }
        //public string _segundoApellido { get; set; }
        //  [Required(ErrorMessage = "El nombre es requerido")]
        public string _nombreUsuario { get; set; }
        public string _rolUsuario { get; set; }  //administrador - cliente
        public string _organizacion { get; set; } //organizacion/empresa 
        public string _correo { get; set; }
        public string _password { get; set; }
        public string _confirmarPassword { get; set; }
    }
}

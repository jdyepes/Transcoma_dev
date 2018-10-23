using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Cliente : Entidad
    {
        private string _nombre;
        private string _nombreUsuario;
        private string _correo;
        private string _password;
        private DateTime _fechaRegistro;
        private Administrador _administrador;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="nombreUsuario"></param>
        /// <param name="correo"></param>
        /// <param name="password"></param>
        /// <param name="fechaRegistro"></param>
        public Cliente(int id, string nombre, string nombreUsuario, string correo, string password, DateTime fechaRegistro)
        {
            Id = Id;
            _nombre = nombre;
            _nombreUsuario = nombreUsuario;
            _correo = correo;
            _password = password;
            _fechaRegistro = fechaRegistro;
        }

        /// <summary>
        /// Contructor para la consulta de los clientes de un admin
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="nombreUsuario"></param>
        /// <param name="correo"></param>
        /// <param name="fechaRegistro"></param>
        /// <param name="administrador"></param>
        public Cliente(int id, string nombre,  string nombreUsuario, string correo, DateTime fechaRegistro, Administrador administrador)
        {
            Id = Id;
            _nombre = nombre;      
            _correo = correo;
            _nombreUsuario = nombreUsuario;           
            _fechaRegistro = fechaRegistro;
            _administrador = administrador;
        }

        /// <summary>
        /// Contructor para las entradas, salidas y pedidos
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="correo"></param>

        public Cliente(int id, string nombre, string correo)
        {
            Id = Id;
            _nombre = nombre;
            _correo = correo;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>        
        public string Nombre { get => _nombre; set => _nombre = value; }
        public string Login { get => _nombreUsuario; set => _nombreUsuario = value; }
        public string Correo { get => _correo; set => _correo = value; }
        public string Contraseña { get => _password; set => _password = value; }
        public DateTime FechaRegistro { get => _fechaRegistro; set => _fechaRegistro = value; }
        public Administrador Administrador { get => _administrador; set => _administrador = value; }
    }
}

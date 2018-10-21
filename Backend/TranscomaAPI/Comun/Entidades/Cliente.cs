﻿using System;
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
        /// Contructor para las entradas, salidas y pedidos
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="correo"></param>
        public Cliente(int id, string nombre,  string correo)
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
    }
}
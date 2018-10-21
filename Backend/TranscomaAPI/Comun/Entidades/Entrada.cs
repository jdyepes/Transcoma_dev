using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Entrada : Entidad
    {
        private DateTime _fechaEntrada;
        private Producto _producto;
        private Almacen _almacen;
        private Cliente _cliente;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Entrada(int id)
        {
            Id = id;
        }

        /// <summary>
        /// Constructor para la consulta de un cliente en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        public Entrada(int id, DateTime fechaEntrada , Producto producto, Almacen almacen)
        {
            Id = id;
            _fechaEntrada = fechaEntrada;
            _producto = producto;
            _almacen = almacen;
        }

        /// <summary>
        /// Contructor para la consulta de todas las entradas
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <param name="cliente"></param>
        public Entrada(int id, DateTime fechaEntrada, Producto producto, Almacen almacen, Cliente cliente)
        {
            Id = id;
            _fechaEntrada = fechaEntrada;
            _producto = producto;
            _almacen = almacen;
            _cliente = cliente;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public DateTime FechaEntrada {get=> _fechaEntrada;set => _fechaEntrada = value;}
        public Producto Producto { get => _producto; set => _producto = value; }
        public Almacen Almacen { get => _almacen; set => _almacen = value; }
        public Cliente Cliente { get => _cliente; set => _cliente = value; }
    }
}

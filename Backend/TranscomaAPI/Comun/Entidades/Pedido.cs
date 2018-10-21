using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Pedido : Entidad
    {
        private DateTime _fechaSolicitud;
        private DateTime _fechaEntrega;
        private string _estadoPedido;
        private string _destinatario;
        private Producto _producto;
        private Almacen _almacen;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Pedido(int id)
        {
            Id = id;
        }

        /// <summary>
        /// Registro de la fecha de Pedido
        /// </summary>
        /// <param name="fechaEntrada"></param>
        public Pedido(DateTime fechaEntrada)
        {
            _fechaSolicitud = fechaEntrada;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        public Pedido(int id, DateTime fechaEntrada)
        {
            Id = id;
            _fechaSolicitud = fechaEntrada;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public DateTime FechaSolicitud { get => _fechaSolicitud; set => _fechaSolicitud = value; }
        public DateTime FechaEntrega { get => _fechaEntrega; set => _fechaEntrega = value; }
        public string EstadoPedido { get => _estadoPedido; set => _estadoPedido = value; }
        public string Destino { get => _destinatario; set => _destinatario = value; }
        public Producto Productos { get => _producto; set => _producto = value; }
        public Almacen Almacenes { get => _almacen; set => _almacen = value; }
    }
}

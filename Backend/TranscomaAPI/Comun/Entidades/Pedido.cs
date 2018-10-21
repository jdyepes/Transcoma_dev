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
        private Cliente _cliente;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Pedido(int id)
        {
            Id = id;
        }

        /// <summary>
        ///  Constructor para la consulta de un cliente en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSolicitud"></param>
        /// <param name="fechaEntrega"></param>
        /// <param name="estadoPedido"></param>
        /// <param name="destinatario"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        public Pedido(int id, DateTime fechaSolicitud, DateTime fechaEntrega, string estadoPedido, string destinatario, Producto producto, Almacen almacen)
        {
            Id = id;
            _fechaSolicitud = fechaSolicitud;
            _fechaEntrega = fechaEntrega;
            _estadoPedido = estadoPedido;
            _destinatario = destinatario;
            _producto = producto;
            _almacen = almacen;
        }

        /// <summary>
        ///  Contructor para la consulta de todas las pedidos
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSolicitud"></param>
        /// <param name="fechaEntrega"></param>
        /// <param name="estadoPedido"></param>
        /// <param name="destinatario"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <param name="cliente"></param>
        public Pedido(int id, DateTime fechaSolicitud, DateTime fechaEntrega, string estadoPedido, string destinatario, Producto producto, Almacen almacen, Cliente cliente)
        {
            Id = id;
            _fechaSolicitud = fechaSolicitud;
            _fechaEntrega = fechaEntrega;
            _estadoPedido = estadoPedido;
            _destinatario = destinatario;
            _producto = producto;
            _almacen = almacen;
            _cliente = cliente;
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
        public Producto Producto { get => _producto; set => _producto = value; }
        public Almacen Almacen { get => _almacen; set => _almacen = value; }
        public Cliente Cliente { get => _cliente; set => _cliente = value; }
    }
}

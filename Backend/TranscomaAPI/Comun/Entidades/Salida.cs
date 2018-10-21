using System;

namespace TranscomaAPI.Comun.Entidades
{
    public class Salida : Entidad
    {
        private DateTime _fechaSalida;
        private Producto _producto;
        private Almacen _almacen;
        private Cliente _cliente;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Salida(int id)
        {
            Id = id;
        }

        /// <summary>
        /// Constructor para la consulta de un cliente en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSalida"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        public Salida(int id, DateTime fechaSalida,Producto producto, Almacen almacen)
        {
            Id = id;
            _fechaSalida = fechaSalida;
            _producto = producto;
            _almacen = almacen;
        }

        /// <summary>
        /// Contructor para la consulta de todas las salidas
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSalida"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <param name="cliente"></param>
        public Salida(int id, DateTime fechaSalida, Producto producto, Almacen almacen, Cliente cliente)
        {
            Id = id;
            _fechaSalida = fechaSalida;
            _producto = producto;
            _almacen = almacen;
            _cliente = cliente;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public DateTime FechaSalida { get => _fechaSalida; set => _fechaSalida = value; }
        public Producto Producto { get => _producto; set => _producto = value; }
        public Almacen Almacen { get => _almacen; set => _almacen = value; }
        public Cliente Cliente { get => _cliente; set => _cliente = value; }
    }
}

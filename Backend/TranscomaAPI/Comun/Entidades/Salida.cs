using System;

namespace TranscomaAPI.Comun.Entidades
{
    public class Salida : Entidad
    {
        private DateTime _fechaSalida;
        private Producto _producto;
        private Almacen _almacen;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        public Salida(int id)
        {
            Id = id;
        }

        /// <summary>
        /// Registro de la fecha de Salida
        /// </summary>
        /// <param name="fechaSalida"></param>
        public Salida(DateTime fechaSalida)
        {
            _fechaSalida = fechaSalida;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSalida"></param>
        public Salida(int id, DateTime fechaSalida)
        {
            Id = id;
            _fechaSalida = fechaSalida;
        }

        /// <summary>
        /// Getters y Setters
        /// </summary>
        public DateTime FechaSalida { get => _fechaSalida; set => _fechaSalida = value; }
        public Producto Productos { get => _producto; set => _producto = value; }
        public Almacen Almacenes { get => _almacen; set => _almacen = value; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Comun.Entidades.Fabrica
{
    public static class FabricaEntidades
    {
        /// <summary>
        /// Fabrica para consultar las entradas de un cliente en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <returns></returns>
        public static Entrada CrearEntrada(int id, DateTime fechaEntrada, Producto producto, Almacen almacen)
        {
            return new Entrada(id, fechaEntrada, producto, almacen);
        }

        /// <summary>
        /// Fabrica para consultar todas las entradas
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <param name="cliente"></param>
        /// <returns></returns>
        public static Entrada CrearEntrada(int id, DateTime fechaEntrada, Producto producto, Almacen almacen, Cliente cliente)
        {
            return new Entrada(id, fechaEntrada, producto, almacen, cliente);
        }

        /// <summary>
        /// Fabrica para consultar las Salidas de un cliente en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <returns></returns>
        public static Salida CrearSalida(int id, DateTime fechaEntrada, Producto producto, Almacen almacen)
        {
            return new Salida(id, fechaEntrada, producto, almacen);
        }

        /// <summary>
        /// Fabrica para consultar todas las Salidas
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaEntrada"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <param name="cliente"></param>
        /// <returns></returns>
        public static Salida CrearSalida(int id, DateTime fechaEntrada, Producto producto, Almacen almacen, Cliente cliente)
        {
            return new Salida(id, fechaEntrada, producto, almacen, cliente);
        }

        /// <summary>
        /// Fabrica para consultar los pedidos de un cliente en especifico
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSolicitud"></param>
        /// <param name="fechaEntrega"></param>
        /// <param name="estadoPedido"></param>
        /// <param name="destinatario"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <returns></returns>
        public static Pedido CrearPedido(int id, DateTime fechaSolicitud, DateTime fechaEntrega, string estadoPedido, string destinatario, Producto producto, Almacen almacen)
        {
            return new Pedido(id, fechaSolicitud, fechaEntrega, estadoPedido, destinatario, producto, almacen);
        }

        /// <summary>
        /// Fabrica para consultar todos los pedidos
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fechaSolicitud"></param>
        /// <param name="fechaEntrega"></param>
        /// <param name="estadoPedido"></param>
        /// <param name="destinatario"></param>
        /// <param name="producto"></param>
        /// <param name="almacen"></param>
        /// <param name="cliente"></param>
        /// <returns></returns>
        public static Pedido CrearPedido(int id, DateTime fechaSolicitud, DateTime fechaEntrega, string estadoPedido, string destinatario, Producto producto, Almacen almacen, Cliente cliente)
        {
            return new Pedido(id,  fechaSolicitud,  fechaEntrega,  estadoPedido,  destinatario,  producto,  almacen,  cliente);
        }

        /// <summary>
        /// Fabrica para consutar la aduana dado un almacen
        /// </summary>
        /// <param name="id"></param>
        /// <param name="codigoAduana"></param>
        /// <param name="nombreAduana"></param>
        /// <param name="almacen"></param>
        /// <returns></returns>
        public static Aduana CrearAduana(int id, string codigoAduana, string nombreAduana, Almacen almacen)
        {
            return new Aduana( id, codigoAduana, nombreAduana, almacen);
        }

        /// <summary>
        /// Consulta todas las aduanas en rol administrador sin especificar relaciones
        /// </summary>
        /// <param name="id"></param>
        /// <param name="codigoAduana"></param>
        /// <param name="nombreAduana"></param>
        /// <returns></returns>
        public static Aduana CrearAduana(int id, string codigoAduana, string nombreAduana)
        {
            return new Aduana(id, codigoAduana, nombreAduana);
        }
    }
}

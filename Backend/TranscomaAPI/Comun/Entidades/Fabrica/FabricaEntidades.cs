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

        /// <summary>
        /// Fabrica para la consulta de todos los almacenes
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombreAlmacen"></param>
        /// <param name="direccion"></param>
        /// <returns></returns>
        public static Almacen CrearAlmacen(int id, string nombreAlmacen, string direccion)
        {
            return new Almacen(id, nombreAlmacen, direccion);
        }

        /// <summary>
        /// Fabrica para la consulta de todos los clientes de un admin
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="nombreUsuario"></param>
        /// <param name="correo"></param>
        /// <param name="fechaRegistro"></param>
        /// <param name="administrador"></param>
        /// <returns></returns>
        public static Cliente CrearCliente(int id, string nombre, string nombreUsuario, string correo, DateTime fechaRegistro, Administrador administrador)
        {
            return new Cliente(id, nombre, nombreUsuario, correo, fechaRegistro);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="nombreUsuario"></param>
        /// <param name="correo"></param>
        /// <param name="pass"></param>
        /// <param name="fechaRegistro"></param>
        /// <returns></returns>
        public static Cliente CrearCliente(int id, string nombre, string nombreUsuario, string correo, string pass, DateTime fechaRegistro)
        {
            return new Cliente(id, nombre, nombreUsuario, correo,pass, fechaRegistro);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <param name="nombreUsuario"></param>
        /// <returns></returns>
        public static Cliente CrearCliente(int id, string nombre, string nombreUsuario)
        {
            return new Cliente(id, nombre, nombreUsuario);
        }

        /// <summary>
        /// Fabrica para la consulta de los clientes con su adminstrador a cargo 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="nombre"></param>
        /// <returns></returns>
        public static Administrador CrearAdministrador(int id, string nombre)
        {
            return new Administrador(id, nombre);
        }

      /// <summary>
      /// 
      /// </summary>
      /// <param name="id"></param>
      /// <param name="nombre"></param>
      /// <param name="nombreUsuario"></param>
      /// <param name="correo"></param>
      /// <param name="password"></param>
      /// <param name="fechaRegistro"></param>
      /// <returns></returns>
        public static Administrador CrearAdministrador(int id, string nombre, string nombreUsuario, string correo, string password, DateTime fechaRegistro)
        {
            return new Administrador(id, nombre, nombreUsuario, correo, password, fechaRegistro);
        }

        /// <summary>
        /// Consulta de entradas con sus productos
        /// </summary>
        /// <param name="id"></param>
        /// <param name="descripcion"></param>
        /// <param name="lote"></param>
        /// <param name="estadoCalidad"></param>
        /// <param name="disponible"></param>
        /// <returns></returns>
        public static Producto CrearProducto(int id, string descripcion, string lote, string estadoCalidad, bool disponible)
        {
            return new Producto(id, descripcion, lote, estadoCalidad, disponible);
        }
      
        public static BL CrearBl()
        {
            return new BL();
        }

        public static Cotizacion CrearCotizacion()
        {
            return new Cotizacion();
        }

        public static Puerto CrearPuerto()
        {
            return new Puerto();
        }

        public static Container CrearContainer()
        {
            return new Container();
        }

        public static Embarque CrearEmbarque()
        {
            return new Embarque();
        }

        public static Direccion CrearDireccion()
        {
            return new Direccion();
        }

        public static Cliente CrearCliente()
        {
            return new Cliente();
        }
    }
}

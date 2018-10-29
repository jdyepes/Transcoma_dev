using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Carga;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Usuarios;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Bl;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica
{
    public static class FabricaComando
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="idUsuario"></param>
        /// <returns></returns>
        public static ComandoConsultarEntradasCliente CrearComandoConsultarEntradas(int idUsuario)
        {
            return new ComandoConsultarEntradasCliente(idUsuario);
        }

        /// <summary>
        /// Consultta todas las entradas estando el usuario en rol administrador
        /// </summary>
        /// <returns></returns>
        public static ComandoConsultarTodasEntradas CrearComandoConsultarTodasEntradas()
        {
            return new ComandoConsultarTodasEntradas();
        }

        /// <summary>
        /// Consulta las salidas de un cliente
        /// </summary>
        /// <param name="idUsuario"></param>
        /// <returns></returns>
        public static ComandoConsultarSalidasCliente CrearComandoConsultarSalidas(int idUsuario)
        {
            return new ComandoConsultarSalidasCliente(idUsuario);
        }

        /// <summary>
        /// Consultta todas las salidas estando el usuario en rol administrador
        /// </summary>
        /// <returns></returns>
        public static ComandoConsultarTodasSalidas CrearComandoConsultarTodasSalidas()
        {
            return new ComandoConsultarTodasSalidas();
        }

        /// <summary>
        /// Consulta los Pedidos de un cliente
        /// </summary>
        /// <param name="idUsuario"></param>
        /// <returns></returns>
        public static ComandoConsultarPedidosCliente CrearComandoConsultarPedidos(int idUsuario)
        {
            return new ComandoConsultarPedidosCliente(idUsuario);
        }

        /// <summary>
        /// Consultta todas los Pedidos estando el usuario en rol administrador
        /// </summary>
        /// <returns></returns>
        public static ComandoConsultarTodosPedidos CrearComandoConsultarTodosPedidos()
        {
            return new ComandoConsultarTodosPedidos();
        }

        /// <summary>
        /// Consulta las aduanas dado el almacen
        /// </summary>
        /// <param name="idAlmacen"></param>
        /// <returns></returns>
        public static ComandoConsultarAduanaAlmacen CrearComandoConsultarAduanaAlmacen(int idAlmacen)
        {
            return new ComandoConsultarAduanaAlmacen(idAlmacen);
        }

        /// <summary>
        /// Consultta todas las aduanas en rol administrador
        /// </summary>
        /// <returns></returns>
        public static ComandoConsultarTodasAduanas CrearComandoConsultarTodasAduanas()
        {
            return new ComandoConsultarTodasAduanas();
        }

        /// <summary>
        /// Consultta todos los almacenes en rol administrador
        /// </summary>
        /// <returns></returns>
        public static ComandoConsultarAlmacenes CrearComandoConsultarAlmacenes()
        {
            return new ComandoConsultarAlmacenes();
        }

        /// <summary>
        /// Consulta todos los clientes de un administrador
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static ComandoConsultarClientes CrearComandoConsultarClientes(int id)
        {
            return new ComandoConsultarClientes(id);
        }

        /// <summary>
        /// Consulta todos los bl de un cliente por su id
        /// </summary>
        /// <param name="cliente">recibe la entidad cliente</param>
        /// <returns></returns>
        public static ComandoConsultarBLporCliente CrearComandoConsultarBLporCliente(Entidad cliente)
        {
            return new ComandoConsultarBLporCliente(cliente);
        }

        /// <summary>
        /// Consulta un puerto por su id
        /// </summary>
        /// <param name="puerto"></param>
        /// <returns></returns>
        public static ComandoConsultarPuertoporId CrearComandoConsultarPuertoporId(Entidad puerto)
        {
            return new ComandoConsultarPuertoporId(puerto);
        }


        /// <summary>
        /// Obtiene la lista de bl de un cliente con los datos completos
        /// </summary>
        /// <param name="cliente"></param>
        /// <returns></returns>
        public static ComandoObtenerBLsCLiente CrearComandoObtenerBLsCLiente(Entidad cliente)
        {
            return new ComandoObtenerBLsCLiente(cliente);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="userName"></param>
        /// <returns></returns>
        public static ComandoVerificarUsuarioAdministrador CrearComandoVerificarUsuarioAdministrador(string userName)
        {
            return new ComandoVerificarUsuarioAdministrador(userName);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="userName"></param>
        /// <returns></returns>
        public static ComandoVerificarUsuarioCliente CrearComandoVerificarUsuarioCliente(string userName)
        {
            return new ComandoVerificarUsuarioCliente(userName);
        }
    }
}

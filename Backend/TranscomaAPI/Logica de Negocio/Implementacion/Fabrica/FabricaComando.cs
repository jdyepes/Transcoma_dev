using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Carga;

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
    }
}

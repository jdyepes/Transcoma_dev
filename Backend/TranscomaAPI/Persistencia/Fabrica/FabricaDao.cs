using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Persistencia.Dao;

namespace TranscomaAPI.Persistencia.Fabrica
{
    public static class FabricaDao
    {

        /// <summary>
        /// Devuelve instancia de DaoEntrada
        /// </summary>
        /// <returns>DaoEntrada</returns>
        public static DaoEntrada CrearDaoEntrada()
        {
            return new DaoEntrada();
        }

        /// <summary>
        /// Devuelve instancia de DaoSalida
        /// </summary>
        /// <returns>DaoSalida</returns>
        public static DaoSalida CrearDaoSalida()
        {
            return new DaoSalida();
        }

        /// <summary>
        /// Devuelve instancia de DaoPedido
        /// </summary>
        /// <returns>DaoPedido</returns>
        public static DaoPedido CrearDaoPedido()
        {
            return new DaoPedido();
        }

        /// <summary>
        /// Devuelve instancia de DaoAduana
        /// </summary>
        /// <returns>DaoAduana</returns>
        public static DaoAduana CrearDaoAduana()
        {
            return new DaoAduana();
        }

        /// <summary>
        /// Devuelve la instancia de DaoAlmacen
        /// </summary>
        /// <returns></returns>
        public static DaoAlmacen CrearDaoAlmacen()
        {
            return new DaoAlmacen();
        }

        /// <summary>
        /// Devuelve la instancia de DaoCliente
        /// </summary>
        /// <returns></returns>
        public static DaoCliente CrearDaoCliente()
        {
            return new DaoCliente();
        }

        /// <summary>
        /// Devuelve la instancia de DaoBL
        /// </summary>
        /// <returns></returns>
        public static DaoBL CrearDaoBL()
        {
            return new DaoBL();
        }

        /// <summary>
        /// Devuelve la instancia de DaoContainer
        /// </summary>
        /// <returns></returns>
        public static DaoContainer CrearDaoContainer()
        {
            return new DaoContainer();
        }

        /// <summary>
        /// Devuelve la instacia de DaoCotizacion
        /// </summary>
        /// <returns></returns>
        public static DaoCotizacion CrearDaoCotizacion()
        {
            return new DaoCotizacion();
        }

        /// <summary>
        /// Devuelve la instacia de DaoDireccion
        /// </summary>
        /// <returns></returns>
        public static DaoDireccion CrearDaoDireccion()
        {
            return new DaoDireccion();
        }

        /// <summary>
        /// Devuelve la instancia de DaoEmbarque
        /// </summary>
        /// <returns></returns>
        public static DaoEmbarque CrearDaoEmbarque()
        {
            return new DaoEmbarque();
        }

        /// <summary>
        /// Devuelve la instacia de DaoPuerto
        /// </summary>
        /// <returns></returns>
        public static DaoPuerto CrearDaoPuerto()
        {
            return new DaoPuerto();
        }

        /// <summary>
        /// Devuelve la instancia de DaoTipoContainer
        /// </summary>
        /// <returns></returns>
        public static DaoTipoContainer CrearDaoTipoContainer()
        {
            return new DaoTipoContainer();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static DaoAdministrador CrearDaoAdministrador()
        {
            return new DaoAdministrador();
        }

    }
}

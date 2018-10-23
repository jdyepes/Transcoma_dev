﻿using System;
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
    }
}

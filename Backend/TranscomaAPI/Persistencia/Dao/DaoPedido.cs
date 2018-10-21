using NLog;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Comun.Excepciones;
using TranscomaAPI.Persistencia.Dao.Contrato;

namespace TranscomaAPI.Persistencia.Dao
{
    public class DaoPedido : Dao, IDaoPedido
    {
        Logger logger = LogManager.GetLogger("fileLogger");//logger

        public void Actualizar(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        public void Agregar(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        public List<Entidad> ConsultarPedidoPorUsuario(int idUsuario)
        {
            try
            {
                List<Entidad> _pedidos = new List<Entidad>();
                Producto producto;
                Almacen almacen;
                Pedido pedidoARetornar = null;

                Conectar();
                StoredProcedure("consultarPedidosCliente(@id)");
                AgregarParametro("id", idUsuario);
                EjecutarReader();
                
                for (int i = 0; i < cantidadRegistros; i++)
                {
                    producto = new Producto(GetInt(i, 5), GetString(i, 6), GetString(i, 7), GetString(i, 8), GetBool(i, 9));
                    almacen = new Almacen(GetInt(i, 10), GetString(i, 11), GetString(i, 12));

                    pedidoARetornar = FabricaEntidades.CrearPedido(GetInt(i, 0), GetDateTime(i, 1), GetDateTime(i, 2), GetString(i, 3), GetString(i, 4), producto, almacen);
                    _pedidos.Add(pedidoARetornar);
                }

                return _pedidos;
            }
            catch (NullReferenceException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionObjetoNulo(e, "Parametros nulos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (InvalidCastException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionCasteoIncorrecto(e, "Casteo no correcto en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (NpgsqlException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionBaseDeDatos(e, "Error en la base de datos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (Exception e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionGeneral(e, DateTime.Now);
            }
            finally
            {
                Desconectar();
            }
        }

        public List<Entidad> ConsultarTodos()
        {
            try
            {
                List<Entidad> _pedidos = new List<Entidad>();
                Producto producto;
                Almacen almacen;
                Cliente cliente;
                Pedido pedidoARetornar = null;

                Conectar();
                StoredProcedure("consultarTodosPedidos()");
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    producto = new Producto(GetInt(i, 5), GetString(i, 6), GetString(i, 7), GetString(i, 8), GetBool(i, 9));
                    cliente = new Cliente(GetInt(i, 0), GetString(i, 10), GetString(i, 11));
                    almacen = new Almacen(GetInt(i, 12), GetString(i, 13), GetString(i, 14));
                    
                    pedidoARetornar = FabricaEntidades.CrearPedido(GetInt(i, 0), GetDateTime(i, 1), GetDateTime(i, 2), GetString(i, 3), GetString(i, 4), producto, almacen, cliente);
                    _pedidos.Add(pedidoARetornar);
                }

                return _pedidos;
            }
            catch (NullReferenceException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionObjetoNulo(e, "Parametros nulos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (InvalidCastException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionCasteoIncorrecto(e, "Casteo no correcto en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (NpgsqlException e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionBaseDeDatos(e, "Error en la base de datos en: " + GetType().FullName + "." + MethodBase.GetCurrentMethod().Name + ". " + e.Message);
            }
            catch (Exception e)
            {
                logger.Error(e, e.Message);
                throw new ExcepcionGeneral(e, DateTime.Now);
            }
            finally
            {
                Desconectar();
            }
        }

        public void Eliminar(Entidad entidad)
        {
            throw new NotImplementedException();
        }
    }
}

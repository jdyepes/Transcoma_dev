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
    public class DaoCliente : Dao, IDaoCliente
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

        public List<Entidad> ConsultarClientes(int idAdministrador)
        {
            try
            {
                List<Entidad> _clientes = new List<Entidad>();
                Cliente clienteARetornar = null;
                Administrador administrador;

                Conectar();
                StoredProcedure("consultarClientesAdministrador(@id)");
                AgregarParametro("id", idAdministrador);
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    administrador = FabricaEntidades.CrearAdministrador(GetInt(i, 0), GetString(i, 1));
                    clienteARetornar = FabricaEntidades.CrearCliente(GetInt(i, 2), GetString(i, 3), GetString(i, 4), GetString(i, 5), GetDateTime(i, 6), administrador);
                    _clientes.Add(clienteARetornar);
                }

                return _clientes;
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
            throw new NotImplementedException();
        }

        public void Eliminar(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        public Entidad verificarNombreUsuarioCliente(string userName)
        {
            try
            {
                Cliente cliente;
                int _resultado;
                Conectar();
                StoredProcedure("verificarLoginCliente(@nombreUsuario)");
                AgregarParametro("nombreUsuario", userName);
                EjecutarReader();

                _resultado = GetInt(0, 0);
                cliente = FabricaEntidades.CrearCliente(_resultado, GetString(0, 1), GetString(0, 2), GetString(0, 3), GetString(0, 4), GetDateTime(0, 5));

                return cliente;
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
    }
}

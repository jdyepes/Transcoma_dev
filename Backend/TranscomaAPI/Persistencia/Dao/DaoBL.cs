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
    public class DaoBL: Dao, IDaoBL
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

        public List<Entidad> ConsultarBLporCliente(Entidad idCliente)
        {
            try
            {
                List<Entidad> _bls = new List<Entidad>();
                BL bl;
                Cliente cliente = idCliente as Cliente;

                Conectar();
                StoredProcedure("consultarBlporCliente(@idCliente)");
                AgregarParametro("idCliente", cliente.Id);
                EjecutarReader();

                for (int i = 0; i < cantidadRegistros; i++)
                {
                    bl = FabricaEntidades.CrearBl();
                    bl.Pol = FabricaEntidades.CrearPuerto();
                    bl.Pod = FabricaEntidades.CrearPuerto();
                    bl.Cotizacion = FabricaEntidades.CrearCotizacion();
                    bl.Cliente = FabricaEntidades.CrearCliente();

                    bl.Id = GetInt(i, 0);
                    bl.NotifyParty = GetString(i, 1);
                    bl.LugarRecepcion = GetString(i, 2);
                    bl.BuqueOceano = GetString(i, 3);
                    bl.Pol.Id = GetInt(i, 4);
                    bl.Pod.Id = GetInt(i, 5);
                    bl.LugarEntrega = GetString(i, 6);
                    bl.FletePagoEn = GetString(i, 7);
                    bl.NumPaquetes = GetInt(i, 8);
                    bl.Descripcion = GetString(i, 9);
                    bl.PesoCarga = GetInt(i, 10);
                    bl.Cotizacion.Id = GetInt(i, 11);
                    bl.Cliente.Id = GetInt(i, 12);
                    bl.Cliente.Nombre = GetString(i, 13);
                    bl.Volumen = GetInt(i, 14);

                    _bls.Add(bl);
                }

                return _bls;
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

    }
}
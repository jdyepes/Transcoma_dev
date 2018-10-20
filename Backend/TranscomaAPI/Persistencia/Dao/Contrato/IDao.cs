using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Persistencia.Dao.Contrato
{
    public interface IDao
    {
        void Agregar(Entidad entidad);

        void Actualizar(Entidad entidad);

        void Eliminar(Entidad entidad);

        List<Entidad> ConsultarTodos();
    }
}

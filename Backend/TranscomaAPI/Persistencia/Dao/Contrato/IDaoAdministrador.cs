using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Persistencia.Dao.Contrato
{
    public interface IDaoAdministrador : IDao
    {
        Entidad verificarNombreUsuarioAdministrador(string userName);
    }
}

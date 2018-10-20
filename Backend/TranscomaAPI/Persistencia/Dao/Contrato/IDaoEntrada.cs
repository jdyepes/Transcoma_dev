using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Persistencia.Dao.Contrato
{
    public interface IDaoEntrada : IDao
    {
        Entidad ConsultarEntradaPorId(Entidad entidad);    
        List<Entidad> ConsultarEntradaPorUsuario(Entidad entidad);
        //List<Entidad> ConsultarTodasEntradas();
    }
}

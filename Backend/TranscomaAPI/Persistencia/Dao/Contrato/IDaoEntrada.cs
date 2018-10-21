using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;

namespace TranscomaAPI.Persistencia.Dao.Contrato
{
    public interface IDaoEntrada : IDao
    {      
        List<Entidad> ConsultarEntradaPorUsuario(int idUsuario);
       // List<Entidad> ConsultarTodasEntradas();
    }
}

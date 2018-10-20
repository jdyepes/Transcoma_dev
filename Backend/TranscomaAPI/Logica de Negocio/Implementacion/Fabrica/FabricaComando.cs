using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Logica_de_Negocio.Implementacion.Comando.Carga;

namespace TranscomaAPI.Logica_de_Negocio.Implementacion.Fabrica
{
    public static class FabricaComando
    {
        public static ComandoConsultarEntradasCliente CrearComandoConsultarEntradas()
        {
            return new ComandoConsultarEntradasCliente();
        }
    }
}

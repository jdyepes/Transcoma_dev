using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Servicios.DTO.Cliente;

namespace TranscomaAPI.Servicios.DTO.Fabrica
{
    /// <summary>
    /// Fabrica que instancia todos los DTO
    /// </summary>
    public class FabricaDTO
    {
        public static DTOClienteId CrearDtoClienteId()
        {
            return new DTOClienteId();
        }
    }
}

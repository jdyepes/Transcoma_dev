using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Servicios.DTO.Cliente
{
    /// <summary>
    /// DTO que contiene solo el id de cliente
    /// </summary>
    public class DTOClienteId
    {
        private int _idCliente;

        public int IdCliente { get => _idCliente; set => _idCliente = value; }
    }
}

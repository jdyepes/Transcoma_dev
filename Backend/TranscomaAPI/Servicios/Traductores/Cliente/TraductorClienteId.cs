using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TranscomaAPI.Comun.Entidades;
using TranscomaAPI.Comun.Entidades.Fabrica;
using TranscomaAPI.Servicios.DTO.Cliente;
using TranscomaAPI.Comun.Excepciones;

namespace TranscomaAPI.Servicios.Traductores.Cliente
{
    public class TraductorClienteId: TraductorGenerico<DTOClienteId>
    {
        public override DTOClienteId CrearDto(Entidad entidad)
        {
            throw new NotImplementedException();
        }

        public override Entidad CrearEntidad(DTOClienteId dto)
        {
            try
            {
                Entidad cliente = FabricaEntidades.CrearCliente();
                cliente.Id = dto.IdCliente;

                return cliente;
            }
            catch(NullReferenceException exc)
            {
                throw new ExcepcionObjetoNulo(exc,"Error al recibir la información del cliente");
            }
        }

        public override List<DTOClienteId> CrearListaDto(List<Entidad> entidades)
        {
            throw new NotImplementedException();
        }

        public override List<Entidad> CrearListaEntidades(List<DTOClienteId> dtos)
        {
            throw new NotImplementedException();
        }
    }
}

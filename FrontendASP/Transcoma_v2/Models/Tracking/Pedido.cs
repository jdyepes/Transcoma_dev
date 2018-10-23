using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class Pedido
    {
        public int _idPedido { get; set; }
        public DateTime _fechaEntregar { get; set; }
        public String _estadoPedido{ get; set; }
        public DateTime _fechaCargaPedido { get; set; }
        public DateTime _fechaEntrega { get; set; }
        public String _destinatario{ get; set; }
        public String _poblacion { get; set; }
        public String _direccion { get; set; }
        public String _cliente { get; set; }
    }
}

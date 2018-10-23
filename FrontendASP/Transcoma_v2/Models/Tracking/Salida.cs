using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class Salida
    {
        public int _idPedido { get; set; }
        public DateTime _fechaEntrega { get; set; }
        public int _idArticulo { get; set; }
        public String _descripcion { get; set; }
        public String _lote { get; set; }
        public String _estadoCalidad { get; set; }
        public String _cliente { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class Entrada
    {
        public int _idEntrada { get; set; }
        public DateTime _fechaEntrada { get; set; }
        public int _idArticulo { get; set; }
        public String _descripcion { get; set; }
        public String _lote { get; set; }
        public String _estadoCalidad { get; set; }
        public String _cliente { get; set; }
    }
}

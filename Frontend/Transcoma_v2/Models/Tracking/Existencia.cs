using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class Existencia
    {
        public int _idArticulo { get; set; }
        public String _descripcion { get; set; }
        public String _lote { get; set; }
        public String _estadoCalidad { get; set; }
        public int _total { get; set; }
    }
}

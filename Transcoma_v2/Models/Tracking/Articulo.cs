using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class Articulo
    {
        public int _idArticulo { get; set; }
        public int _idAlmacen { get; set; }        
        public int _numLote { get; set; }
        public String _ubicacion { get; set; }
        public String _estadoEntrega { get; set; }
        public String _estadoCalidad { get; set; }
    }
}

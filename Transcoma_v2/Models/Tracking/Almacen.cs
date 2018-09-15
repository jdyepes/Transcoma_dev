using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Transcoma.Models.Tracking
{
    public class Almacen
    {
        public int _idAlmacen { get; set; }
        public int _idArticulo { get; set; }
        public String _nombre { get; set; }
        public DateTime _fechaIngreso { get; set; }
        public DateTime _fechaEntrega { get; set; }
    }
}

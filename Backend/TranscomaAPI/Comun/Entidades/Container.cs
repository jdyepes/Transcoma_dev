using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TranscomaAPI.Comun.Entidades
{
    public class Container: Entidad
    {
        private int _peso;
        private string _dimPeso;
        private int _volumen;
        private string _dimVolum;
        private int _numBultos;
        private Tipo_Container _tipoContainer;



        public Container() { }

        public Container(int peso, string dimPeso, int volumen, string dimVolum, int numBultos, Tipo_Container tipoContainer)
        {
            _peso = peso;
            _dimPeso = dimPeso;
            _volumen = volumen;
            _dimVolum = dimVolum;
            _numBultos = numBultos;
            _tipoContainer = tipoContainer;

        }

        public int Peso { get => _peso; set => _peso = value; }
        public string DimPeso { get => _dimPeso; set => _dimPeso = value; }
        public int Volumen { get => _volumen; set => _volumen = value; }
        public string DimVolum { get => _dimVolum; set => _dimVolum = value; }
        public int NumBultos { get => _numBultos; set => _numBultos = value; }
        public Tipo_Container TipoContainer { get => _tipoContainer; set => _tipoContainer = value; }
    
    }
}

﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Usuarios
    {

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public decimal Altura { get; set; }
        public long Documento { get; set; }
        public string FotoDePerfil { get; set; }
        public DateTime FechaDeNacimiento { get; set; }
        public bool Pago { get; set; }
        public int Peso { get; set; }
        public long Contacto { get; set; }

        public TipoMembresia TiposMembresia { get; set; }

        public Membresia Membresias { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Practica20250318.AppWebMVC.Models;

public partial class DetallesVenta
{
    public int Id { get; set; }

    public int? VentaId { get; set; }

    public int? ProductoId { get; set; }

    public int Cantidad { get; set; }

    public decimal PrecioUnitario { get; set; }

    public decimal? Subtotal { get; set; }

    public virtual Producto? Producto { get; set; }

    public virtual Venta? Venta { get; set; }

    [NotMapped]
    public int NumItem { get; set; }
}

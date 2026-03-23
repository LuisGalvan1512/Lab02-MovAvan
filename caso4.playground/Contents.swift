let PrecioUnitario: Double = 50.0
let Cantidad: Int = 4
let Descuento: Double = 10.0

func calcularYMostrarCompra(precio: Double, unidades: Int, porcentaje: Double) {
    guard precio > 0 else {
        print("❌ Error: Precio unitario debe ser mayor que cero.")
        return
    }
    guard unidades > 0 else {
        print("❌ Error: La cantidad debe ser mayor que cero.")
        return
    }
    guard porcentaje >= 0 && porcentaje <= 100 else {
        print("❌ Error: Descuento debe estar entre 0 y 100%.")
        return
    }
    
    let subtotal = precio * Double(unidades)
    let montoDescuento = subtotal * (porcentaje / 100)
    let pagoTotal = subtotal - montoDescuento
    
    print("Subtotal: $\(subtotal)")
    print("Monto del descuento: $\(montoDescuento)")
    print("Pago total: $\(pagoTotal)")
}

calcularYMostrarCompra(precio: PrecioUnitario, unidades: Cantidad, porcentaje: Descuento)

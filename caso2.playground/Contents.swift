let Tiempo: Double = 180.0
let Actividad: String = "reposo"

func obtenerCaloriasPorMinuto(actividad: String) -> Double? {
    let Act = actividad.lowercased()
    if Act == "dormir" {
        return 1.08
    } else if Act == "reposo" {
        return 1.66
    } else {
        return nil
    }
}

func calcularCalorias(actividad: String, tiempo: Double) {
    guard let CaloriasPorMinuto = obtenerCaloriasPorMinuto(actividad: actividad) else {
        print("❌ Error: Actividad inválida. Solo se permite 'dormir' o 'reposo'.")
        return
    }
    
    if tiempo <= 0 {
        print("❌ Error: El tiempo debe ser un número entero positivo.")
        return
    }
    
    let Calorias = CaloriasPorMinuto * tiempo
    
    print("✅ Actividad: \(actividad.uppercased())")
    print("⌛ Tiempo: \(Int(tiempo)) minutos")
    print("🔥 Calorías consumidas: \(Calorias)")
}

calcularCalorias(actividad: Actividad, tiempo: Tiempo)

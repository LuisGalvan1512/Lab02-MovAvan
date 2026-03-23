func funcA(_ texto: String) -> String? {
    if texto.contains("Tecsup") {
        return "Tecsup es un instituto"
    } else if texto.contains("MIT") {
        return "MIT es una universidad"
    }
    return nil
}

func funcB(_ texto: String) -> String? {
    if texto.contains("UNI") {
        return "UNI es una universidad"
    }
    return nil
}

func funcC(_ texto: String) -> String? {
    if texto.contains("UNAC") {
        return "UNAC es una universidad"
    }
    return nil
}

func funcD(_ texto: String) -> String? {
    if texto.contains("UPM") {
        return "UPM es una universidad"
    }
    return nil
}

func funcBusqueda(_ texto: String, _ maxFunciones: Int) -> String {
    
    var contador = -1
    
    if contador < maxFunciones {
        contador += 1
        if let resultado = funcA(texto) {
            return resultado
        }
    }
    
    if contador < maxFunciones {
        contador += 1
        if let resultado = funcB(texto) {
            return resultado
        }
    }
    
    if contador < maxFunciones {
        contador += 1
        if let resultado = funcC(texto) {
            return resultado
        }
    }
    
    if contador < maxFunciones {
        contador += 1
        if let resultado = funcD(texto) {
            return resultado
        }
    }
    
    return "No se encontró información"
}



let textoBusqueda = "Buscar UPM"
let maxFunciones = 3

let resultado = funcBusqueda(textoBusqueda, maxFunciones)
print(resultado)

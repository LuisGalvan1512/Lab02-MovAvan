import Foundation

let capital = 50000.0
let tasa = 8.0

let intereses = capital * (tasa / 100)

print("Intereses generados: $\(intereses)")

if intereses > 7000 {
    let capitalFinal = capital + intereses
    print("Los intereses superan $7000. Se reinvierten.")
    print("Capital final en la cuenta: $\(capitalFinal)")
} else {
    print("Los intereses no superan $7000. No se reinvierten.")
    print("Capital final en la cuenta: $\(capital)")
}

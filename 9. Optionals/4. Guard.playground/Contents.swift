
// Schlüsselwort guard (bewachen) --> ist auch ein Optional binding, wie if let.
// guard let dient dazu, Funktionen, Schleifen oder Fälle zu verlassen, falls ein Optional nil ist

// Wird oft für Optional-Parameter in Funktionen verwendet

func printName(userName: String?) {

    // mit guard "bewache" ich, ob ein Wert im Optional "userName" vorhanden ist.
    // Wenn ja, wird die Konstante "name" diesen Wert zugewiesen.
    // Ansonsten, wird die Funktion sofort durch "return" verlassen
    
    guard let name = userName else {return}
    
    print("Dein Name ist \(name)")
    
}

let name: String? = "karsten"
printName(userName: name)



func playOpera(by composer: String?) -> String? {
    guard let composer = composer else {
        return "Bitte geben sie einen Composer an"
    }
    
    if composer == "Mozart" {
        return "Le nozze di Figaro"
    } else {
        return nil
    }
    
}


if let opera = playOpera(by: "Mozart") {
    print(opera)
} else {
    print("Komponist ist unbekannt! Daher kann nichts gespielt werden!")
}



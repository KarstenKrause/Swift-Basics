import Foundation
////////////////////////////////////////////////////////////////////////////
/////////////////////////// Einfache Closures /////////////////
////////////////////////////////////////////////////////////////////////////

// Closures sind anonyme Funktionen (Funktionen ohne Namen), die Variablen/Konstanten zugewiesen werden
// Diese Variablen/Konstanten sind dann vom Typ Closure
// Der Typ Closure wird so gekennzeichnet:   () -> ()     oder () -> void   oder (datentyp, datentyp,...) -> Datentyp-Rückgabe

// Closures sind wie Funktionen, nur ohne Namen!
// Dehalb werden Funktionen auch named-Closures genannt.

let autofahren = {
    print("Ich fahre in meinem Auto herum")
}

// Aufruf eines Closures exakt wie Funktionen
autofahren()







////////////////////////////////////////////////////////////////////////////
//////////////////////// Parameterlisten in Closures //////
////////////////////////////////////////////////////////////////////////////

// Anders, als in Funktionen, bekommen Closures ihre Parameterliste innerhalb ihres Blocks
// Das Schlüsselwort "in" lässt den Compiler wissen, dass jetzt der eigentliche Code-Block des Closures folgt

let autofahren2 = { (zielOrt: String) in
    print("Ich fahre nach \(zielOrt)")
}

autofahren2("Berlin")




////////////////////////////////////////////////////////////////////////////
//////////////////////// Rückgabewerte in Closures //////
////////////////////////////////////////////////////////////////////////////

// Closures können, wie Methoden Werte zurück liefern

let autoFahren3 = {(zielOrt: String) -> String in
        let zeichenkette = "Ich fahre nach \(zielOrt)"
        return zeichenkette
}

let message = autoFahren3("Bielefeld")
print(message)




// Erst Closure Deklaration. Dann die Zuweisung (alternative Möglichkeit)
let summe: (Int, Int) -> Int = { (zahl1: Int, zahl2: Int) -> Int in
    return zahl1 + zahl2
}

summe(100, 80)

let summe2: (Int, Int) -> Int

summe2 = {(zahl1: Int, zahl2: Int) -> Int in
    return zahl1 + zahl2
}

summe2(20,20)

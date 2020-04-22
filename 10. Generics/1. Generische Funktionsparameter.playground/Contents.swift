// Generics sind Platzhalter für alle möglichen Typen.
// Wenn ich will, dass eine Parameterliste alle möglichen Typen aufnehmen kann, muss ich Generics verwenden.
// Denn Parameterlisten benötigen Typangaben.

// Genereische Parameterlisten erzeuge ich durch eine Typ-Platzhalter-Benennung hinter der Funktionsbeschreibung <T>

func tauscheWerte<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
    print("\(a) \(b)")
}


var aString = "Hallo"
var bString = "Karsten"


tauscheWerte(&aString, &bString)

var num1 = 1
var num2 = 2
tauscheWerte(&num1, &num2)



// Man kann auch mehrere Typ-Platzhalter angeben (getrennt durch ein Kommata)
// Die "Typ-Platzhalter" kann ich beliebig benennen
func zeigeWerte<T1,T2>(value1: T1, value2: T2) {
    print("\(value1) \(value2)")
}

zeigeWerte(value1: 0.23, value2: "Hallo")

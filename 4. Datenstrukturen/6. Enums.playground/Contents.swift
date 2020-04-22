// Enums sind eine Zusammenfassung von Konstanten als Fälle
// Enums werden auch als Ergebnis-Typ beschrieben.

enum Ergebnis {
    case erfolg
    case fehlgeschlagen
}

let meinErzieltesErgebnis = Ergebnis.erfolg

if meinErzieltesErgebnis == Ergebnis.erfolg {
    print("Super, ich liege richtig!")
}

let deinErzieltesErgebnis: Ergebnis = .fehlgeschlagen

switch deinErzieltesErgebnis {
case .erfolg:
    print("Super, du liegst richtig!")
case .fehlgeschlagen:
    print("Da liegt du leider falsch!")
}


// Wäre auch eine gute Wahl für ein Enum, weil es nur wenige Tage gibt
enum Tag {
    case montag
    case dienstag
    case mittwoch
    case donnerstag
    case freitag
    case samstag
    case sonntag
}




// --Enums mit assoziierten Werten--
// Sie sind dafür da, bestimmte Konstante mehr Details über ihren Zustand zu geben
enum Aktivität {
    case bored
    case gitarreSpielen(song: String)
    case musikHören(lautsärke: Int)
}

let gitarreSpielen: Aktivität = .gitarreSpielen(song: "Pull me Under")
let musikHören: Aktivität = .musikHören(lautsärke: 100)










// --Enums mit Raw Values --
// Mit Raw-Values lassen sich die Fälle des Enums, ähnlich wie bei einem Array, durch ihren Index aufrufen. Nur, dass hier ein Initializer verwendet wird. Auch hier wird (im Default) bei 0 angefangen zu zählen und hierbei ist immer der erste Fall gemeint
enum Planet: Int {
    case merkur = 1 // es wird jetzt von hier an mit der Raw-Value gezählt
    case venus
    case erde
    case mars
}

let erde = Planet(rawValue: 3)



// --enum als Container für Konstane --
// Diese Konstante benötigen zwingend einen Raw-Value-Datentypen
// Daher können, wie hier im Beispiel nur doubles abgespeichert werden
enum KonstanteZahlen: Double {
    case pi = 3.14159
    case e = 2.718
    case phi = 1.68
}


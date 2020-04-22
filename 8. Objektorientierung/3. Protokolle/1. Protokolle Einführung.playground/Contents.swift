// Protokolle -> Ein Vertrag, welche Eigenschaften und Methoden in Klassen/Structs/ Enums vorhanden sein müssen

// Klassen / Structs / Enums können mehrere Protokolle aufnehmen

// Sollte eine Klasse eine Superklasse haben, so muss man die Superklasse zuerst angeben und dann erste die Protokolle

// Was ist ein Protokoll?
// Dort werden nur Funktionen und Eigenschaften definiert, es gibt keine Implementierung


// Regeln:
// Es ist NICHT möglich nur set-Properties in Protokollen anzugeben  --> z.B var id: String {set}
// Es ist aber möglich nur get-Properties in Protokollen anzugeben   --> z.B var id: String {get}




// MARK: - Protocol-Properties
protocol Identifizierbar{
    // Alle Klassen, die dieses Protokoll annimmt, muss  diese variable Propertie "id" vom Typ String besitzen,
    // die beschrieben werden kann, als auch ausgelesen werden kann (get).
    var id: String {set get}
}

class User: Identifizierbar {
    var id: String
    
    init(id: String) {
        self.id = id
    }
    
}

// Es können auch Objekte aus protokollen erzeugt werden:
func zeigeID(protokollObjekt: Identifizierbar) {
    print("Meine ID ist \(protokollObjekt.id)")
}

// Da die Klasse "User" das Protokoll "Identifizierbar" angenommen hat, kann es auch den Typen des Protokolls annehmen
zeigeID(protokollObjekt: User(id: "124"))




// MARK: - Protocol-Methods
protocol Aenderbar {
    func aendereNamen(name: String)
}

class Mensch: Aenderbar {
    let vorname: String
    var nachname: String
    
    init(vorname: String, nachname: String) {
        self.vorname = vorname
        self.nachname = nachname
    }
    
    // Funktion aus dem Protokoll übernehmen und implementieren
    func aendereNamen(name: String) {
        self.nachname = name
    }
}

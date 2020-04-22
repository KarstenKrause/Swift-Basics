// Klassen verfolgen die gleiche Idee wie Structs.
// Klassen sind ebenfalls Baupläne (oder Schablonen), um aus ihnen Objekte zu erzeugen.
// Klassen sind also dazu da eigene Datentypen zu erstellen, über die ich Properties und Methoden setzen/aufrufen kann

// Klassen haben wesentliche Unterschiede gegenüber Structs, die ich nach und nach erklären will



// Klasse erzeugen
class Mensch {
    // MARK: - Properties
    var name: String
    let geburtsJahr: Int
    let gewicht: Double
    let geschlecht: String
    
    // 1. wesentliche Unterschied: Man MUSS für jede Klasse einen Initializer explizit schreiben.
    //    Klassen haben nicht wie Structs einen Memberwise-Initializer
    //    ( Dass Swift automatisch einen Initializer während der Objekterzeugung generiert mit allen definierten Properties des Structs)
    
    // MARK: - Initializer (Designated initializer)
    // Der Standard initializer
    // Pro Klasse muss mindestens einer vorhanden sein
    init(name: String, geburtsJahr: Int, gewicht: Double, geschlecht: String) {
        self.name = name
        self.geburtsJahr = geburtsJahr
        self.gewicht = gewicht
        self.geschlecht = geschlecht
    }
    
    // MARK: - convenience initializer
    // ein Initialisierer, welcher die properties der Klasse vorher mit Standardwertem belegt
    // kann man machen, muss man aber nicht.
    convenience init() {
        self.init(name: "Karsten", geburtsJahr: 1988, gewicht: 80, geschlecht: "männlich")
    }
    
    
    // MARK: - Methods
    func printHumanData() {
        print("Name: \(self.name)")
        print("Geburtsjahr:\(self.geburtsJahr)")
        print("Gewicht:\(self.geburtsJahr)")
        print("geschlecht:\(self.geschlecht)")
    }
}


// Objekt erzeugen mit Designated initializer
let lieblingsMensch = Mensch(name: "Benedict", geburtsJahr: 2017, gewicht: 12, geschlecht: "männlich")
lieblingsMensch.name

// Objekt erzeugen mit Convenience initializer
let ich = Mensch()
ich.name






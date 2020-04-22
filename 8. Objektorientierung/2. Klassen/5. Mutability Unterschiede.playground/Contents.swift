
class Person {
    // MARK: - Properties
    let vorname: String
    var nachname: String
    
    // MARK: - Init
    init(vorname: String, nachname: String) {
        self.vorname = vorname
        self.nachname = nachname
    }
    
    // MARK: - Methods
    func nachnamenAenderung(nachname: String) {
        self.nachname = nachname
    }
}


// Properties von Klassen-objekten können geändert werden, solange diese variable sind, auch wenn das Objekt konstant ist!
let maria = Person(vorname: "Maria", nachname: "Dreckls")
maria.nachnamenAenderung(nachname: "Martins")
print(maria.nachname)






struct Mensch {
    // MARK: - Properties
    let vorname: String
    var nachname: String
    
    // MARK: - Init
    init(vorname: String, nachname: String) {
        self.vorname = vorname
        self.nachname = nachname
    }
    
    // MARK: - Methods
    // zur Erinnerung: Wenn Struct-Properties in einer Methode geändert werden sollen, benötigt diese Methode das Schlüsselwort "Mutating". In Klassen ist das Schlüsselwort nicht erlaubt!
    mutating func nachnamenAenderung(nachname: String) {
        self.nachname = nachname
    }
}


//let hannah = Mensch(vorname: "Hannah", nachname: "Heinrichs")
// Properties von Konstanten Objekten lassen sich NIEMALS ändern!
//hannah.nachnamenAenderung(nachname: "Müller")

var hannah = Mensch(vorname: "Hannah", nachname: "Heinrichs")
hannah.nachnamenAenderung(nachname: "Müller")

print(hannah.nachname)

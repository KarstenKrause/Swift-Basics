// Klassen können von anderen Klassen erben
// Wird benötigt, wenn man

// Superklasse
class Fahrzeug {
    // MARK: - Properties
    var marke: String
    var ps: Int
    
    // MARK: - Init
    init(marke: String, ps: Int) {
        self.marke = marke
        self.ps = ps
    }
    
    // MARK: - Methods
    func starte() {
        print("Fahrzeug startet")
    }
}


// von einer Klasse erben, indem nach dem ":" die Superklasse bekanntgegeben wird
class Auto: Fahrzeug {
    // MARK: - Properties
    let reifenzahl: Int = 4
    let tuerenAnzahl: Int
    
    // MARK: - Init
    
    // Initializer aus der Superklasse muss am Ende aufgerufen werden!
    init(marke: String, ps: Int, tuerenAnzahl: Int) {
        self.tuerenAnzahl = tuerenAnzahl
        super.init(marke: marke, ps: ps)
    }
    
    
    
    // MARK: - Methods
    override func starte() {
        print("Auto macht bruuuuum")
    }
}

class LKW: Fahrzeug {
    
    // MARK: - Properties
    let reifenzahl: Int = 6
    let tuerenAnzahl: Int
    
    // MARK: - Initializer
    init(marke: String, ps: Int, tuerenAnzahl: Int) {
        self.tuerenAnzahl = tuerenAnzahl
        super.init(marke: marke, ps: ps)
    }
    
    //MARK: - Methods
    override func starte() {
        print("LKW macht brummlBrumml")
    }
}


var bmw = Auto(marke: "BMW", ps: 200, tuerenAnzahl: 4)
var man = LKW(marke: "MAN", ps: 1200, tuerenAnzahl: 2)

bmw.starte()
man.starte()





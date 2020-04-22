// Structs sind Baupläne bzw. Schablonen um aus ihnen Objekte zu erzeugen.
// Diese Objekte sind dann vom Datentyp des Structs. -> Wir haben unseren eigenen Datentyp erstellt :-)
// Über diese Objekte lassen sich auf Funktionen und Attribute des Structs zugreifen

// Ein Struct selbst muss man sich wie einen Bauplan für Objekte vorstellen.
// Ein Auto hat auch einen Bauplan. z.B Anzahl Türen, Gewicht, Marke usw.
// Definiert bzw initialisiert wird dieser "Bauplan" erst später

// Immer dann verwenden, wenn ich keinen Komplizierten Typen erstellen will.
// Also überwiegend dann, wenn ich mehrere Daten in einen Typen ablagern will, welche kaum geändert werden.
// Soll mein "Bauplan" umfangreicher sein (etwa, wenn der Bauplan von einem anderen abgeleitet wird -> Vererbung).

// Sructs können nicht von anderen Structs erben!
// Structs können aber einen Vertrag eines Protokolls eingehen (Einbinden von Protocols bzw Interfaces möglich!)
// Objekte aus Structs sind Value-Types. Nicht wie bei Klassen Reference types.



////////////////////////////////////////////////////////////////////////////////////////
////////////////////////// Einfachen Struct erstellen ///////////////////
////////////////////////////////////////////////////////////////////////////////////////

struct Auto {
    // MARK: - Stored Properties -> Attribute, welche mit einem bestimmten Typ abgespeichert werden
    var gewicht: Int
    let anzTueren: Int
    let marke: String
    
    // MARK: - Methods
    // Funktionen in Structs und Klassen werden Methoden genannt
    func fahre(){
        print("Das Auto macht: Brum brum")
    }
    
}



////////////////////////////////////////////////////////////////////////////////////////
///////////////// Objekte aus einen Struct erzeugen /////////////
////////////////////////////////////////////////////////////////////////////////////////

// Memberwise Initializer -> Swift erkennt die Properties automatisch und erstellt automatisch während der Objekterzeugung einen Initializer
let bmw = Auto(gewicht: 2000, anzTueren: 5, marke: "BMW")

// Aufruf einer Methode über ein Objekt
bmw.fahre()
print("Der \(bmw.marke) wiegt \(bmw.gewicht)kg und ist ein \(bmw.anzTueren)-Türer \n")




////////////////////////////////////////////////////////////////////////////////////////
////////////////////////// Computed Properties //////////////////////////
////////////////////////////////////////////////////////////////////////////////////////


struct Auto2 {
    // MARK: - Stored Properties
    var gewicht: Int
    let anzTueren: Int
    let marke: String
    var hp: Int
    
    // MARK: - Computed Properties -> Attribute, welche durch ein Unterprogramm ihren Wert bestimmten
    var autoStatus: String {
        if hp > 400 {
            return "Sportauto"
        } else {
            return "normales Auto für den Straßenverkehr"
        }
    }
    
    
    // MARK: - Methods
    func fahre(){
        print("Brum brum")
    }
    
}





let ferrari = Auto2(gewicht: 2000, anzTueren: 5, marke: "Ferrari", hp: 550)

print("Der \(ferrari.marke) wiegt \(ferrari.gewicht)kg und ist ein \(ferrari.anzTueren)-Türer")
print("Das Auto besitzt \(ferrari.hp) PS und ist daher ein \(ferrari.autoStatus) \n")


var mini = Auto2(gewicht: 1400, anzTueren: 4, marke: "Mini", hp: 89)
print("Der \(mini.marke) hat \(mini.hp) PS und ist daher ein \(mini.autoStatus)")






// Mehr zu computed properties

struct Auto3 {
    var anzMenschen: Int
    let marke: String
    var hp: Int
    var leerGewicht: Int
    
    var aktuellesGewicht: Int {
        
        // Der Getter in einer Computed Property wird ausgeführt, wenn diese Property aufgerufen wird
        get {
            return leerGewicht + (anzMenschen * 60)
        }
        
        set {
            self.hp -= 10
        }
        
    }
}

var tesla = Auto3(anzMenschen: 2, marke: "Tesla", hp: 450, leerGewicht: 1800)

tesla.aktuellesGewicht // getter wird aufgerufen
tesla.aktuellesGewicht = 2000 // Computed Property wird gesetzt -> setter wird automatisch aufgerufen
tesla.hp














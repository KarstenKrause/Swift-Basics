// Property-Observers dienen dazu Code auszuführen, bevor oder nachdem ein neuer Wert für eine Property nach erzeugung eines Objekts gesetzt wurde.

// Zunächst normal die Property erzeugen, mit Angabe des Typs, dannach einen Codeblock erzeugen.
// Innerhalb des Blocks  leitet das Schlüsselwort "didSet" oder "willSet"  den Codeblock für die Poperty-Observers ein.


// didSet  -> Nachdem eine Änderung der Propertie stattgefunden hat
// willSet -> Bevor eine Änderung der Propertie stattgefunden hat (wird eher selten verwendet)


struct Fortschritt {
    var aufgabe: String
    
    // So ist der Property-Observer aufgebaut
    var menge: Int {
        didSet{
            print("Aufgabe ist derzeit um \(menge)% fertig")
            if self.menge == 100 {
                print("Hausübung ist jetzt fertig bearbeitet!")
            }
        }
    }
    
    
}

var hausuebung = Fortschritt(aufgabe: "OOP", menge: 0)


while(hausuebung.menge < 100) {
    hausuebung.menge += 10
}

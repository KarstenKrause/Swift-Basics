// Protokoll-Extensions sind reguläre Extensions, die vorhandene Protokolle erweitern
// Deswegen können mehrere Typen gleichzeitig erweitert werden, wenn sie das gleiche
// Protokoll erfüllen


let namensListe = ["Karsten", "Benedict", "Carola"]
let stadtListe = Set(["Bünde", "Fernwald", "Gießen", "Herford"])

// der Typ Set und der Typ array haben efüllen beide das Protokoll "Collection"
// Wenn ich Protokoll erweitere, erweitere ich gleichzeitig alle Typen mit dem Protokoll Collection

extension Collection {
    func summarize() {
        print("Es existieren \(count) Einräge")
        
        for name in self {
            print(name)
        }
    }
}


namensListe.summarize()
print()
stadtListe.summarize()

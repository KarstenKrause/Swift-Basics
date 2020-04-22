////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Unterschied Reference Types und Value Types ////////////////////////
////////////////////////////////////////////////////////////////////////////////////////


// Beispiele zu den Unterschieden zwischen reference-types(Klassen) und value-types(structs)

class Mensch {
    // Properties
    var name: String
    
    // Initializer
    init(name: String) {
        self.name = name
    }
    
    // Methods
    func setName(name: String){
        self.name = name
    }
}


// Das Objekt person1 der Klasse Mensch ist nur eine Referenz
// Diese zeigt auf den Ort des Arbeitsspeichers , wo die Daten dieses Objekts liegt
var person1 = Mensch(name: "Hans")
var person2 = Mensch(name: "Dieter")

person1.name
person2.name


// Ausgabe der Referenzadressen
print("person1 Referenz: \(Unmanaged.passUnretained(person1).toOpaque())")
print("person2 Referenz: \(Unmanaged.passUnretained(person2).toOpaque()) \n")

// Setze ich die Objekte eine Klasse gleich, so sind ihre Referenzen gleich
person1 = person2


// Ausgabe der Referenzadressen
print("Nach Gleichsetzung der Referenzen:")
print("person1 Referenz: \(Unmanaged.passUnretained(person1).toOpaque())")
print("person2 Referenz: \(Unmanaged.passUnretained(person2).toOpaque())")

person1.name
person2.name

// ändere ich eine Propertie eines Objekts, so ändert sie sich auch in dem anderen Objekt, welches ich gleich gesetzt habe.
// Denn beide Objekte besitzen nun die gleiche Referenz auf die Daten im Arbeitsspeicher

person1.setName(name: "Gandalf")

person1.name
person2.name




struct Hund {
    // Properties
    var name: String
    
    // Methods
    mutating func setName(name: String){
        self.name = name
    }
    
}


var hund1 = Hund(name: "Bello")
var hund2 = Hund(name: "Hasso")

hund1.name
hund2.name

// Setze beide Hunde wieder gleich
hund1 = hund2

print(hund1)
print(hund2)

hund1.name
hund2.name

// Da Objekte aus Structs Value-Types sind, ändert sich nur das Objekt, welches geändert wurde.
hund1.setName(name: "Wuffi")

hund1.name
hund2.name

print(hund1)
print(hund2)

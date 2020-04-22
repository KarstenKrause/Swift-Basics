// Swift muss immer wissen um Welchen Typen es sich bei einer Variable oder Konstante handelt

// Wir erstellen als Beispiel eine Superklasse Tier und 3 Weitere Subklassen, die von Tier erben
class Tier {}

class Hamster: Tier {
    func gibLaut() {
        print("Fieps!")
    }
}

class Hund: Tier {
    func gibLaut() {
        print("Wuff")
    }
}

class Katze: Tier {
    func gibLaut() {
        print("Meeooow!")
    }
}

// Nun erstellen wir ein Array aus mehreren Tieren
// Swift sieht, dass alle Klassen im Array von Klasse "Tier" erben.
// Dank "Typeinference" ist unsere Konstante "haustiere" nun ein Array der Superklasse "Tier"
let haustiere = [Hund(), Katze(), Hamster()]

// Wir können jetzt zunächst über jedes Tier-Objekt im Array iterieren
// und versuchen dabei alle Katzen zum laut geben zu bringen
// Um das zu erreichen brauchen wir typecasting, da das Array vom typ Tier ist
for haustier in haustiere {
    
    // hier schauen wir, ob sich ein Element im Array zu einem Katzen-Objekt Casten lässt
    // Wenn ja, dann rufe die Methode auf
    
    // Der Type-Cast wird durch das Schlüsselwort "as?" eingeleitet
    // "as?" gibt ein Optional zurück, der entweder nil ist, oder der umgewandelte Typ
    if let haustier = haustier as? Katze {
        haustier.gibLaut()
    }
}




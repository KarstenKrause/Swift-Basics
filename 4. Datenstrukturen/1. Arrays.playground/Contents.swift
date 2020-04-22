
// MARK: Collection / Datenstruktur = Sammlung von Daten gleichen Typs in einer Struktur


// MARK: - Array = Struktur erstellen

var meineLottoZahlen: [Int] = []
var namensListe: [String] = []
let namensListe2 = ["Frauke", "Reiner", "Sina"]

// Andere Schreibweise für die Erzeugung von Arrays
var spieleSammlung = [String]()

// Elemente hinzufügen
meineLottoZahlen.append(3)  // Index 0
meineLottoZahlen.append(1)  // Index 1
meineLottoZahlen.append(4)  // Index 2
meineLottoZahlen.append(30) // Index 3

namensListe.append("Benedict") // Index 0
namensListe.append("Carola")   // Index 1
namensListe.append("Karsten")  // Index 2

spieleSammlung.append("Mario 3d-Land")
spieleSammlung.append("Xenoblade 2")
spieleSammlung.append("Donkey Kong Countrie")


///// Ausgabe mit Schleifen über den Index //////

for index in 0..<meineLottoZahlen.count{
    print(meineLottoZahlen[index])
}


print("------------------")

//alternative:
for index in 0...meineLottoZahlen.count-1 { // -1, weil sonst die Schleife versucht 5 mal durchzulaufen. Es sind aber nur 4 Elemente im Array(Computer beginnt ab index 0 im Array an zu zählen!)
    print(meineLottoZahlen[index]) // index = 0 -> index = 1 -> index = 2 -> index = 3
}


print("------------------")

//alternative:
for index in 0...meineLottoZahlen.capacity-1 {
    print(meineLottoZahlen[index])
}

print("------------------")

//alternative:


// Kurzschreibweise ohne Index. Elemente direkt durch iterieren

for element in meineLottoZahlen {
    print(element)
}

print("------------------")

for element in namensListe {
    print(element)
}

print("------------------")

for spiel in spieleSammlung {
    print(spiel)
}

print("------------------")

print("Mein Lieblingsspiel ist \(spieleSammlung[1])")




print()
print(meineLottoZahlen.capacity)

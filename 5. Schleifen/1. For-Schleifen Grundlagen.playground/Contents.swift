// Schleifen sind im Allgemeinen ein Konstrukt, um Code mehrfach aufzurufen und auszuführen


for index in 1...5 {
    print("\(index). Mal hallo")
}
print()


for i in 1..<11 {
    print("User \(i) wurde erstellt")
}
print()


// MARK: - Über Arrays iterieren

let array: [String] = ["Hans", "Dieter", "Soest"]

// Iteriere über die Anzahl der Array-Elemente
//print(array.count)
//print(array.capacity)

for i in 0...array.count-1 {
    print(array[i])
}
print()


for i in 0..<array.count {
    print(array[i])
}

print()


// Verkürzte Schreibweise. Hier wird automatisch über die Array-länge iteriert
// Dabei wird jedes Element automatisch bei jedem Durchlauf in die Variable name gespeichert
// Nachteil -> Kein Zugriff mehr auf den Index!


for name in array {
    print(name)
}
print()



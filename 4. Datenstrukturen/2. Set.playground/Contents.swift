
// set = Eine Menge, in der die Elemente der Menge einzigartig sind (können nicht doppelt vorkommen)


// Struktur (Set) erstellen
var zahlenSet: Set<Int> = []

// Element hinzufügen

zahlenSet.insert(6)
zahlenSet.insert(4)
zahlenSet.insert(6) // wird nicht hinzugefügt, da die 6 schon hinzugefügt wurde (ein set kann keine doppelten Elemente beeinhalten)

zahlenSet.count
print(zahlenSet)

// Array vs Set

var stringArray: [String] = [] // andere Schreibweise: Array<String> = []
stringArray.append("Karsten")
stringArray.append("Benedict")
stringArray.append("Karsten")
stringArray.append("Benedict")

print(stringArray)


var stringSet: Set<String> = []
stringSet.insert("Karsten")
stringSet.insert("Benedict")
stringSet.insert("Karsten")
stringSet.insert("Benedict")

print(stringSet)





print("---------------")


// Beispiel
var einschreibeListe: Set<String> = []
einschreibeListe.insert("Jonas")
einschreibeListe.insert("Dieter")
einschreibeListe.insert("Hannah")
print(einschreibeListe)

var anwesenheitsListe: Set<String> = []
anwesenheitsListe.insert("Jonas")
anwesenheitsListe.insert("Hannah")
print(anwesenheitsListe)


var abwesenheitsListe: Set<String> = []

// Die Methode substracing() gibt alle Elemente aus, die nicht in der übergebenen vorhanden sind
abwesenheitsListe = einschreibeListe.subtracting(anwesenheitsListe)
print(abwesenheitsListe)



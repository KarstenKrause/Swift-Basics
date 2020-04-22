import UIKit

// --einfache Dictionaries--
// Wert-Schlüssel-Paar, daher: Jeder Wert hat einen einzigartigen Schlüssel
// Über diesen Schlüssel ist der Wert aufrufbar


// Dictionary erstellen
var test: [Int : String] = [:]

test = [1 : "Benedict", 5 : "Carola", 10 : "Karsten"]
test[1] // Aufruf über den Key


// --Dictionary Defaults--

// Normale Dictionaries liefern nil, wenn man einen im Dictionarie unbekannten key aufruft
test[2] // nil
// Wenn dies nicht gewünscht ist, so während des Aufrufs default-Werte verwenden, die für unbekannte Keys ausgegeben werden:
test[2, default : "unbekannt"]



// Beispiele

// (key, value) sind nur variablen. könnte auch (a,b) benutzen
for (key, value) in test {
    print("Key: \(key), Wert:\(value)") // Dictionaries sind unsortiert
}

print("----------------")

//andere Schreibweise
var test2 = [Int: String]()
test2 = [1 : "Hans", 2 : "Peter"]

for (key,value) in test2 {
    print(key, value)
}



print("----------------")

// noch eine andere Schreibweise
var test3 = Dictionary<Int, String>()
test3 = [1 : "Heidi", 2 : "Krümel"]

for (key,value) in test3 {
    print(key, value)
}




print("----------------")




test[5] // Der Aufruf des Wertes über den Key in einem Dictionarie

// Beispiel

var airports: [String : String] = [:]

airports = ["TXL" : "Berlin-Tegel", "BRE" : "Bremen", "AGB" : "Augsburg"]

// wir wollen nur die Schlüssel ausgeben (geht mit schlüsselwort .keys)
for a in airports.keys{
    print(a)
}

// jetzt wollen wir nur die Werte des Dictionaries ausgeben (geht mit Schlüsselwort .values)
for value in airports.values {
    print(value)
}
airports["TXL"]




var abendessen = [String : Decimal]()
abendessen["Pizza"] = 9.99
abendessen["Eiskrem"] = 3.99
abendessen["Salat"] = 4.99

for (key, value) in abendessen{
    print("\(key): \(value)€")
}


//Wenn ich die Values dieses Dictionaries addieren möchte, muss ich dies mit Optionals über force-unwrapping (auspacken) machen.
var gesamtkosten = abendessen["Pizza"]! + abendessen["Eiskrem"]! + abendessen["Salat"]!

abendessen["Pizza"]






// 1. Regel: Swift muss den Datentyp einer Variable wissen
// 2. Regel: Vor der Benutzung einer Variablen muss dort ein Wert vorhanden sein


// Was ist ein Optional?
// Optionals können kein Wert haben und die Variable ist dann nil.
// Wenn dort doch ein Wert ist, ist es der Wert, der angegeben wurde (in dem Beispiel ein Int)

// Int? = Optional = Ein eigener Datentyp mit 2 Möglichkeiten
// 1. Hat einen Wert.
// 2. hat keinen Wert (nil)






// Wann werden Optionals genutzt? --> Wenn ein Wert einer Variable noch nicht bekannt ist



var wert: Int? = 2
print(wert)
print(wert!) // ! ist unwrapping (optionals "auspacken")

var wert2: Int?
print(wert2)


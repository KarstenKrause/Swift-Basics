
// Optional Binding: if let = optionaler Wert (Binding = Zuweisung, also optionale Zuweisung)

var username: String?

username = "Max Mustermann"



// in der neuen Konstante "name" wird nur der Wert des Optionals "username" zugewiesen, wenn der Optional einen Wert hat.
// Ansonsten findet die Zuweisung nicht statt.
// Wenn die Zuweisung erfolgreich ist, wird automatisch force unwrapped
if let name = username {
    print("Hallo \(name)")
}else {
    print("im optional war kein wert!")
}

// Ohne Zuweisung
var username2: String?

if let name = username2 {   // Es passiert nichts, weil username2 nil ist
    print("Hallo \(name)")
}else{
    print("Es existiert kein userman2")
}


// Optional Binding wird genutzt, damit eine App nicht abstürzt.
// Denn: Sollte im Optional kein Wert vorhanden sein, kann nicht in den if-Block gesprungen werden, da die Konstante nicht zugewiesen wird.








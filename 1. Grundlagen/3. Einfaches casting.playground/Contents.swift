// MARK: - Casting von primitiven Datentypen in Swift

var zahl1 = 3
var zahl2 = 3.4

// var zahl3 = zahl1 + zahl2 --> geht nicht!
var zahl3 = Double(zahl1) + zahl2

var stringZahl = "123"
var zahl4 = Int(stringZahl)
var stringZahl2 = String(zahl4!)



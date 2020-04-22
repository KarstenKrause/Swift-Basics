
// Man kann vor einen Parameternamen ein Label setzen
// Dient dazu, Funktionsaufrufe leserlicher zu gestalten.
// Man weiß schneller, was die Funktion eigentlich macht

func gebeGeld(an name: String, wieviel geldBetrag: Int) {
    print("\(name) hat \(geldBetrag)€ erhalten")
}

gebeGeld(an: "Peter", wieviel: 100)



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////



// Parameterlabels und Namen weglassen

func sum( _ value1: Int, _ value2: Int ) -> Int {
    return value1 + value2
}

let ergebnis = sum(10, 12)
print(ergebnis)

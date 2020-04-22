// Funktionen sind Unterprogramme
// Sie dienen dazu Code wiederverwendbar zusammenzufassen und bei Bedarf aufzurufen


// Funktion ohne Parameter (in java void)
func sayHello(){
    print("Hello")
}

// funktion mit Prarameter
func addition1(zahl1: Double, zahl2: Double) {
    let summe = zahl1 + zahl2
    print("\(zahl1) + \(zahl2) = \(summe)")
}


// Funktion mit Rückgabewert
func addition2(zahl1: Double, zahl2: Double) -> Double {
    return zahl1 + zahl2
}

// Funktionen mit Default-Paramtern
func colaBestellen (name: String, durstig: Bool = false) {
    if durstig {
        print("\(name) bestellt eine Cola")
    } else {
        print("\(name) ist nicht durstig und bestellt nichts")
    }
}




sayHello()
addition1(zahl1: 2.2, zahl2: 2.8)
addition2(zahl1: 3, zahl2: 2)

colaBestellen(name: "Dieter")
colaBestellen(name: "Gandalf", durstig: true)



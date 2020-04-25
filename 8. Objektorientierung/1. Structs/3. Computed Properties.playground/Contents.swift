// Computed Properties sind Properties, die einen Codeblock ausführen um ihren Wert zu bestimmen.
// Dazu benötigt dieser Codeblock einen Return-Wert vom Typ der computed-property


// MARK: - Beispiel 1
struct Smartphone {
    var name: String
    var kosten: Double
    var kostenStatus: String {
        if kosten > 1000 {
            return "\(kosten)€ für ein \(name) ist sehr viel Geld für ein Smartphone! Überlege bitte genau!"
        } else {
            return "\(kosten)€ für ein \(name) ist ein akzeptabler Preis für ein Smartphone!"
        }
    }
}




let iPhoneX = Smartphone(name: "iPhoneX", kosten: 1200.0)
iPhoneX.kostenStatus

let iPhoneSE = Smartphone(name: "iPhoneSE", kosten: 450.0)
iPhoneSE.kostenStatus


// MARK: - Beispiel 2
struct Person {
    let vorname: String
    let nachname: String
    
    // Man kann auch direkt die Propertie über einen Getter setzen!
    var name: String {
        get { return "\(vorname) \(nachname)" }
    }
}

let person = Person(vorname: "Karsten", nachname: "Krause")
print(person.name)

// Durch Extensions lassen sich bereits vorhandene Typen um weitere Methoden erweitern

class Person {
    var name: String
    var alter: Int
    
    init(name: String, alter: Int) {
        self.name = name
        self.alter = alter
    }
    
    func laufen() {
        print("\(self.name) läuft")
    }
}



// MARK: - Methoden in Extensions
extension Person {
    func begrueßt() {
        print("\(self.name) sagt: hallo!")
    }
}


// MARK: - Stored-Properties in Extensions
// Extensions können KEINE normalen Properties zusätzlich speichern!
extension Person {
    
    var alterGerade: Bool {
        return self.alter % 2 == 0
    }
}


let hans = Person(name: "Hans", alter: 35)

// MARK: - Aufruf der Extensions
hans.begrueßt()
hans.alterGerade

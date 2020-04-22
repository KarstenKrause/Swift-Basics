// Protocol-Extensions können genutzt werden, um Default-Implementierungen von Methoden für Protokolle zu erzeugen

// Protokoll-orientiertes Programmieren heißt so viel wie: Baue deinen Code um die Protokolle und Protocol-Extensions herum



protocol Identifizierbar {
    var id: String { get set }
    func identifizieren()
}


extension Identifizierbar {
    func identifizieren() {
        print("Meine ID ist \(id)")
    }
}



struct User: Identifizierbar {
    var id: String
}


let roxxor = User(id: "12345")
roxxor.identifizieren()

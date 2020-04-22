// Lazy-Properties werden erst dann erzeugt, wenn auf ihnen zugegriffen wird.
// Lazy-Properties sind also nur aus Performancegründen von Nöten

// Beispiel Bewerber. Ein Riesiger Familienstammbaum wird vermutlich nur für wenige Berufsfelder interessant sein.
// Wenn sich eine Firma für einen Bewerber mit Stammbaum interessiert (z.B in einer App), könnte dies in der App intern so aussehen. Für andere Firmen, welche nicht an den Stammbaum interessiert sind, wäre es unnötig die riesige Datenmenge zu laden


struct FamilienStammbaum{
    func printStammbaum(){
        print("Hier ist die ganze Sippschaft der letzten 10000 Jahren aufgelistet....")
    }
}


struct Bewerber {
    var name: String
    let gebJahr = 1988
    lazy var stammbaum = FamilienStammbaum()
    init(name: String) {
        self.name = name
    }
}

var  bewerber1 = Bewerber(name: "Hansi")

bewerber1.stammbaum.printStammbaum()

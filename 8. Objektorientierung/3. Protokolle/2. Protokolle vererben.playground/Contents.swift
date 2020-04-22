// Ein Protokoll mehrere Protokolle erben
// Klassen und Structs können dagegen nur von einer Anderen Klasse/Struct erben

protocol Bezahlbar {
    func berechneVerguetung() -> Double
}

protocol FortbildungsBeduerftig{
    func studiert()
}

protocol HatUrlaub {
    func nimmtUrlaub(tage: Int)
}



// Das Protokoll Arbeitnehmer erbt von obigen drei Protokollen.
// Weil die drei anderen Protokolle Methoden definiert haben, braucht das Sub-Protokoll nicht zwangsläufig weitere Methoden
protocol Arbeitnehmer: Bezahlbar,FortbildungsBeduerftig, HatUrlaub {}



class Mensch: Arbeitnehmer {
    func berechneVerguetung() -> Double {
        <#code#>
    }
    
    func studiert() {
        <#code#>
    }
    
    func nimmtUrlaub(tage: Int) {
        <#code#>
    }
    
    
}

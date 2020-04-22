// Man kann den Swift-Compiler mitteilen, dass man spezifische Properties und Methoden über alle Intanzen teilen will

// Das passiert über das Schlüsselwort static.
// Deklariert man also eine Property oder eine Methode mit Static in einem Struct,
// so kann ich diese mittels dem Struct-Namen aufrufen. Z.B

struct Vorlesungsraum {
    static let sitzPlaetze: Int = 250
    let raumNr: Int
    
    init(raumNr: Int){
        self.raumNr = raumNr
    }
    
}

Vorlesungsraum.sitzPlaetze








struct Student {
    let name: String
    let matrNr: Int
}

struct Programmiermodul {
    
    // MARK: - Static Properties
    static var freiePlaetze = 30
    static var kspCounter = 0
    static var pisCounter = 0
    static var oopCounter = 0
    
    
    // MARK: - Stored Properties
    var unterModul: String
    var studentenListe: [Student]
    
    // MARK: - Initializer
    init(){
        self.studentenListe = []
        self.unterModul = ""
    }
    
    
    // MARK: - Static Methods
    static func zeigeModulbeschreibung(){
        print("--- Modulbeschreibung ---")
        print("Das Programmiermodul wird aufgeteilt in 3 Untermodulen")
        print("Diese wären: Objektorientierte Programmierung(OOP), Programmieren interaktiver Systeme (KSP) und Konzepte Systemnaher Programmierung(KSP)")
        print("Studenten können entscheiden, welches Modul zuerst stattfinden soll")
        print("Da nur ein Dozent für alle 3 Untermodule verantwortlich ist, wird das Modul, für das die meisten Studenten sich eingetragen haben, stattfinden")
    }
    
    static func unterModulBekanntgabe(){
        if Programmiermodul.oopCounter > Programmiermodul.pisCounter && Programmiermodul.oopCounter > Programmiermodul.kspCounter {
            print("Die meisten haben für das Untermodul OOP abgestimmt")
        } else if Programmiermodul.pisCounter > Programmiermodul.oopCounter && Programmiermodul.pisCounter > Programmiermodul.kspCounter {
            print("Die meisten haben für das Untermodul KSP abgestimmt")
        } else if Programmiermodul.pisCounter == Programmiermodul.oopCounter || Programmiermodul.pisCounter == Programmiermodul.kspCounter || Programmiermodul.oopCounter == Programmiermodul.kspCounter {
            print("2 Untermodule haben leider die gleiche Anzahl an Stimmen erhalten. Es muss neu gewählt werden!")
        } else {
            ("Die meisten haben für das Untermodul PIS abgestimmt")
        }
    }
    
    
    
    // MARK: - Methods
    mutating func studentEinschreiben(student: Student, unterModul: String){
        self.studentenListe.append(student)
        self.unterModul = unterModul
        
        switch unterModul {
        case "PIS":
            
            // Wenn ich eine static Property innerhalb des Structs verändern will, muss ich diese auch über den Struct-Namen aufrufen
            Programmiermodul.pisCounter += 1
        case "KSP":
            Programmiermodul.kspCounter += 1
        case "OOP":
            Programmiermodul.oopCounter += 1
        default:
            print("Error: Ein angegebenes Untermodul steht nicht zur Auswahl!")
        }
        
        
        Programmiermodul.freiePlaetze -= 1
    }
    
    func getStudentenInModul(){
        print("Derzeit eingeschriebene Studenten:\n")
        
        for student in self.studentenListe {
            print("Name: \(student.name)")
            print("Martrikel Nummer:\(student.matrNr)")
            print("Abgestimmt für: \(self.unterModul) \n")
        }
        
        print("Es sind noch \(Programmiermodul.freiePlaetze) Plätze frei!\n")
    }
    
    
    
}

var programmieren = Programmiermodul()



let student1 = Student(name: "Hans", matrNr: 1234)
let student2 = Student(name: "Peter", matrNr: 2234)
let student3 = Student(name: "Yoda", matrNr: 5677)
let student4 = Student(name: "Phillip", matrNr: 4564)
let student5 = Student(name: "Gandalf", matrNr: 2344)

programmieren.studentEinschreiben(student: student1, unterModul: "OOP")
programmieren.studentEinschreiben(student: student2, unterModul: "KSP")
programmieren.studentEinschreiben(student: student3, unterModul: "OOP")
programmieren.studentEinschreiben(student: student4, unterModul: "OOP")
programmieren.studentEinschreiben(student: student5, unterModul: "PIS")

Programmiermodul.freiePlaetze

programmieren.getStudentenInModul()

Programmiermodul.unterModulBekanntgabe()
Programmiermodul.kspCounter
Programmiermodul.pisCounter
Programmiermodul.oopCounter

Programmiermodul.zeigeModulbeschreibung()





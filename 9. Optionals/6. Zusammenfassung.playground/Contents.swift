import UIKit




// Eine Variable muss in Swift einen Wert haben. Daher geht das reine deklarieren von Variablen nicht (z.B wie in Java) --> var zahl : Int

/*
   // Funktioniert nicht, da man in Swift eine Variable direkt initialisieren muss!
   var zahl : Int
   zahl = 2
 */


// Wenn ich eine Variable als Optional deklariere funktioniert es!
// Denn die Variable zahl ist jetzt vom Typ Optional
// Ein Optional kann zwei Zustände haben: Einen Wert vom angegebenen Datentyp oder nil.

// Optional -> 2 Möglichkeiten: 1. hat einen Wert und wenn ja, dann von einem Int
//                              2. hat keinen Wert (nil wird zurück geliefert)


var zahl: Int?
zahl = 3
print(zahl)

// Optional -> 2 Möglichkeiten: 1. hat einen Wert und wenn ja, dann von einem String
//                              2. hat keinen Wert (nil nil wird zurück geliefert)
var playerName: String?
playerName = "Karsten"
print(playerName) // Der "Karton" (der Optional) wurde noch nicht ausgepackt!







// Es gibt mehrere Möglichkeiten Optionals auszupacken!

// 1. forced unwrapping (!) - Mir total egal, ob was drin ist! Packe es aus!
// 2. optional binding (optionale Zuweisung) - if let Wert vorhanden else ...
// 3. guard statement  - guard Wert vorhanden else ...
// 4. implicity unwrapped - bedingungslos auspacken
var eMail: String?
var eMail2: String?
var eMail3: String?
var eMail4: String?
eMail = "karsten.krause@web.de"








// 1. forced unwrapping
// Falls kein Wert vorhanden, würde das Programm abstürzen. Also eine gefährliche Möglichkeit ein optional auszupacken!
print(eMail!)








// 2. optional binding
// Der große Vorteil ist, dass hierbei das Programm nicht abstürzen kann!
//eMail2 = "benedict.urban@web.de"

if let mail = eMail2 {
    print("Cool, im Optional lag eine Mail drin: \(mail)") // wenn der optional einen Wert besitzt führe diesen Block aus
} else {
    print("Schade der Optional war leider leer :-(") // wenn der optional leer ist, führe diese Block aus
}

// Andere Möglichkeit für Optional-Binding
if eMail2 != nil {
     // Force-unwrapping sicher nutzbar, weil nur in diesen Block gesprungen wird, wenn  das optional nicht nil ist!
    print("Cool, im Optional lag eine Mail drin: \(eMail2!)")
} else {
    print("bitte eMail eingeben!")
}








// 3. guard statement
// Macht genau das Selbe, wie ein Optional-Binding
// Guards müssen innerhalb von Funktionen implementiert werden.
// Der Vorteil gegenüber Optional-Binding ist, dass ich die Variable nun außerhalb des Guard-Statements nutzen kann.

eMail3 = "carola@web.de"


func testMailInput() {
    guard let mail3 = eMail3 else {
        print("Kein Wert im Optional vorhanden!")
        
        // breche umgehend an dieser Stelle das Programm ab, wenn kein Wert im Optional vorhanden ist.
        // Ohne dem würde nachkommender Code ausgeführt werden
        return
    }
    
    print(mail3)
}

testMailInput()






// 4. implicity unwrapped
// Manchmal ist es klar, dass ein Optional nach der einmaligen Zuweisung immer diesen Wert haben wird
// Z.B oft zu sehen beim Outlet erstellen
var nameIstSicherZu100ProzentVorhanden: UILabel!










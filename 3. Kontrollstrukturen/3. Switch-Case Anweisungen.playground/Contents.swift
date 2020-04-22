// Übersichtlicher, als If-Anweisungen, wenn viele Fälle vorhaneden sind (ab 5 Fällen Switch-Case verwenden)
// Es muss immer eine Default-Fall vorhanden sein in Swift!


// einfache Switch-Case Anweisung
var highscore = 300

switch highscore {
case 100:
    print("100 Punkte erreicht")
case 200:
    // durch fallthrough wird ein Fall übersprungen
    fallthrough
case 300:
    print("300 Punkte erreicht")
case 400:
    print("400 Punkte erreicht")
default:
    print("Zu wenig punkte")
}


print("")

// Switch-Case mit angereihten Fällen
var highscore2 = 600

switch highscore2 {
case 100, 200, 300, 400:
    print("100 - 400 Punkte erreicht")
case 500, 600:
    print("500 -  600 Punkte erreicht")
case 700:
    print("700 Punkte erreicht")
case 800:
    print("800 Punkte erreicht")
default:
    print("Zu wenig punkte")
}


print("")


// Switch-Case mit einen Wertebereich als Fall
var highscore3 = 120

switch highscore3 {
case 100...400:
    print("100 Punkte erreicht")
case 500...600:
    print("200 Punkte erreicht")
case 700:
    print("300 Punkte erreicht")
case 800:
    print("400 Punkte erreicht")
default:
    print("Zu wenig punkte")
}

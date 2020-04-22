// Manchmal können in Funktionen Fehler auftreten.
// Diese müssen aufgefangen werden.
// Dazu müssen die Funktionen, die Fehler verursachen können, diese auch werfen

//Fehlertyp erzeugen
enum passwortFehler: Error {
    case unsicheresPasswort
}

func pruefePasswort(passwort: String) throws -> Bool {
    if passwort == "admin" {
        throw passwortFehler.unsicheresPasswort
    } else {
        return true
    }
}




// Fehler auffangen
do {
    try pruefePasswort(passwort: "admin")
} catch  {
    print("Das gewählte Passwort ist nicht sicher genug!")
}


enum PasswordError: Error {
    case obvious
}


// MARK: - Errorhandling ohne Optionals

// Diese Funktion wirft einen Fehler im Fall, wenn das Passwort "password" lautet
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}



// Bisher: Fehler auffangen mit do, try, catch (wie gelernt)
do {
    try checkPassword("password")
    print("Das Passwort ist sicher!")
} catch {
    print("Du kannst dieses Passwort nicht nutzen.")
}



// MARK: - Errorhandling ohne Optionals

// Erste Alternative:  try?
// Durch "try?" wird der Rückgabetyp der Funktion automatisch vom typ Optional (in dem Fall "Bool?")
// Wenn die Funktion einen Error wirft, wird sie automatisch nil zurück liefern
if let result = try? checkPassword("password") {
    print("Erebnis des Rückgabewertes von checkPassword: \(result)")
} else {
    print("Das Passwort ist zu schlecht")
}


// Wenn ich genau weiß, dass die Funktion keinen Error wirft, kann ich den Rückgabe-optional der
// Funktion mittels try! auch implizit auspacken (unwrappen)
try! checkPassword("sekrit")
print("Passwort ist OK!")

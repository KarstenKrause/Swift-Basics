// Closures in Parameterlisten von Funktionen können ebenfalls Parameterlisten besitzen
// Mit dem Unterschied, dass in die Parameterliste des Closures nur den Typ angegeben wird
// Erst beim Aufruf der Funktion bekommt der Parameter des Closures einen Namen


let username = "Dieter"

func login(action: (String) -> Void) {
    print("Athentifizierung...")
    
    // Aufruf des Parameters vom Typ Closure
    action(username)
}

// Funktionsaufruf
// Der Parameter des Closures vom Typ String bekommt einen beliebigen Namen. (Man kann ihn sich aussuchen, wie man will!)

// Beispiel "trailing-closure" Syntax. Hier wird der Closure direkt in die Funktion implementiert
login { (user) in
    print("\(user) hat sich eingeloggt\n")
}




// Beispiel ohne "trailing-closure" Syntax. Hier wird der closure vorher als Variable gespeichert
let userClosure = { (user: String) in
    print("\(user) hat sich nochmal eingeloggt\n")
}

login(action: userClosure)


// Beispiel ohne "trailing-closure" Syntax. Hier wird der closure direkt im Funktionsaufruf implementiert
login(action: {
    (user: String) in
    print("\(user) hat sich eingeloggt. Hat der nichts besseres zu tun? o.O \n")
})



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////// Closures mit Parameter UND Rückgabetyp als Parameter einer Funktion ////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

let nachricht = "Hallo, wie geht es dir?"
func nachrichtSenden(user: String, message: (String) -> String) {
    
    let gesendeteNachricht = user + ": " + message(nachricht)
    print(gesendeteNachricht)
}



nachrichtSenden(user: username) { (message) -> String in
    return "Hallo ihr lieben!"
}





// alternativ mit direkter Übergabe eines Closures mit gleichen Spezifikationen (Rückgabetyp und Parametertyp!)
let verfassteNachricht = { (message: String) -> String in
    return "Nochmal hallo!"
}

nachrichtSenden(user: username, message: verfassteNachricht)




let username = "Ingo"

func login(user: (String) -> String) {
    print("Athentifizierung...")
    let aktion = user(username)
    print(aktion)
}





// 1. Schreibweise: Alle Parameter Informationen, welche die Funktion fordert, wird in diesem Funktionsaufruf angegeben
//    Hier wird die "trailing-Closure"-Syntax verwendet (Nur ein Closure in der Funktion als Parameter!)
login { (user: String) -> String in
    return "\(user) hat sich eingeloggt \n"
}

// Alternativ ohne Trailing-Closure-Syntax:
login(){(user: String) -> String in
    return "\(user) hat sich nochmal eingeloggt \n"
}





// 2. Schreibweise: Da Swift Type-Inference unterstützt, kennt der Swift-Compiler bereits den Typ String des Closure-Parameters aus der Funktion "login"
//    ( Diese Schreibweise wird auch von der Autocompletion von X-Code verwendet)
login { (user) -> String in
    return "\(user) hat sich zum zweiten Mal eingeloggt \n"
}




// 3. Schreibweise: Die Klammern der Parameter können weg gelassen werden. Der Rest ist wie bei Schreibweise 2
login { user -> String in
    return "\(user) hat sich zum dritten Mal eingeloggt \n"
}




// 4. Schreibweise: Der Swift-Compiler kennt auch den Rückgabetypen des Closures aus der Funktion "login".
//    Daher muss man den Rückgabetypen den Closures nicht mit angeben
login { user in
    return "\(user) hat sich zum vierten Mal eingeloggt \n"
}




// 5. Schreibweise: Da der Swift-Compiler alle Angaben vom Parameter-Closure der Funktion "Login" kennt, braucht man nichts weiter angeben.
//    Allerdings muss der Swift-Compiler wissen, auf welchen Parameter des Closures zugegriffen werden soll, da Closures auch mehrere Parameter zulassen kann.
//    Intern werden die Closures durchnummeriert, beginnend bei 0.
//    Der Zugriff erfolt über das $-Zeichen.

//    Diese Schreibweise ist sehr kurz, aber leider auch nicht gut lesbar (gerade in komplexeren Apps/Programmen)
//    Daher wird diese Schreibweise eher selten verwendet.

login {
    return "\($0) hat sich zum fünften Mal eingeloggt \n"
}






// Beispiel mit mehreren Parametern im Closure

let email = "user@gmail.com"
let username2 = "Benno"
let password = 1234


func login(user: (String, String, Int) -> String) {
    print("Athentifizierung...")
    let aktion = user(email, username2, password)
    print(aktion)
}



// Schreibweise mit Auto-Completion und frei gewählte namen für die Closure-Parameter
login { (email, username, userPassword) -> String in
    var output = ""
    if password == userPassword {
        output =  "Login erfolgreich \n\n"
        output += "username: \(username) \n"
        output += "e-mail: \(email) \n"
    }else {
        output =  "Login fehlgeschlagen!"
    }
    
    return output
}




// Schreibweise, ohne Angabe von Closure-Parametern
print("")
login {
    var output = ""
    if password == $2 {
        output =  "Login erfolgreich \n\n"
        output += "username: \($1) \n"
        output += "e-mail: \($0) \n"
    }else {
        output =  "Login fehlgeschlagen!"
    }
    
    return output
}


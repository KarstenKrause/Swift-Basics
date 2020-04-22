

var username: String? // String? = Optional

// 1. force unwrap (Es wird gezwungen das Optional auszupacken) -> Packe den Wert sofort aus!
// print(username!) // Das "!" ist das force unwrap


// Man muss überprüfen, ob ein Wert vorhanden ist!


// MARK: sichere Variante mit force-Unwrapping
// Hier wird der optional einfach nur mit einer if abfrage auf nil überprüft
// Wenn != nil, dann force-unwrappe mir den optional

if username != nil {
    print(username!)
}else{
    print("Bitte Namen eingeben")
}



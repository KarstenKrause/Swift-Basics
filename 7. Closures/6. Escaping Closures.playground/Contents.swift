

// In der Praxis sehr oft angewandt: Completionhandler
// Completionhandler -> Do Stuff when things have been done (mache irgendwas, wenn andere Sachen fertig sind)

func ladeUser(userID: String, completion: () -> () ){
    print("Lade User mit \(userID) ID")
    print("Fertig geladen")
    completion()
}

ladeUser(userID: "1234") {
    print("User fertig geladen. Fahre mit diesem Code fort")
}


func loadPost(completion: () -> Void ) {
    print("Lade Post")
    completion()
}

loadPost {
    print("Post anzeigen")
}








// Escaping Closures werden für asynchrone Funktionsaufrufe mit Closures als Parameter gebraucht (Multithreading)
// Es kann sein, dass ein Thread unterbicht und ein Closure einer Funktion nicht ausgeführt wurde.
// Daher können diese Closures durch das Schlüsselwort "escaping" außerhalb der Methode zwischengespeichert werden und beim erwachen des unterbrochenen Threads wieder ausgeführt werden.

// Escaping Closures <--- CALLBACKS!!!!!
// Wenn in dem Beispiel der geladene Post aus (z.B) einer Datenbank an die "Außenwelt" zurück geben kann


func loadPost2(post: String, completion: @escaping(String) -> Void ) {
    print("Lade Post")
    completion(post)
}


let einPost = "Hallo"
loadPost2(post: einPost) { (erhaltenerPost) in
    print("Erhalte das Post-objekt: \(erhaltenerPost)")
}



func loadPost3(post: String, completion: (String) -> Void){
    print("Lade noch einen Post")
    completion(post)
}

loadPost3(post: "nochmal Hallo") { (erhaltenerPost2) in
    print("Erhalte nochmal einen Post: \(erhaltenerPost2)")
}





// Zwischenspeicher von Callbacks
var completionHandlers: [() -> Void] = []

func someFunctionsWithEscapingClosure(completionHandler: @escaping () -> Void) {
    print("Speichere Closure in array:")
    completionHandlers.append(completionHandler)
}

someFunctionsWithEscapingClosure {
    print("erster ComplitionHandler-Code")
}

someFunctionsWithEscapingClosure {
    print("zweiter ComplitionHandler-Code")
}

someFunctionsWithEscapingClosure {
    print("dritter ComplitionHandler-Code")
}

someFunctionsWithEscapingClosure {
    print("vierter ComplitionHandler-Code")
}

completionHandlers[0]()
completionHandlers[1]()
completionHandlers[2]()
completionHandlers[3]()

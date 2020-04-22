
/////////////////////////////////////////////////////////////////////
/////////////////// /Closure als Parameter ///////////
/////////////////////////////////////////////////////////////////////

// Ein Closure ist ein eigenständiger Datentyp und kann daher als Parameter in Funktionen übergeben werden.
// Um einen Parameter als Closure zu deklarieren gibt man folgendes an:  () -> void
// Das bedeutet: Datentyp Closure, ohne parameter im Closure und ohne Rückgabewert. Man könnte auch () -> () schreiben


func travel(aktion: () -> Void) {
    print("Ich möchte reisen.")
    
    // Aufruf des Closure-Parameters
    aktion()
    print("Die beste Wahl, um mein Ziel zu erreichen \n")
}

// Closure für die Übergabe an die Funktion "travel"
let cardriving = {
    print("Ich fahre mit dem Auto")
}


// Übergabe eines vorher initialisierten Closures in die Funktion
travel(aktion: cardriving)




/////////////////////////////////////////////////////////////////////
//////////////////// Trailing Closure Syntax //////////
/////////////////////////////////////////////////////////////////////


// Einwurf: Man muss nicht einen zuvor initialisierten Closure direkt übergeben, man kann ein Closure auch während des Aufrufs der Funktion in die Parameterliste für einen Closure schreiben


// Weil die Funktion travel nur ein Parameter vom Typ Closure enthält, kann die funktion wie folgt aufgerufen werden:
travel {
    print("Ich fahre mit dem Motorrad")
}

// Voll ausgeschieben, ohne trailing-closure Syntax mit Implementierung des Closures in der Parameterliste
travel(aktion: {
    print("Ich fahre Panzer")
})



// Trailing Closure Syntax kann nur an der Stelle verwendet werden, an der der letzte Parameter vom Typ Closure ist

func travelWithFriend(friend: String, aktion: () -> Void){
    print("Ich möchte zusammen mit meinem Kumpel \(friend) reisen ")
    aktion()
    print("Wir reisen am liebsten damit! \n")
}


// In dem Beispiel ist der erste Parameter vom typ String und muss entsprechend beim Funktionsaufruf übergeben werden
// Da der letzt Parameter vom Typ Closure ist, kann die Trailing Syntax verwendet werden
print("")
travelWithFriend(friend: "Hans") {
    print("Und zwar mit einem Schiff")
}

// Voll ausgeschrieben, ohne Trailing Closuere Syntax
travelWithFriend(friend: "Dieter", aktion: {
    print("Mit dem Dreirad")
})



// Beispiel mit 2 Closures als Parameter
func test(aktion1: () -> Void, aktion2: () -> Void){
    aktion1()
    aktion2()
}


print("")

let aktion1 = {
    print("aktion1 führt irgend ein Programm aus")
}

// Hier muss der Erste Parameter einen Closure übergeben werden.
// Da der letzte Parameter ein Closure ist, kann für diesen Parameter wieder die Trailing Closure Syntax verwendet werden
test(aktion1: aktion1) {
    print("aktion2 führt auch irgend ein Programm aus \n")
}



test(aktion1: {
    print("Noch ein Programm von aktion1")
}) { // hier trailing-closure Syntax
    print("Noch ein Programm von aktion2 \n")
}

// voll ausgeschrieben:
test(aktion1: {
    print("Aktion 1 macht totalen Blödsinn")
}, aktion2: {
    print("Aktion 2 macht viel mehr Mist")
})






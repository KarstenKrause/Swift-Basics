// Funktionen können andere Funktionen in Form von Closures zurück geben
// Dies wird eher selten verwendet, könnte aber das ein oder andere Problem lösen


func erstelleReiseMethode(distanz: Int) -> (String) -> Void {
    if distanz < 5 {
        
        // Closure, der zurück gegeben wird
        return {
          print("Das geht schnell, ich laufe schnell zum \($0)")
        }
        
        
    } else {
        
        // Closure, der zurück gegeben wird
        return {
            print("Das ist sehr weit. Ich fahre lieber mit dem Auto nach \($0)")
        }
        
        
    }
}


// Da die Funktion einen Closure zurück liefert, muss diese Funktion einer Variable oder Konstante zugewiesen werden, welche dank Type Enference automatisch vom Typ Closure ist

// im zweiten Schritt muss dem Rückgabe-Closure über die fertig initialisierte Variable einen Wert übergeben werden
let reiseMethodeAldi = erstelleReiseMethode(distanz: 3)
reiseMethodeAldi("Aldi")

let reiseMethodeItalien = erstelleReiseMethode(distanz: 1000)
reiseMethodeItalien("Italien")

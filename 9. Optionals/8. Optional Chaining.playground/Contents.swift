// Swift bietet Abkürzungen, wenn Optionals genutzt werden.
// Wenn ich z.B auf folgendes zugreifen will -> a.b.c und b ist optional, kann ich hinter b ein Fragezeichen setzen.

// Wenn jetzt ein Wert in b vorhanden ist, wird auch der Rest der Zugriffe statt finden.
// Ansonsten liefert der Compiler nil.


// Beispiele:

let names = ["Karsten", "Carola", "Benedict"]
//let names: [String] = []

let familienmitglied = names.first?.uppercased()
print(familienmitglied)
// "Wäre names leer, würde einfach nil ausgegeben (versuche das mal)





// Beispiel mit einer Funktion mit Rückgabetyp Optional
func albumReleased(in year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let album = albumReleased(in: 2006)?.uppercased()



// Beispiel mit Optional Array
let captains: [String]? = ["Archer", "Lorca", "Sisko"]
let lengthOfBestCaptain = captains?.last?.count



// Beispiel mit Dictionaries
let capitals = ["Scotland": "Edinburgh", "Wales": "Cardiff"]
let scottishCapital = capitals["Scotland"]?.uppercased()

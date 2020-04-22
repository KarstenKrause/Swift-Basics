// MARK: - String interpolation
// Konstante und Variablen anderen Typs in einen String "einbetten"
let kontostand: Double = 2500.55

print("Mein Kontostand beträgt \(kontostand)€")
print()


// MARK: - Strings konkatenieren

let vorname = "Karsten"
let nachname = "Krause"

print("Hallo! Mein Name ist " + vorname + " " + nachname )
print()



// MARK: - Multyline Strings

var text = """
           Dies ist ein Multiline String.
           Er erkennt automatisch alle Zeilenumbrüche
           Das macht Ausgaben sehr viel leichter!
           """


print(text)
print()


// MARK: - Format Strings

print("Hallo!\nMir gehts heute sehr gut!\n")  // "\n" für Zeilenumbruch

print("Konstostand: \t 150€ ") // "\t" für Tabulator





// Implicity unwrapped (bedingungsloses Auspacken)
// Manchmal ist klar, dass ein Optional nach der einmaligen Zuweisung immer diesen Wert haben wird

var anzahlDerTeilnehmer: Int!  // hier wird durch das "!" implizit unwrapped

if anzahlDerTeilnehmer != nil {
    print(anzahlDerTeilnehmer!)
}


//Beispiel
var str1 = "hallo"

var str2: String? = "selnflksfd"

str1 = str2! // implizit unwarapped. Ohne dem, gäbe es eine Fehlermeldung

print(str1)

var username: String?
print(username) //funktioniert (ist nil)
// print(username!) //funktioniert nicht, weil nichts ausgepackt werden kann, da das optional nil ist


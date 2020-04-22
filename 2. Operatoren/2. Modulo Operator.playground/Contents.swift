
// In Swift heißt der Modulo-Operator der "Remainder" % (funktioniert nur mit Integer)

let a = 11
let b = 6

// Wie oft passt b in a hinein? Remainder gibt den Rest wieder
let rest = a % b
let rest2 = b % a



let userEingabe = 11

if userEingabe % 2 == 0 {
    print("gerade")
} else {
    print("ungerade")
}


// 123€ ist in der Kasse und 5 Personen erhalten das Geld. Wie viel bleibt übrig?
var restGeld = 123 % 5


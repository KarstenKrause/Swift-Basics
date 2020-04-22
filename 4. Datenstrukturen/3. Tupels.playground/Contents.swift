
// Tupels -> Fasst mehrere unterschiedliche Typen zu einem Typ zusammen
// Aufruf der Tupel-Elemente über den Objekt-Aufruf-Operator '.' mit Anhang des Index oder einem im Tupel vordefinierten Bezeichner

// Regeln:
// 1. Man kann keine Elemente innerhalb eines Tupels hinzufügen oder löschen. Man kann die Elemente aber nachträglich ändern
// 2. Man kann die Typen der Tupel-Elemente nicht ändern.
// 3. Greift auf die Tupelelemente über ihren Bezeichner, oder über ihre Position zu
// 4. Durch variable Tupels sind Tupel-Elemente änderbar

let tupel1 = (200,300,400)
// Zugriff über Position
tupel1.1



let tupel2 = (a:200, b:300, c:400)
// Zugriff über Elementen-Bezeichner
tupel2.b


var spaceship = (name:"Spaceship", damage:100, live:200)
spaceship.name
spaceship.live -= 25
print(spaceship)

// Durch variable Tupels sind Tupel-Elemente änderbar
spaceship.name = "Mothership"
print(spaceship)








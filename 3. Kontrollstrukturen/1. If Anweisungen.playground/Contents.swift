// If Statements bestehen aus einer Bedingung, die entweder true oder false sein können.
// Ist diese Bedingung true, soll Code ausgeführt werden, oder eben nicht

// Was ist eine Bedingung?
// Bedingungen setzen sich z.B aus Vergleichs-Operatoren zusammen
// Sie vergleichen 2 Werte und liefern entweder true oder false
let bedingung1: Bool = (2 < 3)
let bedingung2: Bool = (2 > 3)
let bedingung3: Bool = (3 == 3)
let bedingung4: Bool = (3 == 4)
let Bedingung5: Bool = (3 <= 4)
let Bedingung6: Bool = (3 >= 4)
let bedingung7: Bool = (3 != 4)


// MARK: - Einarmige If-Statements
if 2 < 3 {
    print("Bedinungung war true! Hier kann viel Code folgen")
}

// MARK: - if-else-Statements
if 2 > 3 {
    print("Bedinungung war true! Hier kann viel Code folgen")
} else {
    print("Führe alternativen Code aus, sollte die Bedingung fehlschlagen")
}


// logisches UND --> Beide Bedingungen, die mit dem logischen UND verknüpft sind müssen true sein, damit die Gesamtbedingung true ist!
if (2 < 3) && (10 == 9) {
    print("Bedinungung war true! Hier kann viel Code folgen")
} else {
    print("Führe alternativen Code aus, sollte die Bedingung fehlschlagen")
}


// logisches ODER --> Eine Bedingung, der mit dem logischen ODER verknüpft ist muss true sein, damit die Gesamtbedingung true ist!
if (2 < 3) || (10 == 9) {
    print("Bedinungung war true! Hier kann viel Code folgen")
} else {
    print("Führe alternativen Code aus, sollte die Bedingung fehlschlagen")
}


// MARK: - Verschachtelte If-Statements

if 10 < 12 {
    if 4 != 4 {
        print("Inneres If-Statement")
    } else {
        print("else-Block von innerem if-Statement")
    }
    print("Äußeres If-Statement")
} else {
    print("else-Block von äußerem if-Statement")
}

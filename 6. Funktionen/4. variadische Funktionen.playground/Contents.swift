// Variadische Funktionen besitzen eine Parameterliste, die eine beliebe Anzahl von Parametern eines Typs aufnehmen

func numbersList(numbers: Int...) {
    for number in numbers {
        print(number)
    }
}


numbersList(numbers: 1, 2, 3, 4, 5, 6, 999999)


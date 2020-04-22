/*
 * stride Variante erlaubt es in welchen Erhöhungen die Schleife läuft (schreitet)
 * from (Startpunkt) to(zu welchem Wert) by(Erhöhung der Zählvariable. Daher wird nun auch eine Zählvariable benötigt)
 *
 * In der anderen Methode strite wird durch "through" der Entwert mit einbegriffen
 */
for zähler in stride(from: 0, to: 100, by: 20){
    print(zähler)
}

for zähler in stride(from: 0, through: 100, by: 20){
    print(zähler)
}






let array = [2,3,2,4,2,7,7,5,3,9]

/* in "eintrag" werden die Elemente des Arrays geschrieben
 * und nach jeder Schleifeniteration ausgegeben
 */
for eintrag in array{
    print(eintrag)
}

/*
 * Die enumerated()- Methode gibt die Position des Arrays und das Array-Element selbst zurück
 */
for (index,eintrag) in array.enumerated(){
    print("Der Index \(index) hat den Wert \(eintrag)")
}

for index in stride(from: 0, to: array.count, by: 1){
    print("Index: \(index) : Wert \(array[index])")
}


// MARK: - Durch Dictionaries iterieren
let dictionary = ["Karsten" : 29, "Carola" : 33, "Benedict" : 0]

for(name,alter) in dictionary{
    print("\(name) ist \(alter) Jahre alt")
}

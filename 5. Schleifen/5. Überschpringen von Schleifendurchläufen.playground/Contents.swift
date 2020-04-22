// mit Hilfe des Schlüsselworts "continue" lassen sich schleifendurchläufe überspringen
for index in 1...6 {
    if index == 3 {
        continue
    }
    print("\(index). Mal hallo")
}
print()






var index = 0

while index < 6 {
    
    index += 1

    if index == 3 {
        continue
    }

    print("\(index). Mal hallo")
}

// durch das Schlüsselwort "break" bricht man sofort aus einer Schleife aus


for index in 1...10 {
    
    if index > 3 {
        break
    }
    print("\(index). Mal hallo")
}
print()


var index = 1

while index < 10 {
    
    if index > 3 {
        break
    }
    print("\(index). Mal hallo")
    
    index += 1
}

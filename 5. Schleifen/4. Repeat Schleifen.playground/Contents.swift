// Exakt das gleiche, wie eine while Schleife.
// Unterschied ist der, dass in jedem Fall ein Mal die Schleife durchläuft, weil die Bedingung erst am Ende steht!

var index = 1

repeat {
    print("\(index). Mal hallo")
    index += 1
} while (index <= 3)

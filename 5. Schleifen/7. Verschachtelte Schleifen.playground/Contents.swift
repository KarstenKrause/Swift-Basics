for i in 1...10 {
    for j in 1...10 {
        print("\(i) * \(j) = \(i * j)")
    }
    print()
}
print()
print("Achtung, nächstes Beispiel!\n")


for i in 1...10 {
    for j in 1...10 {
        if j == 3 {
            break       // Problem: Wie kann während eines inneren Schleifendurchlaufs die äußere Schleife abgebrochen werden? ->
        }
        print("\(i) * \(j) = \(i * j)")
    }
    print()
}
print()
print("Achtung, nächstes Beispiel!\n")


// Man kann äußere Schleifen mittels eines Labels beenden

schleifeAussen: for i in 1...10 {
    for j in 1...10 {
        if j == 3 {
            break  schleifeAussen     // Problemlösung: explizite Angabe, dass die äußere Schleife abgebrochen wird!
        }
        print("\(i) * \(j) = \(i * j)")
    }
    print()
}

// Range Operatoren a...b   und a..<b

let a = 1
let b = 5

print(a...b) // eine Schleife würde zum Beispiel 5 mal durchlaufen

print(a..<b) // eine Schleife würde hier nur 4 mal durchlaufen. Die 5 wird nicht mehr mitgezählt
print("")

for i in a...b {
    print(i)
}

print("")

for i in a..<b {
    print(i)
}
print("hallo")

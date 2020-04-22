// Parameter in Funktionen sind egtl. konstant
// durch Schlüsselwort inout sind sie veränderbar!

func sum(number: inout Int) {
    number += 2 // number ist ohne inout konstant. dies wäre dann nicht möglich
}



// man kann keine konstanten zahlen für einen inout parameter setzen!
// nur variablen!
var myNumber = 10

// man muss die Variable mit einem & markieren!
sum(number: &myNumber)

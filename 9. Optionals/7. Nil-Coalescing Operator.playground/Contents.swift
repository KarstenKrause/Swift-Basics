
// Der Nil-Coalescing Operator ist quasi der Tenäre Operator für das Auspacken von Optionals

let userName = "Karsten"
var textFieldInput: String?

// zuweisung auskommentieren, um die Wirkungsweise vom Nil-Coalescing Operator zu testen
textFieldInput = "Benedict"

// ist im Optional etwas drin ?? wenn nicht, weise den String zu
var userNameUsing = textFieldInput ?? userName



// Wenn im Optional text vorhanden ist, dann true, ansonsten false
// Erklärung:
// Wenn im Optional kein Text vorhanden, dann wird geprüft ob 0 > 0 ist. Das ist immer false! (Durch die Bedingung ist die Variable isText vom Typ Bool)
// Wenn im Optional Text enthalten ist, hat Variable "isText" den Bool-Default-Wert -> true


let textInput: String?
textInput = ""
let isText = textInput?.count ?? 0 > 0







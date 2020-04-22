// Durch Zugriffskontrolle -> Access Control (oder auch Typsicherheit ) kann der Zugriff auf
// Properties, Methoden, Initializer, als auch Klassen und Structs beschränkt werden.

// Es gibt verschiedene Access-Level, die über Schlüsselwörter gesetzt werden können.

// public      -> Höchst mögliche Zugriffsmöglichkeit. Unbeschränkter Zugriff, auf jede SourceFile,
//                auch außerhalb des Moduls

// internal    -> Default (wenn kein Access-Level angegeben wird). Zugriff beschränkt auf fast jede
//                Sourcefile innerhalb ihres Moduls

// fileprivate -> Zugriff beschränkt auf die eigene SourceFile

// private     -> Zugriff beschränkt auf Codeblock ihrere Implementierung (Klasse, Struct)


struct User {
    var username: String
    var mailAdress: String
    private let safetyKey: Int
    
    // Da ich nicht will, dass von außen auf das Passwort zugegriffen werden kann.
    private var password: String
    
    init(username: String, mailAdress: String, password: String, safetyKey: Int) {
        self.username = username
        self.mailAdress = mailAdress
        self.password = password
        self.safetyKey = safetyKey
    }
    
    mutating func changePassword(safetyKey: Int, newPassword: String) {
        if safetyKey == self.safetyKey {
            self.password = newPassword
            print("Password successfully changed")
        } else {
            print("Error: Wrong safety Key")
        }
    }
}


var user1 = User(username: "hans", mailAdress: "hans@gmail.com", password: "123", safetyKey: 112)
//user1.password

user1.changePassword(safetyKey: 112, newPassword: "444")


struct Person {
    var name: String
    fileprivate var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var person1 = Person(name: "Dieter", age: 14)
person1.age = 12

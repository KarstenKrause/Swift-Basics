// Deinitializer sind Codeblöcke, die automatisch aufgerufen werden,
// wenn ein Objekt dieser Klasse zerstört wird.

class Person {
    // MARK: - Properties
    let name: String
    var alter: Int
    
    // MARK: - Init
    init(name: String, alter: Int) {
        self.name = name
        self.alter = alter
    }
    
    // MARK: - Deinit
    deinit {
        print("\(self.name) ist leider gestorben :("  + "\n")
    }
    
    // MARK: - Methods
    
    func sayHello() {
        print("\(self.name) sagt hallo! :)")
    }
}




var nocheinePerson = Person(name: "Anke", alter: 55)
nocheinePerson.sayHello()

// Alte Referenz stirbt bei Neuzuweisung einer neuen Referenz
nocheinePerson = Person(name: "Dieter", alter: 44)
nocheinePerson.sayHello()





for i in 1...3 {
    
    switch i {
    case 1:
        let person = Person(name:"Karsten", alter: 31)
        person.sayHello()
    case 2:
        let person = Person(name:"Jonas", alter: 32)
        person.sayHello()
    case 3:
        let person = Person(name:"Arne", alter: 38)
        person.sayHello()

    default:
        print("")
    }
    
}


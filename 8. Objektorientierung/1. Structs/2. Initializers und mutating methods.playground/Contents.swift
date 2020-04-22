///////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// Memberwise Initializer /////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Swift erkennt die Properties automatisch und erstellt automatisch während der Objekterzeugung einen Initializer (den Memberwise-Initializer

struct User {
    
    // Properties
    var userName: String
    var password: String
    var email: String
    
    // Methods
    func login(username: String, password: String) {
        if password == self.password && username == self.userName{
            print("Login erfolgreich!")
        } else {
            print("Passwort oder Loginname falsch")
        }
    }
    
}


// Die Properties eines Structs MÜSSEN spätestens nach der Objekterzeugung alle initialisiert sein (einen Wert besitzen)
let user1 = User(userName: "Roxxor", password: "1234", email: "roxxor@gmail.com")
user1.login(username: "Roxxor", password: "1234")





///////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////// Eigene Initializer, mutating Methods ///////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
struct User2 {
    
    // Properties
    var userName: String
    var password: String
    var email: String
    
    // Wird ein eigener Initializer definiert, so verfällt der Memberwise-Initializer.
    // Beim erzeugen des initializers ist darauf zu achten, dass alle Properties initialisiert werden!
    init(password: String, email: String){
        self.password = password
        self.email = email
        self.userName = "anonym"
        print("Neuer Nutzer wurde erstellt. Name des Nutzers muss noch gesetzt werden.")
    }
    
    // Methods
    func login(username: String, email: String) {
        if password == self.password && email == self.email{
            print("Login erfolgreich!")
        } else {
            print("Passwort oder Loginname falsch")
        }
    }
    
    
    
    // Immer wenn Werte von Properties eines Structs über eine Methode des selben Structs verändert werden sollen,
    // müssen diese Methoden mit dem Schlüsselwort "mutating" versehen werden.
    // Das liegt daran, dass Swift vor der Objekterzeugung noch nicht weiß, ob ein variables (var) oder konstantes (let) Objekt aus diesem Struct erzeugt werden soll.
    // MARK: Aus Konstanten Struct-Objekten können KEINE PROPERTIES GEÄNDERT WERDEN!!!!!
    mutating func setUserName(userName: String){
        self.userName = userName
    }
    
}


var user2 = User2(password: "zzz", email: "hansi@gmail.com")

user2.setUserName(userName: "hansi")

print(user2.userName)




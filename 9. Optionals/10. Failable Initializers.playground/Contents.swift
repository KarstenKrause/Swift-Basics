// Failable Initilizer sind Initializers, die funktionieren können, oder eben nicht
// Der Initializer ist eine Funktion, die ein Optional oder nil


struct User {
    var password: String
    
    init?(password: String) {
        if password.count < 5 {
            return nil
        }
        self.password = password
    }
}


// Da ein optional init aufgerufen wurde, ist user1 vom Typ optional User
let user1 = User(password: "hall")

if let user = user1 {
    print(user.password)
} else {
    print("Das Passwort war zu kurz")
}



struct DEFCONRating {
    var number: Int
    init?(number: Int) {
        guard number > 0 else { return nil }
        guard number <= 5 else { return nil }
        self.number = number
    }
}
let defcon = DEFCONRating(number: 6)

import UIKit

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch PasswordError.obvious {
    print("Way too easy")
} catch {
    print("There was an error: \(error.localizedDescription)")
}


// checkpoint 4

enum BoundariesError: Error {
    case outOfBounds, noMatch
}

func getSquareRoot(of number: Int) throws -> String {
    if number < 1 || number > 10_000 {
        throw BoundariesError.outOfBounds
    }
    
    // guard number > 1 && number < 10_000 else {
    // throw BoundariesError.outOfBounds
    // }
    
    for i in 1...100 {
        if number == i * i {
            return "\(i)"
        }
    }
    throw BoundariesError.noMatch
}

do {
    let result = try getSquareRoot(of: 121)
    print("The root is \(result)")
} catch BoundariesError.outOfBounds {
    print("Out of bounds")
} catch BoundariesError.noMatch {
    print("No root")
} catch {
    print("Help")
}

import UIKit

func rollDice() -> Int {
    Int.random(in: 1...6)
}

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

areLettersIdentical(string1: "coucou", string2: "oucouc")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

func sayHello() {
    return
}

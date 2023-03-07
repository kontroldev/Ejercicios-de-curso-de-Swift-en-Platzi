import Foundation

let name = "Juan Gabriel 😎"
for character in name {
    print(character)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] = ["J", "u" , "a" , "n"]
var nameString = String(nameChars)

let compoundName = "Jaun " + "Gabriel"

//nameString + String(exclamationMark) se puede hacer de las dos maneras.

nameString.append(exclamationMark)

let multiplayer = 3
var message = "El producto de \(multiplayer) X 3.5 da \(Double(multiplayer)*3.5)";message.append(exclamationMark)


//EJERCICIOS

let nameCaracter2 : [Character] = ["R" , "A" , "U" , "L"]
var nameString2 = String(nameCaracter2)
let country = "\u{1F1EA}\u{1F1F8}"

var newName = "Me llamo \(nameString2) y soy de \(country)"
print(newName)

let number = 7
for table in 1...12{
    let res = number * table
    print("\(number) * \(table) = \(res)")
}

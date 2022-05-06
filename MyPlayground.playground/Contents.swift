import UIKit

var str = "Hello, playground"
str = "Hello, YouTube"
let constStr = str

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

var arrayOfInts: [Int]
var dictionaryOfCapitalsByCountry: [String: String]
var winningLotteryNumbers: Set<Int>

let number = 42
let fmStation = 91.1

var countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Ahmet", 56: "Fatma"]

countingUp[1]

let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()

let meaningOfLife = String(number)

let availableRooms = Set([205,211,305,432])

let defaultFloat = Float()
let floatFromLiteral = Float(32.8)
let float2FromLiteral: Float = 32.8

countingUp.count
emptyString.isEmpty

countingUp.append("three")

let kutuphane = "Kütüphane"
let 📚 = "Kitaplar"

var anOptionalFloat: Float?
var anOptionalArrayOfOptionalFloats: [Float?]?

var readingl: Float?
var reading2: Float?
var reading3: Float?

readingl = 9.8
reading2 = 9.4
reading3 = 9.5

if let readingl = readingl,
let reading2 = reading2,
let reading3 = reading3 {
(readingl + reading2 + reading3) / 3.0
}
else {
    print("A reading is missing.")
}

for i in 0...3{
    print(i)
}

for string in countingUp{
    print(string)
}

for (index,string) in countingUp.enumerated(){
    print("\(index): \(string)")
}

for (key,value) in nameByParkingSpace{
    print("\(key): \(value)")
}

//içerisinde kesin değer
enum PieType: String{
    case apple = "Apple Pie"
    case apricot = "Apricot Pie"
    
    var pieCount : Int
}

let favoritePie = PieType.apricot
favoritePie.rawValue

//referans tipinde bir veri. hafızada belli bir yer tutar.
class ClassName{
    
    var pieCount : Int

    
}

//value type, memory de kopyalanır ve kopya üzerinden yer kaplar her kullanımda.
struct StructName {
    
    var pieCount : Int

}

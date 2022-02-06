import UIKit

/**
    * Variables
    * Constants
 */

/**
 * var -> Değiştirilebilir
 * let -> Sabittir, değiştirilemez
 */

var userName = "Mehmet" // mutable
userName.append("Nisa")
userName.lowercased()
userName.uppercased()

let userSurname = "Niso" // (in mutable) Sabit (Değiştirilemez)
// userSurname = "Nisa" hatalı tanımlama olur.
userName = "Test"

/** integer & double & float  **/

// integer
let userAge = 50
let myNumber = 4
userAge / myNumber

// Double
let userAgeD = 50.0
let myNumberD = 4.0
userAgeD / myNumberD

// Boolean
var myBoolean = false
myBoolean = true

let myString: String = "Nisa"
let anotherNumber: Int = Int(10.9)
let stringNumber: String = String(20)

/**
 * Set ile Array Farkları
 * Index olayı yok, set kullanırsak örn myArray[1] diyemeyiz. (Array fonksiyonları kullanılamıyor).
 * Set içerisinde aynı elemandan 2 tane olmaz. Tekrar eden elemanı otomatik olarak kaldırır. Elemanlar unique (Benzersiz)'dir.
 */

// Array
var myFavoritesMovies: [String] = ["Pulp Fiction", "Kill Bill", "Reservoir Dogs", "A"]
myFavoritesMovies.count // Dizinin eleman sayısını verir.
myFavoritesMovies.first // Dizinin ilk elemanını verir.
myFavoritesMovies.last // Dizinin son elemanını verir.
myFavoritesMovies[2]
myFavoritesMovies.sort() // Alfabetik olarak sıralar.


// Farklı türdeki değişken tiplerini bir dizi içerisinde aynı anda göstermek için as Any kullanılır.
var variables = ["Nisa","Mehmet","Ayşe", 0, true, 0.295] as [Any]

// Set
var mySet: Set = [1, 2, 3, 4, 5]
var mySet1: Set = [1, 2, 3]
var mySet2: Set = [3, 4, 5]
var mySet3 = mySet.union(mySet2) // İki diziyi birleştirir.

// Dictionary - Sözlük (key-value pairing)
var myFavoritesDirector = ["Pulp Fiction": "Tarantino", "Lock, Stock": "Guy Ritchie", "The Dark Knight": "Christopher Nolan"]
myFavoritesDirector["Pulp Fiction"]
myFavoritesDirector["Pulp Fiction"] = "Quentin Tarantino"
print(myFavoritesDirector)

myFavoritesDirector["Seven Samuria"] = "Akira Kurisowa" // Diziye yeni eleman ekleme
print(myFavoritesDirector)

var myDictionary = ["Run": 100, "Swim": 200, "Basketball": 300]
myDictionary["Run"]

// Döngüler - For / While

var number = 0
while number < 10 {
    print(number)
    number += 1
}

var myFruitArray: [String] = ["Banana", "Apple", "Orange"]
for fruit in myFruitArray {
    print(fruit)
}

for mynewinteger in 1...5 {
    print(mynewinteger)
}

var myAge = 30
if myAge < 30 {
    print("30'dan büyük")
} else {
    print("30'dan küçük")
}

// Fonksiyonlar
func myFunction() {
    print("my function")
}
myFunction()

// Input & Output & Return
func sumFunction(x: Int, y: Int) -> Int { // -> Int ifadesi ile fonksiyonun integer bir değer döndereceğini belirtmiş oluruz
    return x + y
}
print(sumFunction(x: 10, y: 2))

// Opsiyoneller
/**
 * Soru işareti ile opsiyonel olduğunu belirtiriz. Kullandığımız yerlerde de soru işareti ile opsiyonel olduğunu belirtmemiz gerekir
 * Opsiyonel değerlerde ünlem işareti kullandığımızda ise o değerin kesin olarak geleceğini belirtmiş oluruz. Örnek kullanım -> myName!.uppercased()
 */
var myName: String?
myName?.uppercased() // nill dönderir
// myName!.uppercased()

var youAge = "f"
/**
 * Normal şartlarda youAge değişkeni string olarak 5 rakamı olduğu ve bunu int değere dönüştürebileceğimiz için kullanırken Int(youAge) * 4 gibi kullanabilirz
 * ancak youAge değişkenine biz bi isim yazmış olsaydık bunu int değere dönüştüremeyeceği için uygulama patlardı. Bunun için int değere dönüştürülebileceğinden emin değil isek (Int(youAge) ?? 0) * 4 gibi kullanabiliriz. Bu da bize youAge değişkeni eğer int değere dönüştürülemiyor ise 0 değerini kullanmasını belirtmiş oluruz. Aynı şekilde if let olayını da bu mantıkta kullanabiliriz
 */
var myInteger = (Int(youAge) ?? 0) * 10

if let myNumber = Int(youAge) {
    print(myNumber * 5)
} else {
    print("Hatalı değer, int değere dönüştürülemiyor.")
}

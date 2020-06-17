import UIKit

// example switch case
let number = 1
switch number {
case 1:
    print("one")
case 2:
    print("two")
default:
    print("invalid")
}

// example with temporary constant and where
let value = 5
switch value {
case let value1 where 80...100 ~= value1:
    print("A")
case let value2 where 65...79 ~= value2:
    print("B")
case let value3 where 55...64 ~= value3:
    print("C")
case let value4 where 45...54 ~= value4:
    print("D")
default:
    print("E")
}


// example using tuple
let grades = (score: 60, grade: "A")
switch grades {
case let(score, "A") where 80...100 ~= score:
    print("class A")
case let(score, "B") where 65...79 ~= score:
    print("class B")
case let(score, "C") where 55...64 ~= score:
    print("class C")
case let(score, "D") where 45...54 ~= score:
    print("class D")
case let(score, grade):
    print("class \(grade) with score \(score)")
}

// example for compound case
let car = "Pajero"
switch car {
case "Avanza", "Land Cruiser", "Fortuner", "Rush":
    print("Toyota")
case "BR-V", "Brio", "Mobilio", "Jazz":
    print("Honda")
case "Xpander", "Pajero", "Triton", "L300":
    print("Mitsubishi")
default:
    print("invalid")
}


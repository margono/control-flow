import UIKit

//if...else statement
print("if...else")
var number = -1
if number > 0 {
   print("bilangan positif")
} else {
   print("bilangan negatif")
}

//ternary operator
var result = number > 0 ? "positif" : "negatif"

// example switch case
number = 1
switch number {
case 1:
    print("one")
case 2:
    print("two")
default:
    print("invalid")
}

// example with temporary constant and where
let value = 80
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

var wordNumbers: [String] = ["One", "Two", "Three"]
print("for-in loop array collection")
for item in wordNumbers {
    print("\(item)")
}

print("for-in loop specific range")
for item in 1...5 {
    print("\(item)")
}

print("for-in loop specific range without iterator variable")
for _ in 1...5 {
    print("hello world")
}

print("for-in loop dictionary collection")
let values: [String: Int] = ["A":80, "B": 60, "C": 50, "D": 40, "E":30]
for (key, value) in values {
    print("\(key) = \(value)")
}

print("for-in loop to get index and value collection")
for (index, item) in wordNumbers.enumerated() {
    print("\(index) = \(item)")
}

print("for-in loop filter element")
for (index, item) in wordNumbers.enumerated() where !item.elementsEqual("Two") {
    print("\(index) = \(item)")
}

print("while loop")
var index = 0
while index < 3 {
    print("\(index)")
    index += 1
}

print("while loop example 2")
index = 5
while index < 3 {
    print("\(index)")
    index += 1
}

print("repeat while loop")
index = 0
repeat {
    print("\(index)")
    index += 1
} while index < 3

print("repeat while loop example 2")
index = 5
repeat {
    print("\(index)")
    index += 1
} while index < 3

print("control statement continue")
for index in 1...5 {
    if index == 3 {
        continue
    }
    print("\(index)")
}

print("control statement break")
for index in 1...5 {
    if index == 3 {
        break
    }
    print("\(index)")
}


print("control statement fallthrough")
index = 5
switch index {
case 10:
    print("value index 10")
case 5:
    print("value index 5")
    fallthrough
case 6:
    print("value index 6")
    fallthrough
default:
    print("default index")
}

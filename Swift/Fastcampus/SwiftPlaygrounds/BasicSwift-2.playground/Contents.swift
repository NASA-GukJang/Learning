import UIKit
import Foundation   // 근본

// While

//var i = 0
//while i < 10 {
//    print(i)
//    i += 1
//}

print("--- While")
var i = 10
while i < 10 {
    print(i)
    
    if i == 5 {
        break
    }
    i += 1
}

print("--- Repeat")
i = 10
repeat {
    print(i)
    i += 1
} while i < 10

// While
// 조건 -> 코드수행

// Repeat
// 코드수행 -> 조건


// For Loop
let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in halfClosedRange{
    print("---> \(i)")
    sum += i
}

print("---> total sum: \(sum)")

var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Jason"
for i in closedRange {              // _ 로 대체 가능 (코드에서 사용되지 않았기 때문)
    print("--> name : \(name)")
}

for i in closedRange{
    if i % 2 == 0 {
        print("--> 짝수 : \(i)")
    }
}

// 위랑 같음
for i in closedRange where i % 2 == 0 {
    print("--> 짝수 : \(i)")
}


for i in closedRange {
    if i == 3 {
        continue
    }
    print("--> \(i)")
}

for i in closedRange {
    for j in closedRange {
        print("gugu -> \(i) * \(j) = \(i * j)")
    }
}


// Switch
let num = 10

switch num {
case 0 :
    print("--> 0 입니다. ")
case 0..<10 :
    print("--> 0 에서 10 사이 입니다. ")
case 10:
    print("--> 10 입니다. ")
default :
    print("--> 나머지 입니다. ")
}


let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("--> It's a animal. ")
default:
    print("--> I don't know. ")
}


let num2 = 20
switch num {
case _ where num % 2 == 0:
    print("--> even ")
default :
    print("--> odd ")
}


let coordinate = (x : 0, y : 10)
switch coordinate{
case (0, 0):
    print("--> 원점입니다. ")
case (_, 0):
    print("--> x축 입니다. ")
case (0, _):
    print("--> y축 입니다. ")
default:
    print("Unknown")
}

let coordinate2 = (x : 10, y : 10)
switch coordinate2{
case (0, 0):
    print("--> 원점입니다. ")
case (let x, 0):
    print("--> x축 입니다, x:\(x)")
case (0, let y):
    print("--> y축 입니다, y:\(y)")
case (let x, let y) where x == y:
    print("x랑 y랑 같음, x, y = \(x),\(y)")
case (let x, let y):
    print("Unknown, x, y = \(x),\(y)")
}

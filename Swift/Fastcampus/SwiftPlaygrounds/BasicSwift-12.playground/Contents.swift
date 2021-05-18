import UIKit

// Closure - 이름이 없는 Methods
//var multiplyClosure: (Int, Int) -> Int = { a, b in
//    return a * b
//}

var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }

let result = multiplyClosure(4, 2)


func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = {a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, operation: addClosure)


operateTwoNum(a: 4, b: 2){ a, b in
    return a / b
}

// input 과 output 이 없는 Closure
let voidClosure: () -> Void = {
    print("iOS 개발자")
}

voidClosure()


// Capuring Values
var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count

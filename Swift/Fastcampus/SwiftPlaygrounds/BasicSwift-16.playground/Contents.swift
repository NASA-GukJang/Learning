import UIKit

struct Person {
    // Stored Property
    var firstName: String {
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet{                     // Stored Property 에서만 가능 - 변수 변화 (유구한 역사) 보여줌
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String            // let 으로 바꾸면 밑에 에러, 실무에서는 let 사용 선호
    
    // Lazy Property
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
    // Computed Property - Stored Property를 가지고 가공을 할 때
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
        
    }
    // Type Property
    static let isAlien: Bool = false
}

var person = Person(firstName: "GukJang", lastName: "Kim")

person.firstName
person.lastName

person.firstName = "JangGuk"
person.lastName = "Kim"

person.fullName
person.fullName = "Kim KyeongYoon"

Person.isAlien

person.isPopular


// Property vs Method
// Property : 호출시 (저장된)값을 하나 반환한다.
// Method : 호출시 어떤 작업을 한다.

// Setter 필요한가 yes - Computed Property
//               no - 계산이 많이 필요한가? or DB access나 File io가 필요한가? yes - Method
//                                                                    no - Computed Property

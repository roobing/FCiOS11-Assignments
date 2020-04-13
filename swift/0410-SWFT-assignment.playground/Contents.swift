import UIKit
//assignment 1
let name: String = ""
let age: Int = 0
func introduceMyself(_ name: String, _ age: Int) {
  print("Hi! My name is \(name) and I am \(age) years old.")
}

introduceMyself("Woobin", 34)


//assignment 2
var num = 0;
func multiple2(_ x: Int) {
    var rest: Int = 0;
    rest = x % 2;
    if (rest == 0){
        print("\(x) is multiple of 2")
    }
    else {
        print("\(x) is not multiple of 2")
    }
}

multiple2(3)

//assignment 3
var num1: Int = 10;
var num2: Int = 5;

func multiply(_ x1: Int, _ x2: Int) {
    var result: Int = 0;
    result = x1 * x2
    print("\(x1) * \(x2) = \(result)")
}

multiply(num1, num2)

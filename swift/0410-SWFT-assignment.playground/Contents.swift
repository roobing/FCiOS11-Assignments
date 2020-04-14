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

//assignment 4
var myScores:(UInt, UInt, UInt, UInt) = (0, 0, 0, 0)
func averageCal(inputVal scores: (UInt, UInt, UInt, UInt)) -> UInt {
    var sum4average: UInt = 0
    var averageVal: UInt = 0
    sum4average = scores.0 + scores.1 + scores.2 + scores.3
    averageVal = sum4average / 4
    
    return averageVal
}
myScores = (81, 90, 43, 59)
print(averageCal(inputVal: myScores))

//assignment 5
//점수를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
var myScore: UInt = 0
func convert2Grade(inputVal score: UInt) -> String {
    switch score {
    case 90...:
        return "A"
    case 80...:
        return "B"
    case 70...:
        return "C"
    default:
        return "F"
    }
}
myScore = 85
print("my score is \(myScore). So my grade is \(convert2Grade(inputVal: myScore))")

//assignment 6
//가변 인자 파라미터를 이용해 점수를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
func averageCalc2(_ numbers: Double..., cutlineA A: Double, cutlineB B: Double, cutlineC C: Double) -> String {
    var sum4average: Double = 0.0
    var average: Double = 0.0
    for number in numbers {
        sum4average += number
    }
    average = sum4average / Double(numbers.count)
    
    
    switch average {
    case A...:
        return "A"
    case B...:
        return "B"
    case C...:
        return "C"
    default:
        return "F"
    }
}
print("My average grade is \(averageCalc2(90, 90, 80, 100, cutlineA: 90, cutlineB: 80, cutlineC: 70))")

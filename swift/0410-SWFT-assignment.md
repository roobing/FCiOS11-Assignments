[ 과제 ]

문제에서 요구하는 함수 정의하기

- 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

  ```swift
  let name: String = ""
  let age: Int = 0
  func introduceMyself(_ name, _ age) {
    print("Hi! My name is \(name) and I am \(age) years old.")
  }
  
  introduceMyself("Woobin", "34")
  ```

  

- 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

  ```swift
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
  ```

  

- 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

  ```swift
  var num1: Int = 10;
  var num2: Int = 5;
  
  func multiply(_ x1: Int, _ x2: Int) {
      var result: Int = 0;
      result = x1 * x2
      print("\(x1) * \(x2) = \(result)")
  }
  
  multiply(num1, num2)
  ```

  

- 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수

  ```swift
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
  ```

  

- 점수를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

  ```swift
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
  print(convert2Grade(inputVal: myScore))
  ```

  

- 가변 인자 파라미터를 이용해 점수를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

  ```swift
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
  ```

  
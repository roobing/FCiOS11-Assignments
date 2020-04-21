[ 과제 ]

1. 옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수 func combineString(str1: String?, str2: String?, str3: String?) -> String {  // code }

   // 입력 예시 및 결과

   combineString1(str1: "AB", str2: "CD", str3: "EF")   // "ABCDEF"

   combineString1(str1: "AB", str2: nil, str3: "EF")    // "ABEF" 

   ```swift
   func sumOpt(opt1: String?, opt2: String?, opt3: String!) -> String {
       var newArry: String = ""
       
       // 강제 해제
       if opt1 != nil {
           newArry = newArry + opt1!
       }
       else {
           return "opt1 is nil!!"
       }
   
       
       // 옵셔널 바인딩
       if let opt2 = opt2 {
           newArry = newArry + opt2
       }
       
       // 묵시적 해제
       newArry = newArry + opt3
       
       return newArry
   }
   var optA: String? = "D"
   var optB: String? = "O"
   var optC: String! = "G"
   sumOpt(opt1: optA, opt2: optB, opt3: optC)
   ```

   

2. 사칙연산(+, -, *, /)을 가진 enum 타입 Arithmetic과 2개의 자연수를 입력 파라미터로 받아 (파라미터 총 3개) 해당 연산의 결과를 반환하는 함수 구현

   enum Arithmetic {  case addition, subtraction, multiplication, division }

   ```swift
   enum Arithmatic {
       case PLUS, MINUS, DIVIDE, MULTIPLE
       
   }
   var calcMethod = Arithmatic.PLUS
   
   func Calc(method: Arithmatic, num1: Int, num2: Int) -> Int {
       
       switch method {
       case .PLUS:
           return num1 + num2
       case .MINUS:
           return num1 - num2
       case .MULTIPLE:
           return num1 * num2
       case .DIVIDE:
           return num1 / num2
       }
   }
   
   Calc(method: .DIVIDE, num1: 10, num2: 5)
   ```
   
   

[ 도전 과제 ]

1. celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 enum 타입 Temperature 를 정의 각 케이스에는 Double 타입의 Associated Value 를 받도록 함 추가로 Temperature 타입 내부에 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현

   섭씨 = (화씨 - 32) * 5 / 9 섭씨 = 켈빈 + 273 

   enum Temperature {  // 코드  }
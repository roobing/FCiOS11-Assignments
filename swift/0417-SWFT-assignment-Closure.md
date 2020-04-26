### 자율 학습

1. 지난 과제에서 함수를 이용해 풀었던 문제를 클로저로 변형해서 풀어보기

   1번 )

   <span style="color: red;">질문</span>: 클로저 선언에 옵셔널 묵시적 해제 왜 에러 나는지, 클로저 사용법이 .self가 맞는지

   ```swift
   // 1번
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
   // 1번 답
   let sumOptClosure: (String?, String?, String!) -> String = { //Using '!' is not allowed here; perhaps '?' was intended?
       (opt1: String?, opt2: String?, opt3: String!) -> String in
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
   sumOptClosure.self("a", "b", "c") // "abc"
   ```

   2번 )

   <span style="color: red;">질문</span>: 클로저 사용법이 .self가 맞는지?

   ```swift
   // 2번
   enum Arithmatic {
       case PLUS, MINUS, DIVIDE, MULTIPLE
   }
   
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
   
   // 2번 답
   let CalcClosure: (Arithmatic, Int, Int) -> Int = {
       (method: Arithmatic , num1: Int, num2: Int) -> Int in
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
   CalcClosure.self(.PLUS, 5, 5) // 10
   ```

2. 클로저 Full Syntax <-> Optimized Syntax 변환 연습

   OK



### 과제

1. 객체 지향 프로그래밍 (Object-Oriented Programming) 에 대해 예습하기

   OK



### 도전 과제

1. 아래 두 클로저를 Syntax Optimization을 이용하여 최대한 줄여보기 

   1번 )
   
   ```swift
   let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in
                                               let isAscending: Bool
                                               if s1 > s2 {
                                                 isAscending = true
                                               }
                                               else {
                                                 isAscending = false
                                               }
                                               return isAscending
                                            }
   ```
   
   답)
   
   ```swift
   let someClosure2: (String, String) -> Bool = { $0 > $1 }
   someClosure2.self("apple", "galaxy") // false
   ```
   
   
   
   2번 )
   
   ```swift
   let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in
                                      var count: Int = 0
                                      for _ in values{
                                        count += 1
                                      }
                                      return count
                                      }
   ```
   
   답)
   
   ```swift
   let otherClosure2: ([Int]) -> Int = { $0.count }
   otherClosure2.self([1,2,3,4,4]) // 5
   ```
   
   
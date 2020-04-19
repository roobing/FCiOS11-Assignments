### 과제

* 두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수   (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)

  ```swift
  func transFormer(num1: UInt, num2: UInt) -> UInt {
      var countSizeOfnum2: UInt = 0
      var quotientOfnum2: UInt = 0
      var exp10: UInt = 1
      
      quotientOfnum2 = num2
      if quotientOfnum2 < 10 {
          countSizeOfnum2 = 1
      }
      else {
          while quotientOfnum2 >= 10 {
              quotientOfnum2 = quotientOfnum2 / 10
              countSizeOfnum2 += 1
          }
          countSizeOfnum2 += 1
      }
      print(countSizeOfnum2)
      for _ in 1...countSizeOfnum2 {
          exp10 = exp10 * 10
      }
      return num1*exp10 + num2
  }
  transFormer(num1: 6, num2: 100)
  ```

  

* 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

  ```swift
  func comparator(a: String, b: String) -> Bool {
      return a == b
  }
  comparator(a: "MACBOOK", b: "macBook")
  ```

* 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수

  ```swift
  func printYaksoo(num1: Int) -> [Int] {
      var result: [Int] = []
      for step in 1...num1 {
          if num1 % step == 0 {
              result.append(step)
          }
          else {
              //do nothing
          }
      }
      return result
  }
  
  printYaksoo(num1: 12348)
  ```

* 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

  ```swift
  func printCommonMulitple() -> [Int] {
      var result2: [Int] = []
      for step in 1... {
          if step * 15 <= 100 {
              result2.append(step * 15)
          }
          else {
              break
          }
      }
      return result2
  }
  printCommonMulitple()
  ```

### 도전과제

- 2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수

- 자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수  참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열  e.g.  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ....  함수 호출 시 입력받은 숫자가 4인 경우 피보나치 수열의 4번째 위치인 2 출력

- 정수를 입력받아 윤년(2월 29일이 있는 해)인지 아닌지 판단하는 함수  (공식 - 매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)

  ex) 윤년O 예시 - 160, 204, 400, 1996, 2000, 2800      윤년X 예시 - 200, 300, 500, 600, 1900, 2100
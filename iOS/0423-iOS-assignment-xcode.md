### 과제 - 알고리즘

1. 정수 하나를 입력받은 뒤, 해당 숫자와 숫자 1사이에 있는 모든 정수의 합계 구하기

   e.g.  5 -> 1 + 2 + 3 + 4 + 5 = 15,   -2 -> -2 + -1 + 0 + 1 = -2

   ```swift
   func betweenSum(_ num: Int) -> Int {
       var resultSum: Int = 0
       if num > 0 {
           for num in 1...num {
               resultSum = resultSum + num
           }
       }
       else {
           for num in num...1 {
               resultSum = resultSum + num
           }
       }
       return resultSum
   }
   
   betweenSum(0)
   ```

   

2. 숫자를 입력받아 1부터 해당 숫자까지 출력하되, 3, 6, 9가 하나라도 포함되어 있는 숫자는 *로 표시

   e.g.  1, 2, *, 4, 5, *, 7, 8, *, 10, 11, 12, *, 14, 15, * ...

   ```swift
   func 삼육구(inNum: Int) -> [String] {
       var rest: Int  = 0;
       var quotient: Int = 0;
       var 삼육구: [String] = [];
       
       for targetNum in 1...inNum {
           var inspector: [Int] = [];
           if targetNum >= 10 {
               repeat {
                   quotient = targetNum / 10;
                   rest = targetNum % 10;
                   inspector.insert(rest, at: 0);
               } while quotient >= 10
               inspector.append(quotient)
           }
           else {
               inspector.append(targetNum)
           }
           print(inspector)
           if inspector.contains(3) || inspector.contains(6) || inspector.contains(9) {
               삼육구.append("*")
           }
           else {
               삼육구.append(String(targetNum))
           }
       }
       return 삼육구
   }
   
   삼육구(inNum: 10)
   ```

   

3. 2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기

   e.g.  Input : 6, 9   ->  Output : 18, 3

   // 최대공약수

   //1) 두 수 중 큰 수를 작은 수로 나눈 나머지가 0이면 최대 공약수

   //2) 나머지가 0이 아니면, 큰 수에 작은 수를 넣고 작은 수에 나머지 값을 넣은 뒤 1) 반복

   // 최소 공배수

   // - 주어진 두 수의 곱을 최대공약수로 나누면 최소공배수
   
   ```swift
   func mmCalc(num1: Int, num2: Int) -> [Int] {
       var small: Int = 0;
       var big: Int = 0;
       var rest: Int = 0;
       var max: Int = 0;
       var min: Int = 0;
       
       if num1 > num2 {
           small = num2;
           big = num1;
           rest = big % small;
           while rest != 0 {
               big = small;
               small = rest;
               rest = big % small;
           }
       }
       else {
           small = num2;
           big = num1;
           rest = big % small;
           while rest != 0 {
               big = small;
               small = rest;
               rest = big % small;
           }
       }
       
       max = small
       min = (num1 * num2) / small
       print("최대공약수: \(max), 최소공배수: \(min)")
       return [max, min]
   }
   
   mmCalc(num1: 18, num2: 24)
   ```
   
   

### 과제 - 앱 구현

1. Button을 누를 때마다 Label 의 값 변경하기

   1) +버튼 또는 -버튼을 누르면 숫자가 증가/감소하도록 만들기

   2) 숫자가 증가할 때는 label의 텍스트 색을 파란색, 감소할 때는 빨간색으로 변경
   
   ```swift
   class ViewController: UIViewController {
   
       @IBOutlet weak var displayLabel: UILabel!
       
       var counter: Int = 0
       
       override func viewDidLoad() {
           super.viewDidLoad()
       }
   
       
       @IBAction func downButton(_ sender: UIButton) {
           counter -= 1
           displayLabel.textColor = .systemRed
           displayLabel.text = String(counter)
       }
       @IBAction func upButton(_ sender: UIButton) {
           counter += 1
           displayLabel.textColor = .systemBlue
           displayLabel.text = String(counter)
       }
   
   }
   ```
   
   
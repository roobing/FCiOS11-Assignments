## 1번

### 문제 

```swift
func addTwoValues(a: Int, b: Int) -> Int {
    return a + b
}

let task1: Any = addTwoValues(a: 1, b: 2)
```

위와 같이 정의된 변수 task1이 있을 때, 다음의 더하기 연산이 제대로 동작하도록 할 것

task1 + task1

### 답안

```swift
if let task1 = task1 as? Int { // 다운캐스팅(as?)과 동시에 if-let 옵셔널 바인딩
    task1 + task1
}
else {
    print("Down Cating has failed")
}
```



## 2번

### 문제

```swift
let task2: Any = addTwoValues
```

과제 1번에 이어 이번에는 위와 같이 정의된 task2 변수에 대해 두 변수의 더하기 연산이 제대로 동작하도록 할 것

(addTwoValues의 각 파라미터에는 원하는 값 입력)

task2 + task2

### 답안

```swift
let task2: Any = addTwoValues // task2는 Any 타입
let castingToFunc = task2 as? (Int, Int) -> Int // task2를 함수로 다운캐스팅(as?)
if let optionalBinding = castingToFunc { // 다운캐스팅(as?)은 항상 옵셔널 타입 리턴이므로 옵셔널바인딩 수행
    optionalBinding(2, 3) + optionalBinding(2, 3)
}
else {
    print("Down Casting has failed")
}

// 결과 => 10
```



## 3번

### 문제

```swift
class Car {
  let name: String = "Aveo"
  let wheels: Int = "5"
}

let values: [Any] = [  1,  99.9,  (2.0, Double.pi),  Car(),  { (str: String) -> Int in str.count } ]
```

위 values 변수의 각 값을 switch 문과 타입캐스팅을 이용해 출력하기



### 답안

```swift
class Car {
  let name: String = "Aveo"
  let wheels: Int = 5
}

let values: [Any] = [1, 99.9, (2.0, Double.pi), Car(), {(str: String) -> Int in str.count}]

for value in values {
    switch value {
    case let someInt as Int:
        print("value[0] is \(type(of: someInt)) type. And value is \(someInt)")
    case let someDouble as Double:
        print("value[1] is \(type(of: someDouble)) type. And value is \(someDouble)")
    case let (x, y) as (Double, Double):
        print("value[2] is \(type(of: (x, y))) type. And value is \((x, y))")
    case let car as Car:
        print("value[3] is \(type(of: car)) type. And value has members \(car.name) and \(car.wheel)")
    case let closure as (String) -> (Int):
        print("value[4] is \(type(of: closure)) type. And it returns count value of string. So 'fastcamp' is \(closure("fastcamp")) char.")
    default:
        print("someother type")
        
    }
}

// 결과
value[0] is Int type. And value is 1
value[1] is Double type. And value is 99.9
value[2] is (Double, Double) type. And value is (2.0, 3.141592653589793)
value[3] is Car type. And value has members Aveo and 5
value[4] is (String) -> Int type. And it returns count value of string. So 'fastcamp' is 8 char.
```


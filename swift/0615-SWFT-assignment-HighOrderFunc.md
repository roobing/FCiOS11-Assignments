# High Order Function

# 1번

```swift
[ 1번 문제 ]
 let numbers = [-2, -1, 0, 1, 2]
 numbers.compactMap {
   $0 >= 0 ? $0 : nil
 }
 => [0, 1, 2]
 
 위와 같이 compactMap을 이용했을 때와 동일한 결과가 나오도록 compactMap 없이 구현
```

답안)

```swift
let numbers = [-2, -1, 0, 1, 2]

func removeMinusVal(of num: [Int]) -> [Int] {
    var box: [Int] = []
    for i in num {
        if i >= 0 {
            box.append(i)
        }
    }
    return box
}

print(removeMinusVal(of: numbers))
```

# 2번

```swift
let nestedArr = [[1, 2, 3], [9, 8, 7], [-1, 0, 1]]
 nestedArr.flatMap { $0 }
 => [1, 2, 3, 9, 8, 7, -1, 0, 1]
 
 위와 같이 flatMap을 이용했을 때와 동일한 결과가 나오도록 flatMap 없이 구현
```

답안)

```swift
let nestedArr = [[1, 2, 3], [9, 8, 7], [-1, 0, 1]]
nestedArr

type(of: nestedArr)

func peelCollection(of array: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    for i in array {
        for j in i {
            result.append(j)
        }
    }
    
    return result
}

print(peelCollection(of: nestedArr))
```

# 3번

```swift
[ 3번 문제 ]
 Q. map 과 flatMap, compactMap 을 이용하여 다음 3가지 결과값이 나오도록 출력해보기
 
 1. [[1, 2, 3], [5], [6], []]
 2. [Optional(1), Optional(2), Optional(3), nil, Optional(5), Optional(6), nil, nil]
 3. [1, 2, 3, 5, 6]
```

답안)

```swift
let array: [[Int?]] = [[1, 2, 3], [nil, 5], [6, nil], [nil]]

print(array)
#if false
let temp1 = array
    .flatMap { $0 }
    .compactMap({$0})
#else
let temp1 = array
    .compactMap({$0})
    .flatMap({$0})
print(temp1)
#endif
```

# 4번

```swift
Q. 아래 배열에서 숫자에 해당하는 문자열만 골라낸 뒤, 그 숫자들을 제곱한 결과를 모두 더한 값 출력
 고차함수만을 이용할 것
 
 ["1", "2", "3", "4", "5", "A", "B", "C", "D"]
```

답안)

```swift
let mixedString = ["1", "2", "3", "4", "5", "A", "B", "C", "D"]

mixedString.filter
```
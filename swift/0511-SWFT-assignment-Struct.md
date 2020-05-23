# 과제

## 문제

```swift
import UIKit


struct User {
  var friends: [Friends] = []
  var blocks: [Friends] = []
}

struct Friends: Equatable {
  let name: String
}

/*
 ↑ User와 Friends 타입은 수정 금지
 ↓ FriendList 타입은 수정 허용
 */

struct FriendList {
  func addFriend(name: String) {
    // 호출 시 해당 이름의 친구를 friends 배열에 추가
  }
  
  func blockFriend(name: String) {
    // 호출 시 해당 이름의 친구를 blocks 배열에 추가
    // 만약 friends 배열에 포함된 친구라면 friends 배열에서 제거
  }
}


// 아래에 있는 코드를 수정해 문제에서 요구하는 결과 도출하기.

// user를 전역변수로 사용하지 말 것.
let user = User()

var friendList = FriendList()
friendList.addFriend(name: "원빈")
friendList.addFriend(name: "장동건")
friendList.addFriend(name: "정우성")

// 중간 결과값
user.friends    // 원빈, 장동건, 정우성


friendList.blockFriend(name: "정우성")
friendList.blockFriend(name: "소지섭")


// 최종 결과값
user.friends   // 원빈, 장동건
user.blocks    // 정우성, 소지섭
```
<br>

## 답안

```swift
struct FriendList {
    
    var a = User()
    
    mutating func addFriend(name: String) -> User {
         if a.blocks.contains(Friends(name: name)) {
            let index = a.blocks.firstIndex(of: Friends(name: name)) ?? 0
            a.blocks.remove(at: index)
        }
        a.friends.append(Friends(name: name))
        print(a.friends)
        return a
        // 호출 시 해당 이름의 친구를 friends 배열에 추가
    }
    
    mutating func blockFriend(name: String) -> User {
        if a.friends.contains(Friends(name: name)) {
            let index = a.friends.firstIndex(of: Friends(name: name)) ?? 0
            a.friends.remove(at: index)
        }
        a.blocks.append(Friends(name: name))
        print(a.blocks)
        return a
        // 호출 시 해당 이름의 친구를 blocks 배열에 추가
        // 만약 friends 배열에 포함된 친구라면 friends 배열에서 제거
    }
}

// 아래에 있는 코드를 수정해 문제에서 요구하는 결과 도출하기.

// user를 전역변수로 사용하지 말 것.
var user = User()

var friendList = FriendList()
user = friendList.addFriend(name: "원빈")
user = friendList.addFriend(name: "장동건")
user = friendList.addFriend(name: "정우성")

// 중간 결과값
user.friends    // 원빈, 장동건, 정우성


user = friendList.blockFriend(name: "정우성")
user = friendList.blockFriend(name: "소지섭")


// 최종 결과값
user.friends   // 원빈, 장동건
user.blocks    // 정우성, 소지섭
```

<br>

## 주요사항

### 1. addFriend()와 blockFriend()에서 User 구조체를 반환

```swift
struct FriendList {
    
    var a = User() // 내부에 User 구조체 인스턴스 생성
    
    mutating func addFriend(name: String) -> User { // 값을 변경한 User 인스턴스를 반환
         if a.blocks.contains(Friends(name: name)) {
            let index = a.blocks.firstIndex(of: Friends(name: name)) ?? 0
            a.blocks.remove(at: index)
        }
        a.friends.append(Friends(name: name))
        print(a.friends)
        return a
    }
    
    mutating func blockFriend(name: String) -> User { // 값을 변경한 User 인스턴스를 반환
        if a.friends.contains(Friends(name: name)) {
            let index = a.friends.firstIndex(of: Friends(name: name)) ?? 0
            a.friends.remove(at: index)
        }
        a.blocks.append(Friends(name: name))
        print(a.blocks)
        return a
    }
}
```

### 2. 반환된 구조체를 user 인스턴스에 할당(<span style="color: red;">값 복사</span>)

```swift
var user = User() // 값 변경을 위해 변수(var)로 선언

var friendList = FriendList()
user = friendList.addFriend(name: "원빈") // 값이 변경된 User 인스턴스(a)가 또 다른 User 인스턴스(user)로 복사됨
user = friendList.addFriend(name: "장동건") // 상동
user = friendList.addFriend(name: "정우성") // 상동

// 중간 결과값
user.friends    // 값이 복사되어 원하는 결과값이 출력


user = friendList.blockFriend(name: "정우성")
user = friendList.blockFriend(name: "소지섭")


// 최종 결과값
user.friends   // 원빈, 장동건
user.blocks    // 정우성, 소지섭
```


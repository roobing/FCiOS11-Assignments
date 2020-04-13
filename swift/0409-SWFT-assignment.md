1. Swift 문법 예습

## Part1: Expressions, Variables and Constants

### Arithmetic Operation(산술 연산자)

* +, -, *, /

* 표현식 주의점 : 연산자의 양쪽에 공백이 아예 없거나 둘다 있어야 한다.

  Ex) 1+1 or 1 + 1

* 표현식에 integer만을 사용한다면, 그 결과 또한 integer다

  Ex) 22/7 -> 3

* Remainder operation = modulo operation(나머지 연산자)

  %

### shift operation

* 비트 단위의 쉬프트. 왼쪽으로의 n번 시프트는 *2^n의 효과, 오른쪽으로의 n번 시프트는 /2^n의 효과.

  Ex) 1<<3 -> 1*2^3=8, 32>>2 -> 32/2^2=8

* 과거에는 곱셈 나눗셈 연산을 위해 일부러 시프트연산을 사용했지만

* 현대에서는 cpu가 매우 빠르고 심지어 컴파일러가 곱/나눗셈 연산을 내부적으로 시프트로 바꿔주기도 하므로 곱/나눗셈 연산을 사용하는것에 대해 부담을 가질 필요가 없다. 직접적으로 시프트연산을 보게되는 경우는 binary twiddling외엔 없을 것이다.

### 연산 우선순위

* 수학이랑 똑같음

### 수학 함수(Math functions)

* 여러가지 수학 함수들을 제공함

### Naming data

* <strong style="color: red;">Constant: let으로 선언</strong>

* <strong style="color: red;">Variables: var로 선언</strong>

* Tip: 1000000와 같은 큰 수의 경우 _로 구분 지을수있다. 1_000_000

* using meaningful name : 데이터 이름은 의미 있는 것으로 정해라

### Increment and Decrement

* C언어와 같음.

* 곱셈 나눗셈도 사용.

  Ex) counter*=3, counter/=3



## Part2: types and operation

type은 값의 셋트와 연산들을 묘사한다?

### 시작

* 타입 일치시켜야한다.

* 형변환 방법 : ex) b=Int(a) , (a는 double b는 Int인 경우)

### 다른 타입끼리의 연산

* 타입이 다른 변수끼리 연산 불가. 따라서 결과로써 원하는 타입으로 형변환해야함.

### 타입추론

* 변수의 타입을 컴파일러가 알아서 적당하게 정해준다...

  ex) let wantDouble = 3 이라고 하면, 컴파일러는 wantDouble의 타입을 Int로 정한다.

* 직접 타입을 정해주는 양식은 3가지가 있다.

  1. let typeInferredData = Double(3)

  2. let typeInferredData : Double = 3

  3. let typeInferredData : 3 as Double

* 단순히 선언만 된 숫자의 경우에는 타입 추론 되지 않는다. 실제로 코드 안에서 쓰여야 추론 된다.

  ex) let wantADouble = 3.0 이렇게 선언 후

  _소수점이 없는 숫자(리터럴)은 Int나 Double로 쓰일 수 있으나, 소수점이 있는 숫자(리터럴)은 Int로 쓰일 수 없다._

### 문자열

* 기본적인 내용은 여타 언어와 같다.

  _but, char -> Character / string -> String 이라고 선언해줘야한다._

* 문자열에도 타입 추론이 적용된다.

* Character literal은 존재 하지 않는다.

* let abc = 'a' 와 같이 선언될 경우 String으로 타입 추론된다. 따라서 Character를 원하면 직접 명시해줘야한다.

### Concatenation(연속성?)

* 문자열을 더하는 심플한 방법
* 각기 다른 문자를 더할때 (like char+string)에는 타입을 통일 시켜줘야한다.(숫자도 마찬가지)

### Interpolation

* string안에 string을 포함한 여러가지 데이터타입을 빌드할 수 있다(?). swift 고유.

  ex 1)

  ```swif
  let name = "woobin"
  let messageInOne = "Hi my name is \(name)!"
  ```

  코드 결과:  "Hi my name is woobin!"

  ex 2)

  ```swif
  let oneThird = 1.0 / 3.0
  let ontThirdLongString = "One third is \(oneThird) as a decimal."
  ```

  코드 결과: One third is 0.3333333333333333 as a decimal.  <em style="font-weight: 700;">소수점의 길이를 직접 결정할 수 는 없다.</em>

### Multi-line Strings

* 스트링 변수를 여러줄로 초기화 할 수 있다.
* 줄바꿈 앞에 반드시 2칸의 공백이 포함되어야한다.(swift가 """ 앞의 2칸 공백을 보고 끝남을 인지)

### Tuples



1. 구글 검색 관련 팁 추가로 찾아보기
   * https://www.twinword.co.kr/blog/search-operator-complete-list/
   * https://www.twinword.co.kr/blog/how-to-audit-your-site-using-google-search-operators/
   * https://brunch.co.kr/@isentiakorea/2
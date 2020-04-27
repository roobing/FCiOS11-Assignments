### 문제

3개의 뷰 컨트롤러 사이에 화면 전환하기

A는 B로 가는 버튼

B는 A로 돌아가는 dismiss 버튼과 C로 가는 버튼

C는 A 또는 B로 돌아가는 dismiss 버튼

(참고) A -> B 

​			<- B -> C 

​				B <- C

​		 A     <-    C



### 과제

ViewController 데이터 전달

AViewController 와 BViewController 를 만든 뒤, 각각 하나씩의 Label 생성

A에서 B로 화면을 넘어갈 때는 B의 Label 값이 이전 값에서 +3 증가

B에서 A로 화면을 넘어갈 때는 A의 Label 값이 이전 값에서 +1 증가

e.g. A에서 B로 갈 때 3, B에서 다시 A로 넘어올 때 4, 다시 A에서 B로 가면 7, 다시 A로 오면 8



### 도전 과제

카드 스타일에서 제스처로 내릴 때는 UIAdaptivePresentationControllerDelegate 프로토콜을 사용한 별도의 작업 필요.

관련 내용을 검색해보고 presentationControllerDidDismiss 메서드를 이용해서 구현해보기
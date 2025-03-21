main() {
  int n1 = 10;
  int n2 = 20;

  Sub sub = Sub(n1, n2);
  print(sub.addition());
  print(sub.subtraction());

  
} //main

class Add {
  // Property
  late int num1;
  //먼저 안만들고 생성자로 생성된 뒤 만들어진다 *null safety역할 late int num1 = int? num1 초기값을 주기 싫을때
  //데이터가 들어올 수도 있고 안들어올 수도 있다.
  late int num2;

  // Constructor
  Add(int num1, int num2)
    : this.num1 = num1,
      this.num2 = num2; //this는 property에 있는 변수를 뜻함
  // Method

  int addition() {
    return num1 + num2;
  }

  //서비스중인 class에서 기능을 추가해버리면 오류가 날 확률이 높기때문에 상속을 쓴다.
}

class Sub extends Add {
  //method와property를 가지고 올 수 있다.
  Sub(super.num1, super.num2);
  //부모의 property를 가지고 오는게 super

  int subtraction() {
    return num1 - num2;
  }
}

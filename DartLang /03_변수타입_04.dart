main() {
  // var와 dynamic
  var name = "유비";
  name = "관우";
  //name = 1; *선언할때의 타입이 아니라 오류 발생

  dynamic name1 = "장비";
  name1 = "조자룡";
  name1 = 10;
  //var은 선언할때의 타입을 따라가지만 dynamic은 선언할때의 타입을 따라가지 않고 변경할 수 있다.

  int num1 = 100;
  print(name1 + num1); 
  //헷갈리니깐 사용을 권장하지 않는다.  *Dynamic은 메모리를 많이 차지한다.
}

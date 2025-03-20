main() {
  //문자열  *문자열 선언은 대문자로 선언(객체형 타입)
  String str1 = "유비";
  String str2 = "장비";

  // 유비 : 장비
  print(str1 + " : " + str2);

  int intNum1 = 10;
  int intNum2 = 20;
  // 10 + 20 = 30

  //print(intNum1 + "+" + intNum2 + "=" + intNum1 + intNum2);
  //타입이 섞여있어서 Error

  //문자열 보간법 (String Interpolation)  *"$변수명"
  // 유비 : 장비
  print("$str1 : $str2");
  String result = "$str1 : $str2";
  print(result);

  print("$intNum1 + $intNum2 = ${intNum1 + intNum2}"); 
  //변수의 계산을 문자열 보간법을 사용할때는 {}를 사용
}

main() {
  // 연산자
  // 자동 증감 연산자
  int num = 0;
  num = num + 1;
  num++; // 1씩 증가  *num = num + 1 과 동일

  num--; // num = num - 1
  print(num);

  num = num + 2;
  num += 2; // num = num + 2 *누적연산자

  // Optional : Null Safety
  int num1 = 10;
  //int num2 = null;
  int? num2 = null; //int?로 선언시 Null값을 받을 수 있다,
  print(num2);

  num2 ??= 8; // ??= 값이 없으면 8이 기본값이다.
  num1 ??= 1;
  print(num2);
  print(num1);

  int? num3; //Data를 안줘도 Null이 자동으로 들어간다
  print(num3);
  print(num3 ??= 5);

  //int num4;
  //print(num4++);

  // 조건 연산자
  int num5 = 10;
  int num6 = 5;

  print(num5 < num6); //조건을 비교하여 bool값 출력
  print(num5 > num6);
  print(num5 >= num6);
  print(num5 <= num6);
  print(num5 == num6); //같냐
  print(num5 != num6); //다르냐

  // 논리 연산자
  bool result = 12 > 10 && 1 > 0; // &&는 두개의 조건식 모두가 맞아야 true
  print(result);

  bool result2 = 10 > 5 || 1 > 2; //||는 두개의 조건식 중 하나만 맞아도 true
  print(result2);

  
}

// 입력한 한 자릿수 정수의 합 구하기
// 입력 숫자 : 12345678
// 결과
// Sum of 12345678 = 36
//Coding Test : 백준, Programmers

//문제의 원리 : 계속 나누고 나머지끼리 더해준다 몫이 0 일때 까지
main() {
  int inputValue = 12345678;
  int remainder = 0; //나머지를 더할 변수
  int sum = 0;
  int inputValue1 = 0;

  while (inputValue != 0) {
    remainder = inputValue % 10;
    sum += remainder;
    inputValue = inputValue ~/ 10;
  }

  print("Sum of $inputValue = $sum");
}

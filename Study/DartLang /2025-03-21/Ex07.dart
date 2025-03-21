main() {
  int num1 = 10;
  int num2 = 4;

  // 덧셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 14
  print(sumInt(num1, num2));

  // 뺄셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : "10 - 4 = 6"
  print("$num1 - $num2 = ${minInt(num1, num2)}");

  // 곱셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 40
  print(mulInt(num1, num2));
  
  // 나눗셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 2.5
  print(divInt(num1, num2));
} //main

int sumInt(int num1, int num2) {
  int sum = num1 + num2;
  return sum;
}

int minInt(int num1, int num2) {
  int result = num1 - num2;
  return result;
}

int mulInt(int num1, int num2) {
  int reslut = num1 * num2;
  return reslut;
}

double divInt(int num1, int num2) {
  double result = num1 / num2;
  return result;
}

// Factorial 구하기
// 4! = 4*3*2*1
// 결과
// 4's factorial balue = 24

main() {
  int inputValue = 4;
  int num = 1;
  int factorial = 1;

  while (num <= inputValue) {
    factorial *= num;
    num++;
  }
  print("$inputValue's facotrial value = $factorial");
}

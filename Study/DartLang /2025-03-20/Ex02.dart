// 입력한 한 자릿수 정수의 합 구하기
// 입력 숫자 : 12345678
// 결과
// Sum of 12345678 = 36
//Coding Test : 백준, Programmers

main() {
  int inputValue = 12345678;
  double sum = 0;
  int number = 1;
  double trash = 0;
  print(inputValue / 11);
  print(inputValue ~/ 11);
  print(inputValue % 11);

  while (number < 10) {
    if (number == 1) {
      sum += inputValue % 10;
      print(sum);
    } else if (number == 2) {
      trash = (inputValue / 10) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    } else if (number == 3) {
      trash = (inputValue / 100) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    } else if (number == 4) {
      trash = (inputValue / 1000) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    } else if (number == 5) {
      trash = (inputValue / 10000) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    } else if (number == 6) {
      trash = (inputValue / 100000) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    } else if (number == 7) {
      trash = (inputValue / 1000000) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    } else if (number == 8) {
      trash = (inputValue / 10000000) % 10;
      sum += trash.floor();
      print(sum);
      trash = 0;
    }
    number++;
  }
  print("Sum of $inputValue = $sum");
}

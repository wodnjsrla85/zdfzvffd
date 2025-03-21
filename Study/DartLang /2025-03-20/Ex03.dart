// List의 최대값과 최대값의 위치 구하기

// 결과
// 숫자들 중 최대값은 15이고 5번째 값 입니다.

main() {
  List<int> num = [11, 13, 12, 15, 12];
  int min = num[0];
  int i = 1;
  int loopIndex = 0;

  for (int number in num) {
    i++;
    if (min > number) {
      min = number;
      loopIndex = i;
    }
  }
  
  if (min == num[0]) {
    loopIndex = 1;
  }
  print("숫자들 중 최소값은 $min이고 $loopIndex번째 값 입니다.");
}

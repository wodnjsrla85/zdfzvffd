// List를 이용한 표시하기
// 입력 숫자 : [34,32,55,57,59,53,90,88,88,12]

// 결과
/*
    90 : #
    80 : ##
    70 : 
    60 :
    50 : ####
    40 :
    30 : ##
    20 : 
    10 : #
    0 :
*/

main() {
  List<int> input = [34, 32, 55, 57, 59, 53, 90, 88, 88, 12];
  int a = 0;
  String c = "#";
  List<int> index = [0, 0, 0, 0, 0, 0, 0, 0, 0];

  for (int i in input) {
    input[a] = input[a] ~/ 10;
    a++;
  }
  print(input);

  print("${c * 4}");

  for (int i = 0; i < input.length; i++) {
    switch (input[i]) {
      case 9:
        index[0] += 1;
      case 8:
        index[1] += 1;
      case 7:
        index[2] += 1;
      case 6:
        index[3] += 1;
      case 5:
        index[4] += 1;
      case 4:
        index[5] += 1;
      case 3:
        index[6] += 1;
      case 2:
        index[7] += 1;
      case 1:
        index[8] += 1;
    }
  }
  int d = 0;
  for (int i = 9; d < index.length; i--) {
    print("${(i) * 10} : ${c * index[d]}");
    d++;
  }
}

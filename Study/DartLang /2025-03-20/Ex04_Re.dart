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
  String c = "#";
  var histo = List<int>.filled(10, 0);
  print(input.length);
  print(histo);

  for (int i = 0; i < input.length; i++) {
    histo[(input[i] ~/ 10)-1]++; // 첫번째 반복때 input[0]~/10 = 3인데 histo[3]이 
    //나타내는 수는 30히스토그램을 나타내기 때문에 나온 3을 30에 넣기 위해 index번호에 -1을 해주고 ++로 값을 1올려주면 
    //숫자에 맞는 histo데이터를 1씩 올려준다.
  }
  print(histo);

  int d = 0;
  for (int i = 9; d < histo.length; i--) {
    print("${(i) * 10} : ${c * histo[d]}");
    d++;
  }
}

// List를 이용하여 5보다 작은 숫자만 List에 넣기

main() {
  List<int> nums = [1, 1, 2, 3, 4, 8, 13, 21, 34, 66, 89];
  List<int> result = [];

  for (int num in nums) {
    if (num < 5) {
      result.add(num);
    }
  }

  print(result);

  // List Comprehension
  print([for (int num in nums) if(num < 5) num,]); //print 안에 for문 그안에 if조건을 넣고 num을 출력하는 List Compreshension

}

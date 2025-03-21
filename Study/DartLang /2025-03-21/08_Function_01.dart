main() {
  // 일반소스에서 만드는 function = function class에서 만드는 function = method
  List<int> list1 = [1, 3, 5, 7, 9];
  int sum = 0;

  for (int li in list1) {
    sum += li;
  }

  print("합계 : $sum");
  //--------------------
  List<int> list2 = [10, 30, 50, 70, 90];
  int sum2 = 0;

  for (int li in list2) {
    sum2 += li;
  }

  print("합계 : $sum2");

  // 동일한 기능의 코드인데 중복되어 코딩함.
  addList(list1);
  addList(list2);

  int? sum1 = addList(list1);
  print("텍스트의 합계는 $sum1 입니다.");
  //function안에 print로 출력하기 때문에 오류 *return값을 사용 해야한다.
} //main

//함수는 메인안,밖에서 정의 가능하다.
int addList(List<int> list) { 
  //function의 반환값 타입도 지정해줘야한다.
  //함수 생성 이름(받아올 타입 / 이름)
  int sum = 0; //sum의 기본 지역변수

  for (int data in list) {
    //받아온 데이터로 for-in문
    sum += data;
  }
  return sum; //데이터를 보낸다.
  print("합계 : $sum"); //출력까지
}

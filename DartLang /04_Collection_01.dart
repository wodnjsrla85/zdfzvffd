main() {
  //List Collection
  List threeKingdoms = []; //List 선언 *타입을 설정하지 않으면 Dynamic으로 선언된다.

  //List에 데이터 추가하기
  threeKingdoms.add("위");
  threeKingdoms.add("촉");
  threeKingdoms.add("오");
  threeKingdoms.add("We");
  print(threeKingdoms);

  // 원하는 데이터만 출력하기 *데이터의 시작 Index는 0
  print(threeKingdoms[0]);

  // 수정 : 위 <- We
  threeKingdoms[0] = "We";
  print(threeKingdoms);

  // List의 삭제

  // Index번호로 삭제
  threeKingdoms.removeAt(1);
  print(threeKingdoms);

  // 데이터값으로 삭제 *데이터가 중복이면 앞의 데이터만 삭제
  threeKingdoms.remove('We');
  print(threeKingdoms);

  // 데이터 갯수 파악
  print(threeKingdoms.length);

  // 숫자 등록하기
  threeKingdoms.add(1); //list는 들어오는 데이터가 숫잔지 문자열인지 구분을 못해서 이런식으로 하면 리스트가 날라간다.
  print(threeKingdoms);

  // ------------
  //List의 정해진 변수 타입(Generic)의 데이터만 추가하기
  // ------------

  List<String> threeKingdoms2 = [];
  threeKingdoms2.add('We');
  //threeKingdoms2.add(1); String Generic으로 생성되어서 숫자는 Error발생!

  List<int> threeKingdoms3 = [];
  threeKingdoms3.add(1);
  //threeKingdoms3.add('we');

  // List 선언시 초기값 설정
  List<String> threeKindoms4 = ['위', '촉', '오'];

  // 위나라가 삼국을 통일 했습니다.
  print("${threeKindoms4[0]}나라가 삼국을 통일 했습니다."); //list의 해당 Index만 사용할려면 []가 필요하다.
}

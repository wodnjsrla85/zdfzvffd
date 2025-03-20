main() {
  // 조건문 (Conditional Statement)
  int num1 = 5;
  String result = "";

  if (num1 > 10) {
    //num1의 값이 10 보다 크면 {}안의 명령문을 실행 시켜라 *{}를 Scope라고 부른다.
    //print('입력된 숫자 $num1 은 10보다 큰 수 입니다.'); process안에 output이 있는경우
    result = "10보다 큰";
  } else if (num1 < 10) {
    //num1 > 10 말고 다른 조건을 하나 더 주고 싶을때 사용
    result = "10보다 작은";
  } else {
    //조건이 성립이 안되면 실행시킬 명령문
    result = "10보다 같은";
  }

  //프로그래밍의 기본은 IPO Input Process Output *Process에서 Output이 발생하면 안좋다.
  //파일이 커질 수록 모든 파일의 데이터 값을 일일이 바꿔줘야하는 문제가 생김
  print('입력된 숫자 $num1은(는) $result수 입니다.');

  // ------------------------------------------ //
  // Exercise
  // 변수에 있는 숫자 값을 비교해서
  // 숫자가 5의 배수이면 "입력된 숫자 _는 5의 배수 입니다"
  // 숫자가 5의 배수가 아니면 '입력된 숫자 _는 5의 배수가 아니며 나머지 값은 _입니다.'

  int num2 = 10;
  //result1을 굳이 만들 필요가 없어서 안만들었지만 나중에 필요한 로직에서는 작성

  if (num2 % 5 == 0) {
    result = "맞습니다";
  } else {
    result = "아니며 나머지 값은 ${num2 % 5}입니다.";
  }
  print('입력된 숫자$num2는 5의 배수가 $result');

  //Switch  조건식에 맞는 Case를 찾아서 실행시켜준다.
  switch (num2 % 5) {
    case 0:
      print("입력된 숫자 $num2는 5의 배수가 맞습니다");
    default:
      print('입력된 숫자 $num2는 5의 배수가 아니며 나머지 값은 ${num2 % 5}입니다.');
  }

  // Exercise
  // num2가 2의 배수이면 '2의 배수입니다.'
  // num2가 3의 배수이면 '3의 배수입니다.'
  // num2가 5의 배수이면 '5의 배수입니다.'
  num2 = 20;
  List<String> result0 = [];
  if (num2 % 2 == 0) {
    result0.add("2");
  }
  if (num2 % 3 == 0) {
    result0.add("3");
  }
  if (num2 % 5 == 0) {
    result0.add("5");
  }
  print('$num2는 $result0의 배수입니다.');
  result0 = []; //쓰고 초기화까지~


  // 점수를 입력 받아 학점으로 표시하기
  // 90점 이상 이면  : '입력하신 점수 _는 A학점 입니다.'
  // 80점 이상 이면  : '입력하신 점수 _는 B학점 입니다.'
  // 70점 이상 이면  : '입력하신 점수 _는 C학점 입니다.'
  // 60점 이상 이면  : '입력하신 점수 _는 D학점 입니다.'
  // 60점 미만 이면  : '입력하신 점수 _는 E학점 입니다.'
  int Score = 100;

  if (Score > 100 || Score < 0) {
    print("성적 데이터를 확인하세요");
  } else {
    if (Score >= 90) {
      result = "A";
    } else if (Score >= 80) {
      result = "B";
    } else if (Score >= 70) {
      result = "C";
    } else if (Score >= 60) {
      result = "D";
    } else if (Score < 60) {
      result = "E";
    } else {
      result = "F";
    }
  }
  print("입력하신 점수$Score는 $result학점 입니다");

  //Switch문으로 해보기
  if (Score > 100 || Score < 0) {
    print("성적 데이터를 확인하세요");
  } else {
    switch (Score ~/ 10) {
      case 10: //밑의 case와 같은 결과 값이면 따로 안쓰고 사용 가능
      case 9:
        result = "A";
      case 8:
        result = "B";
      case 7:
        result = "C";
      case 6:
        result = "D";
      default:
        result = "F";
    }
  }
  print("입력하신 점수$Score는 $result학점 입니다");

  // 삼항 연산자
  bool isPublic = true;
  var vis = isPublic ? "True" : "False";
  //isPublic이 True면 "True값을 넣고" False면 "False값을 넣어라"
  print(vis);
}

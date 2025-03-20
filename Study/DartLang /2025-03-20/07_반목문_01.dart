main() {
  // For문
  // 1부터 10까지 출력해보기

  for (int i = 1; i <= 10; i++) {
    //i의 값이 9랑 같거나 작을때까지 명령문을 실행해라 명령문 실행이 끝날때마다 i값을 1씩 증가시켜라
    print(i);
  }

  // 1부터 10까지 합 구하기
  int sum = 0; //전역변수 다른 함수나 명령문에서도 사용하는 변수
  int startNum = 1;
  int endNum = 10;
  /*for (int i = 1; i <= 10; i++) {
    //지역변수(함수 안에서만 사용하는 변수)
    sum += i;
  }*/
  for (int i = startNum; i <= endNum; i++) {
    //변수만 바뀌면 원하는 수부터 원하는 수까지의 합을 변수데이터만 바꿔서가능하다
    sum += i;
  }
  print('$startNum부터 $endNum까지의 합계는 $sum 입니다.');

  // Exercise
  // 1부터 10까지의 수중 짝수의 합과 홀수의 합 구하기(단 ,for문은 1개만 사용, 수의 범위는 변경 가능 하다)
  // 출력 예시 : 1부터 10까지의 수중 짝수의 합은 _이고 홀수의 합은 _ 입니다.

  int sumEven = 0; //Even(짝수)의 합계
  int sumOdd = 0; //Odd(홀수)의 합계
  int startNum1 = 1;
  int endtNum1 = 10;

  for (int i = startNum1; i <= endtNum1; i++) {
    if (i % 2 == 0) {
      sumEven += i;
    } else {
      sumOdd += i;
    }
  }
  print('$startNum1부터 $endtNum1까지의 수중 짝수의 합은 $sumEven이고 홀수의 합은 $sumOdd입니다');

  // List를 반복문에 사용하기
  List<int> numList = [1, 3, 5, 7, 9];
  int sumList = 0;

  for (int i = 0; i <= numList.length - 1; i++) {
    sumList += numList[i];
  }
  print(sumList);

  sumList = 0;
  for (int num in numList) {
    //for-in문 num에는 리스트들의 데이터가 들어가게 된다.
    sumList += num;
  }
  print(sumList);

  // while
  int sumNum = 0;
  int number = 1;

  while (number <= 10) {
    sumNum += number;
    number++; //증감식이 없으면 무한루프에 빠진다.
  }
  print(sumNum);

  //for문은 데이터의 범위가 정해진 데이터를 사용 while문은 정해져있지 않는 반복때 사용
  while (number <= 100) {
    if (number > 10) {
      break; //반복문을 빠져나갔때 사용 for문에서도 사용 가능
    }
    number++;
  }

  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue; //반복문중 continue를 만나면 바로 다음반복문으로 넘어간다.
    }
    print(i);
  }
}

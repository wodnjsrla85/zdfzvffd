//같은 parameter를 이용하여 함수하나에 여러가지 기능을 넣는법

main() {
  int num1 = 10;
  int num2 = 4;

  // 덧셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 14
  print(
    calcFunction2(num1, num2, "add"), //"add"는 기능을 구분 시키기 위해 사용
  ); //paramitter,paramitter,hypen parammitter

  // 뺄셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : "10 - 4 = 6"
  print(calcFunction2(num1, num2, "sub"));

  // 곱셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 40
  print(calcFunction2(num1, num2, "mul"));

  // 나눗셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 2.5
  print(calcFunction2(num1, num2, "div"));

  calcFunction3(num1, num2, "add");
  calcFunction3(num1, num2, "sub");
  calcFunction3(num1, num2, "mul");
  calcFunction3(num1, num2, "div");
} //main

calcFunction(int num1, int num2, String part) {
  //Augment
  //함수 하나에서 다 처리하기 위해서 dynamic 사용(형식을 안붙이면 dynamic)
  if (part == 'add') {
    return ("덧셈 결과는 ${num1 + num2} 입니다.");
  } else if (part == 'sub') {
    return ("뺄셈 결과는 ${num1 - num2} 입니다.");
  } else if (part == 'mul') {
    return ("곱셈 결과는 ${num1 * num2} 입니다.");
  } else if (part == 'div') {
    return ("나눗셈 결과는 ${num1 / num2} 입니다.");
  }
}

calcFunction1(int num1, int num2, String part) {
  //Augment
  //함수 하나에서 다 처리하기 위해서 dynamic 사용(형식을 안붙이면 dynamic)
  switch (part) {
    case 'add':
      return ("덧셈 결과는 ${num1 + num2} 입니다.");
    case 'sub':
      return ("뺄셈 결과는 ${num1 - num2} 입니다.");
    case 'mul':
      return ("곱셈 결과는 ${num1 * num2} 입니다.");
    case 'div':
      return ("나눗셈 결과는 ${num1 / num2} 입니다.");
    default:
      return ('사칙연산만 가능합니다.');
  }
}

calcFunction2(int num1, int num2, String part) {
  //Augment
  //함수 하나에서 다 처리하기 위해서 dynamic 사용(형식을 안붙이면 dynamic)
  List<String> parts = ['add', 'sub', 'mul', 'div'];
  List results = [num1 + num2, num1 - num2, num1 * num2, num1 / num2];
  List<String> resultsName = ['덧셈', '뺄셈', '곱셈', '나눗셈'];

  int i = 0;
  for (String s in parts) {
    if (part == s) {
      return ('${resultsName[i]} 결과는 ${results[i]} 입니다.');
    }
    i++;
  }
}

calcFunction3(int num1, int num2, String part) {
  //Augment
  //함수 하나에서 다 처리하기 위해서 dynamic 사용(형식을 안붙이면 dynamic)
  List<String> parts = ['add', 'sub', 'mul', 'div'];
  part == parts[0]
      ? print('덧셈 결과는 ${num1 + num2} 입니다.')
      : part == parts[1]
      ? print('뺄셈 결과는 ${num1 - num2} 입니다.')
      : part == parts[2]
      ? print('곱셈 결과는 ${num1 * num2} 입니다.')
      : print('나눗셈 결과는 ${num1 / num2} 입니다.');
}

//fuction들의 묶음을 Class 따로 Class파일을 만들어서 import해서 사용하기

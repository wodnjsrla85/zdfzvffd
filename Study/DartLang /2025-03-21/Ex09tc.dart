// 1부터 10까지의 합을 구하고 그 합이 홀수 인지 짝수 인지 출력
// 단, 클래스 1개 생성하고 클래스 메소드를 2개(합계, 홀짝수 판단)
// 숫자의 범위는 main에서 선언
// 클래스와의 데이터 연계 방법은 생성자를 사용한다.

//결과
/*
    1부터 10까지의 합은 55 입니다.
    1부터 10까지의 합의 수는 홀수 입니다.
  */

main() {
  int startNum = 1;
  int endNum = 10;

  Calc calc = Calc(startNum, endNum);
  int sum = calc.sumCalc();
  String result = calc.evenOdd(sum);

  print("$startNum 부터 $endNum 까지의 합은 $sum 입니다.");
  print("$startNum 부터 $endNum 까지의 합의 수는 $result 입니다.");
}

class Calc {
  late int num1;
  late int num2;

  Calc(int num1, int num2) : this.num1 = num1, this.num2 = num2;

  // facotry 생성자
  factory Calc.check(int num1, int num2) { 
    //생성자에서 생성할 데이터들의 검수가 필요할 경우 *이 코드에서는 num1이 커야 되기때문에 factory로 서로 숫자를 바꿔준다,
    int startNum = 0;
    int endNum = 0;

    if (num1 > num2) {
      startNum = num2;
      endNum = num1;
    } else {
      startNum = num1;
      endNum = num2;
    }

    return Calc(startNum, endNum); //생성자를 불러옴
  }

  int sumCalc() {
    int sum = 0;
    for (int i = num1; i <= num2; i++) {
      sum += i;
    }
    return sum;
  }

  String evenOdd(int sum) {
    String result;
    if (sum % 2 == 0) {
      result = "짝수";
    } else {
      result = "홀수";
    }
    return result;
  }
}

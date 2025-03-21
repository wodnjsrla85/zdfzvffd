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
  int sum = 0;

  Calc(int num1, int num2) : this.num1 = num1, this.num2 = num2;

  int sumCalc() {
    if (num1 < num2) {
      while (num1 <= num2) {
        sum += num1;
        num1++;
      }
    }else{
      while (num2 <= num1) {
      sum += num2;
      num2++;
      }
    }
    return sum;
  }

  String evenOdd(int sum) {
    String result;
    if (sum % 2 == 0) {
      result = '짝수';
    } else {
      result = '홀수';
    }
    return result;
  }
}

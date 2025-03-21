// BMI 계산하기 체중/키^2
// 신장이 170cm이고 몸무게가 70kg인 경우의 BMI 계산하기

main() {
  double heightCm = 170;
  double weight = 70;

  double heightM = heightCm * 0.01;
  double bmi = weight / (heightM * heightM);

  print(bmi);

  if (bmi >= 0 && bmi <= 18.4) {
    print('저체중');
  } else if (bmi >= 18.5 && bmi <= 22.9) {
    print('정상체중');
  } else if (bmi >= 23 && bmi <= 24.9) {
    print('과체중');
  } else if (bmi >= 25 && bmi <= 29.9) {
    print('비만');
  } else if (bmi >= 30) {
    print('고도비만');
  }
}


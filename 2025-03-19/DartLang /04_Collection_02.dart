main() {
  // Map : Key와 Value로 이루어진 Collection *중괄호 사용하여 데이터 지정
  Map fruits = {
    'apple': '사과',
    'grape': '포도',
    'watermelon': '수박',
  }; //Key와 Value로 이루어짐 *List는 [] Map은 {}

  // 원하는 정보 검색하기
  print(fruits['apple']);

  // 수정하기
  fruits['watermelon'] = '시원한 수박';
  print(fruits);

  // 데이터 추가하기
  fruits['banana'] = '바나나';
  print(fruits);

  // Map 새로운 구성
  Map carMakers = {};
  carMakers['aaa'] = 'AAA'; //데이터 넣기
  carMakers.addAll({'hyundai': '현대자동차', 'kia': '기아자동차'}); //여러데이터 한번에 넣기
  print(carMakers);

  // Map의 key값만 따로 출력하기
  print(carMakers.keys.toString()); // Tuple() 형식으로 출력 *Tuple : 읽기 전용
  print(carMakers.keys.toList()); //List[] 형식으로 출력 *Tuple과 다르게 수정 가능

  print(carMakers.values.toList()); //데이터값만 출력

  var carMakersNames = carMakers.keys.toString(); //데이터를 가지고 올때 형식을 잘 모르면 var 사용

  // Generic선언
  Map<String, int> fruitsPrice = {
    //key값과 데이터값의 Generic을 따로 선언
    'apple': 1000,
    'grape': 2000,
    'watermemlon': 3000,
  };

  print(fruitsPrice['apple']); //사과값 출력하기
  int applePrice = fruitsPrice['apple']!; //int? <- 옵셔널타입 / 만약 데이터가 들어와야하는데 null값이면 오류가 생기기 때문에 만들어진 타입 뒤에 !를 붙여서 해결가능

  print('사과의 가격은 $applePrice 입니다.');
}

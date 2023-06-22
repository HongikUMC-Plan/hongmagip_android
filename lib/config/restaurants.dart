// 각 분류의 type 값을 받아와서 해당하는 restaurant list를 반환
List<String> findRestaurantType(String type) {
  switch (type) {
    case '한식':
      return koreanRestaurant;
    case '중식':
      return chineseRestaurant;
    case '일식':
      return japaneseRestaurant;
    case '양식':
      return westernRestaurant;
    case '아시안':
      return asianRestaurant;
    case '패푸':
      return fastRestaurant;
    case '분식':
      return snackRestaurant;
    case '기타':
      return etcRestaurant;
    default:
      return [];
  }
}

int findRestaurantIndex(String type) {
  if (koreanRestaurant.contains(type)) {
    return 0;
  } else if (chineseRestaurant.contains(type)) {
    return 1;
  } else if (japaneseRestaurant.contains(type)) {
    return 2;
  } else if (westernRestaurant.contains(type)) {
    return 3;
  } else if (asianRestaurant.contains(type)) {
    return 4;
  } else if (fastRestaurant.contains(type)) {
    return 5;
  } else if (snackRestaurant.contains(type)) {
    return 6;
  } else if (etcRestaurant.contains(type)) {
    return 7;
  } else {
    return 8;
  }
}

// 한식
final List<String> koreanRestaurant = [
  '집밥김치찌개',
  '한석화',
  '국시와 가래떡',
  '율촌',
  '제순식당',
  '발바리네',
  '금복식당',
  '후계동',
  '다락투'
];
// 중식
final List<String> chineseRestaurant = [
  '카이화',
  '명장',
  '향차이',
  '환시앙',
  '손오공마라탕 서교점',
  '타오마라탕',
  '짬뽕지존',
  '샤오바오',
  '신주양꼬치',
];
// 일식
final List<String> japaneseRestaurant = [
  '소코아',
  '카미야',
  '겐로쿠우동',
  '칸다소바',
  '유익상스시',
  '카츠업',
  '히메시야',
  '멘타카무쇼',
  '라멘트럭'
];
// 양식
final List<String> westernRestaurant = [
  '아티장 깔조네',
  '필동함박',
  '바리',
  '봉대박파스타',
  '롤링파스타',
  '진짜파스타',
  '이양권반상',
  '윤씨밀방',
  '비스트로주라'
];
// 아시안
final List<String> asianRestaurant = [
  '포보',
  '꼬이',
  '미분당',
  '더 키친 아시아 인도',
  '델리인디아',
  '산띠',
  '1976샤브샤브',
  '침사추이누들',
  '에이시안'
];
// 패푸
final List<String> fastRestaurant = [
  '스매쉬보이',
  '식스티즈',
  '서브웨이',
  '테이스티버거',
  '버거스올마이티',
  '맘스터치',
  '버거킹',
  '더 피자 보이즈',
  '에그드랍'
];
// 분식
final List<String> snackRestaurant = [
  '또보겠지',
  '삼청당',
  '삭',
  '봉봉',
  '그동네떡볶이',
  '김가네',
  '오늘타코',
  '지지고',
  '무궁화타운'
];
// 기타
final List<String> etcRestaurant = [
  '더그리니치',
  '샌디 빌리지',
  '구스토타코',
  '도시락집 미미',
  '긴자료코',
  '상수 냉장고',
  '무쇠김치삼겹살',
  '넙딱집',
  '등촌'
];
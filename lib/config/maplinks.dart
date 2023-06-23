
// 식당이름, 분류를 받아온다.
// -> 분류에 따른 식당 리스트에서 식당 이름의 인덱스를 찾는다.
// -> 인덱스에 해당하는 링크
// 인덱스, 분류를 받아온다.
// -> 분류에 따른 링크리스트를 매치한다.
// -> 인덱스에 해당하는 링크리스트의 값(링크)을 반환한다.

// String kakaoLink = getKakaoLink(restaurant, type);
// String naverLink = getNaverLink(restaurant, type);

import 'package:hongmagip_android/config/restaurants.dart';

List<String> matchKakaoLink(String type){
  switch (type) {
    case '한식':
      return kakaoKoreanList;
    case '중식':
      return kakaoChineseList;
    case '일식':
      return kakaoJapaneseList;
    case '양식':
      return kakaoWesternList;
    case '아시안':
      return kakaoAsianList;
    case '패푸':
      return kakaoFastList;
    case '분식':
      return kakaoSnackList;
    case '기타':
      return kakaoAsianList;
    default:
      return [];
  }
}

// String getKakaoLink(List<String> linkList){
//
// }


// kakao map link lists
final List<String> kakaoKoreanList = [
  'https://place.map.kakao.com/1718126650',
  'https://place.map.kakao.com/1993290266',
  'https://place.map.kakao.com/14734012',
  'https://place.map.kakao.com/24580312',
  'https://place.map.kakao.com/490667330',
  'https://place.map.kakao.com/15625653',
  'https://place.map.kakao.com/1722785841',
  'https://place.map.kakao.com/1183957472',
  'https://place.map.kakao.com/10278424'
];

final List<String> kakaoChineseList = [
  'https://place.map.kakao.com/570518757',
  'https://place.map.kakao.com/1237520308',
  'https://place.map.kakao.com/957182243',
  'https://place.map.kakao.com/1056365433',
  'https://place.map.kakao.com/474254018',
  'https://place.map.kakao.com/2088827518',
  'https://place.map.kakao.com/2082473107',
  'https://place.map.kakao.com/2145716193',
  'https://place.map.kakao.com/26873353'
];

final List<String> kakaoJapaneseList = [
  'https://place.map.kakao.com/1426286680',
  'https://place.map.kakao.com/12771116',
  'https://place.map.kakao.com/12437276',
  'https://place.map.kakao.com/2057792795',
  'https://place.map.kakao.com/1653817475',
  'https://place.map.kakao.com/1318186006',
  'https://place.map.kakao.com/21960086',
  'https://place.map.kakao.com/1704662385',
  'https://place.map.kakao.com/1859634829'
];

final List<String> kakaoWesternList = [
  'https://place.map.kakao.com/1694657356',
  'https://place.map.kakao.com/1711475071',
  'https://place.map.kakao.com/2052188089',
  'https://place.map.kakao.com/1056158711',
  'https://place.map.kakao.com/1680046810',
  'https://place.map.kakao.com/1591202287',
  'https://place.map.kakao.com/1978020868',
  'https://place.map.kakao.com/13113825',
  'https://place.map.kakao.com/27272711'
];

final List<String> kakaoAsianList = [
  'https://place.map.kakao.com/19032335',
  'https://place.map.kakao.com/969025722',
  'https://place.map.kakao.com/1551661200',
  'https://place.map.kakao.com/228801586',
  'https://place.map.kakao.com/27416360',
  'https://place.map.kakao.com/9926329',
  'https://place.map.kakao.com/21358621',
  'https://place.map.kakao.com/352051170',
  'https://place.map.kakao.com/1709780448'
];

final List<String> kakaoFastList = [
  'https://place.map.kakao.com/1677721147',
  'https://place.map.kakao.com/488474938',
  'https://place.map.kakao.com/285790744',
  'https://place.map.kakao.com/1737612851',
  'https://place.map.kakao.com/358894731',
  'https://place.map.kakao.com/27469228',
  'https://place.map.kakao.com/723372106',
  'https://place.map.kakao.com/27548461',
  'https://place.map.kakao.com/1267694470'
];

final List<String> kakaoSnackList = [
  'https://place.map.kakao.com/895272833',
  'https://place.map.kakao.com/2081735366',
  'https://place.map.kakao.com/19909925',
  'https://place.map.kakao.com/824668308',
  'https://place.map.kakao.com/25859396',
  'https://place.map.kakao.com/26932953',
  'https://place.map.kakao.com/2011916768',
  'https://place.map.kakao.com/20125512',
  'https://place.map.kakao.com/2028048009'
];

final List<String> kakaoEtcList = [
  'https://place.map.kakao.com/1287662476',
  'https://place.map.kakao.com/326057387',
  'https://place.map.kakao.com/20885402',
  'https://place.map.kakao.com/404647637',
  'https://place.map.kakao.com/468200097',
  'https://place.map.kakao.com/1753129148',
  'https://place.map.kakao.com/75559616',
  'https://place.map.kakao.com/375498117',
  'https://place.map.kakao.com/11088775'
];

// naver map link lists
final List <String> naverKoreanList = [
  'https://naver.me/G7yZnRj3',
  'https://naver.me/GLKw0xKS',
  'https://naver.me/GFp6dQrf',
  'https://naver.me/xTeG4fub',
  'https://naver.me/Fa3Sf9u2',
  'https://naver.me/IFjFAnPq',
  'https://naver.me/Gi9sddAD',
  'https://naver.me/GrSqA7zz',
  'https://naver.me/FArQ0N71',
];

final List <String> naverChineseList = [
  'https://naver.me/xdIkBfe0',
  'https://naver.me/5xlj37Q2',
  'https://naver.me/5Aq4fm0H',
  'https://naver.me/GulKaGh7',
  'https://naver.me/GWFrxjxt',
  'https://naver.me/xuCo4a5K',
  'https://naver.me/G6iwP4Rn',
  'https://naver.me/G1IftBzu',
  'https://naver.me/5L3o0RIT',
];

final List <String> naverJapaneseList = [
  'https://naver.me/G99stgXV',
  'https://naver.me/FpXMPQnn',
  'https://naver.me/xTeS3hZo',
  'https://naver.me/FNmlmEOE',
  'https://naver.me/xorKaKsH',
  'https://naver.me/IMpSqxJy',
  'https://naver.me/Goz554bk',
  'https://naver.me/5zJo6mlA',
  'https://naver.me/GfaMoA49',
];

final List <String> naverWesternList = [
  'https://naver.me/5012okWF',
  'https://naver.me/GrSbXApA',
  'https://naver.me/xFptjoT3',
  'https://naver.me/5rsMJ2rE',
  'https://naver.me/GKovMpo5',
  'https://naver.me/xhHnAQnZ',
  'https://naver.me/xgaIMeEu',
  'https://naver.me/5MUCs2hm',
  'https://naver.me/xrP6Wq73',
];

final List <String> naverAsianList = [
  'https://naver.me/GXEAmQpC',
  'https://naver.me/GAi635xC',
  'https://naver.me/GsTOukcc',
  'https://naver.me/FwnAibqF',
  'https://naver.me/Fk5dbzJm',
  'https://naver.me/GAi6krWy',
  'https://naver.me/GEAu92kC',
  'https://naver.me/Gw5ErJ2R',
  'https://naver.me/Go5154qZ',
];

final List <String> fastKoreanList = [
  'https://naver.me/5fnjJdjC',
  'https://naver.me/5aVtf9Q3',
  'https://naver.me/xkxbRLKX',
  'https://naver.me/xv0Lj0iy',
  'https://naver.me/xuCAVk8y',
  'https://naver.me/F0Kww608',
  'https://naver.me/F1IrRPKx',
  'https://naver.me/GeW5O3FW',
  'https://naver.me/FIgoWp1s',
];

final List <String> naverSnackList = [
  'https://naver.me/FjoACQRW',
  'https://naver.me/GEALmHaf',
  'https://naver.me/xRQPPk6X',
  'https://naver.me/Fjo7Pq8a',
  'https://naver.me/5tjeOb7E',
  'https://naver.me/5aVvOv9s',
  'https://naver.me/IG6cR415',
  'https://naver.me/GEAI3qGb',
  'https://naver.me/5jY81Wgg',
];

final List <String> naverEtcList = [
  'https://naver.me/GNyPrWIa',
  'https://naver.me/GHDYP3p6',
  'https://naver.me/52lhlK0O',
  'https://naver.me/xdIkifHt',
  'https://naver.me/5Tv3XLvW',
  'https://naver.me/GbEcCupJ',
  'https://naver.me/FhAdCwEM',
  'https://naver.me/FuVE56G5',
  'https://naver.me/GbEcPRYr',
];
import 'package:flutter/material.dart';
import 'package:hongmagip_android/screens/subview/detailview/searchResult.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/maplinks.dart';
import '../../../config/palette.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void showDetailPage(BuildContext context, String restaurant, String type) {
  matchKakaoLink(type);
  List<String> kakaolinkList = matchKakaoLink(type);
  List<String> naverlinkList = matchNaverLink(type);
  int index = giverestaurantIndex(restaurant);

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
          child: Padding(
            padding: EdgeInsets.fromLTRB(32, 62, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // 식당이름 및 분류 text row
                  children: [
                    Text(
                      restaurant,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          letterSpacing: -2),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        type,
                        style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                            letterSpacing: -1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  // kakao, naver 지도 button row
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                                kakaolinkList[index],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20),
                            ),
                          ),
                          backgroundColor: Palette.kakao,
                        ),
                        child: Image.asset(
                            'assets/image/kakao.png',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                              naverlinkList[index],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20),
                            ),
                          ),
                          backgroundColor: Palette.naver,
                        ),
                        child: Image.asset(
                          'assets/image/naver.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Container( // Best Review 상단 실선
                  height:1.0,
                  color:Colors.grey,
                ),
                Padding( // Best Review text
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 14),
                  child: Text(
                    'Best Review',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: -1.5),
                  ),
                ),
                Expanded( // 상위 review 나열된 listview'
                  child: SearchResultPage(searchKeyword: "홍대 $restaurant"),
                ),
              ],
            ),
          ),
      );
    },
  );
}

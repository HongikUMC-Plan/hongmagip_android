import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'package:hongmagip_android/config/restaurants.dart';
import 'package:hongmagip_android/screens/random.dart';
import 'package:hongmagip_android/screens/subview/detailview/detailPage.dart';
import 'package:hongmagip_android/screens/subview/etcList.dart';
import 'package:hongmagip_android/screens/subview/snackList.dart';
import 'package:hongmagip_android/screens/subview/fastList.dart';
import 'package:hongmagip_android/screens/subview/asianList.dart';
import 'package:hongmagip_android/screens/subview/westernList.dart';
import 'package:hongmagip_android/screens/subview/japaneseList.dart';
import 'package:hongmagip_android/screens/subview/chineseList.dart';
import 'package:hongmagip_android/screens/subview/koreanList.dart';
import 'package:url_launcher/url_launcher.dart';


class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

// 카테고리 목록
final List<CategoryInfo> categories = [
  CategoryInfo('한식', Palette.blue1, KoreanList()),
  CategoryInfo('중식', Palette.blue2, ChineseList()),
  CategoryInfo('일식', Palette.blue3, JapaneseList()),
  CategoryInfo('양식', Palette.blue3, WesternList()),
  CategoryInfo('로고', Palette.blue3, WesternList()),
  CategoryInfo('아시안', Palette.blue1, AsianList()),
  CategoryInfo('패푸', Palette.blue2, FastList()),
  CategoryInfo('분식', Palette.blue1, SnackList()),
  CategoryInfo('기타', Palette.blue3, EtcList()),
];

// 각 카테고리 정보를 담는 클래스
class CategoryInfo {
  final String name;
  final Color color;
  final Widget route;

  CategoryInfo(this.name, this.color, this.route);
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  String randomRestaurant = '';
  String type = '';
  late StateSetter stateSetter;

  void updateRandomRestaurant(){
    setState(() {
      randomRestaurant = chooseRandomRestaurant();
      type = findRestaurantType(randomRestaurant);
      stateSetter(() {});
    });
  }
  void resetRandomRestaurant() {
    setState(() {
      randomRestaurant = '';
      type = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.2,
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => categories[index].route));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index].color,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          index == 4 // 로고 아이콘
                              ? Image(image: AssetImage('assets/image/로고.png'))
                              : Text(
                            categories[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 2,),
                    InkWell(
                      onTap: (){
                        resetRandomRestaurant();
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: Center(
                                child: Column(
                                  children: <Widget> [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Text(
                                      '랜덤선택',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 32,
                                          letterSpacing: -2),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                                      child: SizedBox(
                                        height: 100,
                                        child: InkWell(
                                          child: SizedBox(
                                            child: StatefulBuilder(
                                              builder: (BuildContext context, StateSetter setState) {
                                                return TextButton(
                                                  onPressed: (){
                                                    showDetailPage(context, randomRestaurant, type);
                                                  },
                                                  child: StatefulBuilder(
                                                    builder: (BuildContext context, StateSetter setState){
                                                      stateSetter = setState;
                                                      return Text(
                                                        randomRestaurant,
                                                        style: TextStyle(
                                                          fontFamily: 'Pretendard',
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 24,
                                                          letterSpacing: -2
                                                        ),
                                                      );
                                                    }
                                                  ),
                                                );
                                              }
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Image.asset(
                                        'assets/image/dice.gif',
                                        width: 150,
                                        height: 150,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 32),
                                      child: ElevatedButton(
                                        onPressed: updateRandomRestaurant,
                                        child: Text(
                                          '랜덤 돌리기',
                                          style: TextStyle(
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              letterSpacing: -1.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/image/랜덤.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Spacer(flex: 1,),
                    InkWell(
                      onTap: (){
                        launchUrl(
                          Uri.parse(
                              'https://instagram.com/hongik_mumukji?igshid=OGQ5ZDc2ODk2ZA=='
                          ),
                        ); // instagram url
                      },
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/image/인스타그램.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Spacer(flex: 2,),
                  ],
                ),
                // if (_bannerAd != null)
                //   Align(
                //     alignment: Alignment.bottomCenter,
                //     child: SizedBox(
                //       width: _bannerAd!.size.width.toDouble(),
                //       height: _bannerAd!.size.height.toDouble(),
                //       child: AdWidget(ad: _bannerAd!),
                //     ),
                //   ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
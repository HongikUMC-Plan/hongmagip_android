import 'package:flutter/material.dart';
import 'package:hongmagip_android/models/restaurants.dart';
import 'package:hongmagip_android/utilities/random.dart';
import 'package:hongmagip_android/screens/detail_view/detail_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors/palette.dart';
import '../models/category.dart';
import '../models/info.dart';

class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  String randomRestaurant = '';
  String type = '';
  late StateSetter stateSetter;

  get restaurantList => null;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.1,
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
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      if (index == 4) {
                        showInfoPage(context);
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => categories[index].route));
                      }
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index].color,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          index == 4 // 로고 아이콘
                              ? Expanded(child: Image(
                              image: AssetImage('assets/image/logo_non.png'))
                              )
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
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  InkWell(
                    onTap: (){
                      resetRandomRestaurant();
                      showModalBottomSheet(
                        backgroundColor: Palette.sheetColor,
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.95,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget> [
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
                                                        letterSpacing: -2,
                                                        color: Palette.defaultColor,
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
                                  Image.asset(
                                    'assets/image/dice.gif',
                                    width: 150,
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 32),
                                    child: ElevatedButton(
                                      onPressed: updateRandomRestaurant,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white, // 배경색을 하얀색으로 설정
                                      ),
                                      child: Text(
                                        '랜덤 돌리기',
                                        style: TextStyle(
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: -1.5,
                                            color: Palette.defaultColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
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
            ),
          ),
        ],
      ),
    );
  }
}
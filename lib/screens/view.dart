import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'package:hongmagip_android/screens/random.dart';
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

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  String randomRestaurant = '';
  late StateSetter stateSetter;

  void updateRandomRestaurant(){
    setState(() {
      randomRestaurant = chooseRandomRestaurant();
      stateSetter(() {});
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
          Flexible(
            flex: 3,
              child: Container()
          ),
          Flexible(
            flex: 7,
            child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6),
              physics: NeverScrollableScrollPhysics(),
              children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("한식",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChineseList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue2,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("중식",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>JapaneseList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue3,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("일식",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WesternList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue3,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("양식",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                // },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('assets/image/로고힌.png'),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AsianList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("아시안",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FastList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue2,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("패푸",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SnackList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("분식",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EtcList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue3,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("기타",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 32),)
                    ],
                  ),
                ),
              ),
            ],
            ),
          ),
          ),
            Flexible(
            flex: 3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 2,),
                    InkWell(
                      onTap: (){
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
                                            child: TextButton(
                                              onPressed: (){
                                                // showDetailPage(context, restaurant, type)
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
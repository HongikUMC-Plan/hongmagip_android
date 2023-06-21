import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'package:hongmagip_android/screens/randomview.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6),children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("한식",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChineseList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("중식",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>JapaneseList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("일식",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WesternList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("양식",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
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
                      Image(image: AssetImage('assets/image/로고2.png'),)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AsianList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("아시안",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FastList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("패푸",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SnackList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("분식",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EtcList()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("기타",style: TextStyle(color: Colors.white,fontFamily: 'Pretendard',fontWeight: FontWeight.w700,fontSize: 32),)
                    ],
                  ),
                ),
              ),
            ],
            ),
          ),
          ),
            Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  ElevatedButton(
                    onPressed: () {
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
                                        height: 300
                                      ),
                                      Text('식당 랜덤 선택'),
                                      TextButton(onPressed: (){},
                                          child: Text('랜덤'))
                                    ],
                                ),
                              ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(50, 50),
                        shape: const CircleBorder(),
                        // foregroundColor: Palette.buttonIconColor,
                        // backgroundColor: Palette.buttonColor
                    ),
                    child: Icon(Icons.sentiment_satisfied),
                  ),
                  Spacer(flex: 1,),
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(
                          Uri.parse(
                              'https://instagram.com/hongik_mumukji?igshid=OGQ5ZDc2ODk2ZA=='
                          ),
                      ); // instagram url
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(50, 50),
                      shape: const CircleBorder(),
                    ),
                    child: Image(image: AssetImage('assets/image/인스타그램.png'),
                    ),
                  ),
                  Spacer(flex: 2,),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
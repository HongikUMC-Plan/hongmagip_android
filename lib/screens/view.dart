import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'package:hongmagip_android/screens/subview/etcList.dart';
import 'package:hongmagip_android/screens/subview/snackList.dart';
import 'package:hongmagip_android/screens/subview/fastList.dart';
import 'package:hongmagip_android/screens/subview/asianList.dart';
import 'package:hongmagip_android/screens/subview/westernList.dart';
import 'package:hongmagip_android/screens/subview/japaneseList.dart';
import 'package:hongmagip_android/screens/subview/chineseList.dart';
import 'package:hongmagip_android/screens/subview/koreanList.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hongmagip_android/ad_helper.dart';


class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  // BannerAd? _bannerAd;
  //
  // @override
  // void initState(){
  //   super.initState();
  //   BannerAd(
  //     adUnitId: AdHelper.bannerAdUnitId,
  //     request: AdRequest(),
  //     size: AdSize.banner,
  //     listener: BannerAdListener(
  //       onAdLoaded: (ad) {
  //         setState(() {
  //           _bannerAd = ad as BannerAd;
  //         });
  //       },
  //       onAdFailedToLoad: (ad, err) {
  //         print('Failed to load a banner ad: ${err.message}');
  //         ad.dispose();
  //       },
  //     ),
  //   ).load();
  // }

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
//   @override
//   void dispose() {
//     // TODO: Dispose a BannerAd object
//     _bannerAd?.dispose();
//     super.dispose();
//   }
// }
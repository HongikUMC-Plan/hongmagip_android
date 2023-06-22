import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import '../view.dart';
import '../popupview.dart';
import 'detailview/detailPage.dart';

class KoreanList extends StatefulWidget {
  const KoreanList({ Key? key }) : super(key: key);

  @override
  _KoreanListState createState() => _KoreanListState();
}

final List<String> type = [
  '한식'
];

final List<String> restaurantList = [
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

class _KoreanListState extends State<KoreanList> {

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
              flex: 2,
              child: Container()
          ),
          Flexible(
              child: Text('한식', style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800),)),
          Flexible(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: (){
                      showDetailPage(context);
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[0],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[1],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[2],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[3],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[4],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[5],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[6],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[7],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KoreanList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue1,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[8],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context, MaterialPageRoute(
                        builder: (context) => ViewScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(50, 50),
                    shape: const CircleBorder(),
                    foregroundColor: Palette.buttonIconColor,
                    backgroundColor: Palette.buttonColor,
                  ),
                  child: Icon(Icons.keyboard_return),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
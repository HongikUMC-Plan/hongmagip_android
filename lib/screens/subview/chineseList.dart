import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import '../view.dart';

class ChineseList extends StatefulWidget {
  const ChineseList({ Key? key }) : super(key: key);

  @override
  _ChineseListState createState() => _ChineseListState();
}

final List<String> restaurantList = [
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

class _ChineseListState extends State<ChineseList> {

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
              child: Text('중식', style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800),)),
          Flexible(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChineseList()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Palette.blue2,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(restaurantList[0],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[1],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[2],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[3],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[4],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[5],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[6],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
                        children: [
                          Text(restaurantList[7],style: TextStyle( color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
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
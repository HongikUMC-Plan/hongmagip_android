import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'package:hongmagip_android/config/restaurants.dart';
import 'package:hongmagip_android/config/restaurantTypes.dart';
import '../view.dart';
import 'detailview/detailPage.dart';

class ChineseList extends StatefulWidget {
  const ChineseList({ Key? key }) : super(key: key);

  @override
  _ChineseListState createState() => _ChineseListState();
}

final String type = restaurantType[1];
final restaurantList = chineseRestaurant;

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
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Container()
          ),
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Text(type, style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800),)),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 6,crossAxisSpacing: 6),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: (){
                      showDetailPage(context, restaurantList[0], type);
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
                      showDetailPage(context, restaurantList[1], type);
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
                      showDetailPage(context, restaurantList[2], type);
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
                      showDetailPage(context, restaurantList[3], type);
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
                      showDetailPage(context, restaurantList[4], type);
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
                      showDetailPage(context, restaurantList[5], type);
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
                      showDetailPage(context, restaurantList[6], type);
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
                      showDetailPage(context, restaurantList[7], type);
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
                      showDetailPage(context, restaurantList[8], type);
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
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                InkWell(
                  onTap: (){
                    Navigator.pop(
                      context, MaterialPageRoute(
                        builder: (context) => ViewScreen()),
                    );
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/image/뒤로가기.png',
                    width: 50,
                    height: 50,
                  ),
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
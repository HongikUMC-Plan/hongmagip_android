import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/restaurantTypes.dart';
import 'package:hongmagip_android/config/restaurants.dart';
import 'package:hongmagip_android/screens/view.dart';
import 'package:hongmagip_android/screens/subview.dart';

import '../../config/palette.dart';

class KoreanList extends StatefulWidget {
  const KoreanList({ Key? key }) : super(key: key);

  @override
  _KoreanListState createState() => _KoreanListState();
}

class _KoreanListState extends State<KoreanList> {

  final String type = restaurantType[0];
  final List<String> restaurantList = koreanRestaurant;
  final Color containerColor = Palette.blue1;

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
          SubView(type: type, restaurantList: restaurantList, containerColor: containerColor,), // 변경
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
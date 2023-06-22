import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'view.dart';
import 'popupview.dart';

class SubViewScreen extends StatefulWidget {
  const SubViewScreen({Key? key}) : super(key: key);

  @override
  State<SubViewScreen> createState() => _SubViewScreenState();
}

class _SubViewScreenState extends State<SubViewScreen> {
  bool isSubViewScreen = true;
  bool isSelected = true;  // default : not liked

  final List<String> restaurantList = [
    '제순식당',
    '봉봉',
    '비비리',
    '삼청당',
    '율촌',
    '국시와가래떡',
    '홍익수제비',
    '향미',
    '알촌',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0), // remove appbar
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Center( // align the widgets to center
        child: Column( // make a vertical array of widgets
          children: [
            SizedBox(
              height: 380,
              child: Expanded( // fit size to the screen
                child: GridView.builder(
                  itemCount: restaurantList.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1/1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          if (restaurantList[index] == '제순식당') {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 500,
                                  child: Center(
                                    child: Text('제순식당'),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      child: Stack(
                        children: <Widget>[
                          Container(
                            color: Color(0xFF9CABC2).withOpacity(0.35),
                            margin: EdgeInsets.all(1), // space between each squares
                            child: Center(  // centered top-bottom
                              child: Text(
                                restaurantList[index],
                                textAlign: TextAlign.center, //centered left-right
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 20,
                                  color: Palette.defaultColor,
                                ),
                              ),
                            ),
                          ),
                          // Positioned(
                          //   width: 200,
                          //   height: 10,
                          //   child: IconButton(
                          //     onPressed: () {
                          //       setState(() {
                          //         isSelected = !isSelected;
                          //       });
                          //     },
                          //     color: Palette.LikedColor,
                          //     icon: Icon(
                          //       isSelected ? Icons.favorite
                          //           : Icons.favorite_border,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
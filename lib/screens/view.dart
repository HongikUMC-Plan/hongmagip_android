import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'subview.dart';

class ViewScreen extends StatefulWidget {
  ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  List<bool> isSelectedList = List<bool>.generate(9, (index) => false);

  final List<String> bapList = [
    '한식',
    '중식',
    '일식',
    '양식',
    '홍맛',
    '아시안',
    '패ꞏ푸',
    '분식',
    '기타',
  ];

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
      body: Center( // align the widgets to center
        child: Column( // make a vertical array of widgets
          children: [
            SizedBox(
              height: 380,
              child: Expanded( // fit size to the screen
                child: GridView.builder(
                  itemCount: bapList.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1/1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    var isSelected = isSelectedList[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SubViewScreen())
                        );
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Stack(
                        children: <Widget>[
                          GridTile(
                            child: Container(
                              color: Color(0xFF9CABC2).withOpacity(0.35),
                              margin: EdgeInsets.all(1),
                            child: Center(
                              child: Text(
                                bapList[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: 20,
                                color: Palette.defaultColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            width: 200,
                            height: 10,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isSelectedList[index] = !isSelectedList[index];
                                });
                              },
                              color: Palette.LikedColor,
                              icon: Icon(
                                isSelectedList[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                              ),
                            ),
                          ),
                        ],
                      )
                    );
                  },
                ),
              ),
            ),
            // nine squares form
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2,),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 500,
                          child: Center(
                            child: Text('식당 랜덤 선택'),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(50, 50),
                      shape: const CircleBorder(),
                      foregroundColor: Palette.buttonIconColor,
                      backgroundColor: Palette.buttonColor
                  ),
                  child: Icon(Icons.sentiment_satisfied),
                ),
                Spacer(flex: 1,),
                ElevatedButton(
                  onPressed: () {
                    // instagram url
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(50, 50),
                    shape: const CircleBorder(),
                    foregroundColor: Palette.buttonIconColor,
                    backgroundColor: Palette.buttonColor,
                  ),
                  child: Icon(Icons.account_box),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
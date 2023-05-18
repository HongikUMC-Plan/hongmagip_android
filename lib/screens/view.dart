import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewScreen = true;
  bool isSelected = true;  // default : not liked

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0), // remove appbar
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
      ),
      body: Center( // align the widgets to center
        child: Column( // make a vertical array of widgets
          children: [
              SizedBox(
                height: 180,
              ),
              Expanded( // fit size to the screen
                child: GridView.builder(
                itemCount: 9,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1/1,
                ),
                itemBuilder: (BuildContext context, int index){
                  return Stack(
                    children: <Widget>[
                      Container(
                        color: Color(0xFF9CABC2).withOpacity(0.35),
                        margin: EdgeInsets.all(1), // space between each squares
                        child: Center(  // centered top-bottom
                          child: Text(
                            '식당$index',
                            textAlign: TextAlign.center, //centered left-right
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 20,
                              color: Palette.defaultColor,
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
                              isSelected = !isSelected;
                            });
                          },
                          color: Palette.LikedColor,
                          icon: Icon(
                            isSelected ? Icons.favorite
                                : Icons.favorite_border,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
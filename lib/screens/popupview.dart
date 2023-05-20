import 'package:flutter/material.dart';

class PopupScreen extends StatelessWidget {
  const PopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final popupWidth = screenWidth * 0.8;
    final popupHeight = screenHeight * 0.8;

    return SizedBox(
      width: popupWidth,
      height: popupHeight,
      child: Column(
        children: [
          AppBar(
            title: Text('팝업 화면'),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text('제순식당 팝업 화면'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
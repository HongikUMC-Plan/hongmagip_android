import 'package:flutter/material.dart';
import '../koreanList.dart';

void showRandomRestaurantModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  koreanRestaurant[0],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      letterSpacing: 2.0),
                ),
                Text(
                  type[0],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                )
              ],
            ),
          ),
      );
    },
  );
}

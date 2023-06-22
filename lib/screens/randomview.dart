import 'package:hongmagip_android/screens/subview/asianList.dart';
import 'package:hongmagip_android/screens/subview/etcList.dart';
import 'package:hongmagip_android/screens/subview/fastList.dart';
import 'package:hongmagip_android/screens/subview/snackList.dart';
import 'package:hongmagip_android/screens/subview/westernList.dart';

import 'subview/koreanList.dart';
import 'subview/chineseList.dart';
import 'subview/japaneseList.dart';
import 'dart:math';

class RandomView {
  static List<String> mergeRestaurantLists(List<List<String>> restaurantLists) {
    List<String> mergedList = [];
    for (var list in restaurantLists) {
      mergedList.addAll(list);
    }
    return mergedList;
  }

  static String getRandomRestaurant(List<String> restaurantList) {
    Random random = Random();
    int index = random.nextInt(restaurantList.length);
    return restaurantList[index];
  }
}

String main() {
  List<List<String>> restaurantLists = [

  ];

  List<String> mergedList = RandomView.mergeRestaurantLists(restaurantLists);
  String randomRestaurant = RandomView.getRandomRestaurant(mergedList);

  return randomRestaurant;
}

import 'dart:math';
import 'package:flutter/material.dart';

import '../config/restaurants.dart';

String chooseRandomRestaurant() {
  List<String> mergedList = [...koreanRestaurant,
                            ...chineseRestaurant,
                            ...japaneseRestaurant,
                            ...westernRestaurant,
                            ...asianRestaurant,
                            ...fastRestaurant,
                            ...snackRestaurant,
                            ...etcRestaurant,];
  Random random = Random();
  int index = random.nextInt(mergedList.length);
  return mergedList[index];
}
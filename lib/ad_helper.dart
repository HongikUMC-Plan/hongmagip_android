import 'dart:io';

class AdHelper {

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7754979684349162/9085873016';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
import 'dart:io' show Platform;
import 'package:chatgpt/Core/constants/strings.dart';


class AdMobService {
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return ANDROID_BANNER_ADD_ID;
    } else if (Platform.isIOS) {
      return "";
    }
    return null;
  }

  static String? get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return ANDROID_INTERSTITIAL_ADD_ID;
    } else if (Platform.isIOS) {
      return "";
    }
    return null;
  }

}

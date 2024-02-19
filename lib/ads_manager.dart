import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsManager {
  static String adUnitId = Platform.isAndroid
      ? 'ca-app-pub-5984247442414347/3655526551'
      : 'ca-app-pub-3940256099942544/5575463023';

  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-5984247442414347/7870861900';
    } else if (Platform.isIOS) {
      return 'ca-app-3940256099942544/2934735716';
    }
    return null;
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-5984247442414347/7687809326';
    }
   return "";
  }

  static final BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad loaded'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Ad failed to load:$error');
    },
    onAdOpened: (ad) => debugPrint('Ad opened'),
    onAdClosed: (ad) => debugPrint('Ad closed'),
  );

  static InterstitialAd? interstitialAd;

  static void createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (ad) => interstitialAd = ad,
            onAdFailedToLoad: (error) => interstitialAd = null));
  }

  static void showInterstitialAd(){
    createInterstitialAd();
    if(interstitialAd != null){
      interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          interstitialAd!.dispose();
          createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad,error){
          interstitialAd!.dispose();
          createInterstitialAd();
        }
      );
      interstitialAd!.show();
      interstitialAd = null;
    }
  }
}

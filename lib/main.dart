import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:prosoccer/ads_manager.dart';
import 'homepage.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  loadAppOpenAd();
  AdsManager.createInterstitialAd();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
   const MyApp({Key? key})  : super(key: key);

   @override
  Widget build(BuildContext context) {

     return MaterialApp(
         theme: ThemeData(
         brightness: Brightness.dark
     ),
       home: const HomePage()
     );}
}

AppOpenAd? myAppOpenAd;

loadAppOpenAd() {
  AppOpenAd.load(
      adUnitId: AdsManager.adUnitId, //Your ad Id from admob
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            myAppOpenAd = ad;
            myAppOpenAd!.show();
          },
          onAdFailedToLoad: (error) {}),
      orientation: AppOpenAd.orientationPortrait);
}
// this is main.dart

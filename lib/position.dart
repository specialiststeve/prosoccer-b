import 'package:flutter/material.dart';
import 'package:prosoccer/ads_manager.dart';
import 'package:prosoccer/defender.dart';
import 'package:prosoccer/goalkeeper.dart';
import 'package:prosoccer/midfielder.dart';
import 'package:prosoccer/striker.dart';
import 'package:prosoccer/technique.dart';
class PositionPage extends StatelessWidget {
  const PositionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Screenshot_20231205-213934~2.png')
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('POSITION SELECTION ARENA'),
          ),
          body: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                AdsManager.showInterstitialAd();
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const GoalkeeperPage()));
              },
              child: const Text('GOALKEEPER'),
            ),
            ElevatedButton(
              onPressed: () {
                AdsManager.showInterstitialAd();
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const DefenderPage()));
              },
              child: const Text('DEFENDER'),
            ),
            ElevatedButton(
              onPressed: () {
                AdsManager.showInterstitialAd();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MidfielderDart()));
              },
              child: const Text('MIDFIELDER'),
            ),
            ElevatedButton(
              onPressed: () {
                AdsManager.showInterstitialAd();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const StrikerDart()));
              },
              child: const Text('FORWARDS'),
            ),
                    ElevatedButton(
                      onPressed: () {
                        AdsManager.showInterstitialAd();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const TechniqueDart()));
                      },
                      child: const Text('TECHNIQUE'),
                    )
          ]))),
    );
  }
}


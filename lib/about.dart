import 'package:flutter/material.dart';
import 'package:prosoccer/position.dart';

import 'ads_manager.dart';

class AboutDart extends StatefulWidget {
   const AboutDart({super.key});

  @override
  State<AboutDart> createState() => _AboutDartState();
}

class _AboutDartState extends State<AboutDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('MASTERY HUB'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'AllSoccer Mastery',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Introducing AllSoccer,your ultimate companion in elevating your football game to new heights!Tailored for enthusiasts of all skill levels,AllSoccer is your go-to app for specialized training sessions designed for each position on the field.Whether you are a striker perfecting your shooting precision,a midfielder honouring your passing finesse,or a defender mastering ball control,AllSoccer has you covered.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height:16),
            const Text(
              'Unlock secrets of the game with expert techniques,personalized drills, and a roadmap to take your football skills from good to extraordinary',
              style:TextStyle(fontSize: 16, color: Colors.white),
            ),
             const SizedBox(height: 14),
            ElevatedButton(
               onPressed: (){
                 AdsManager.showInterstitialAd();
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>const PositionPage()));
               },
              child:  const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
class MoreusDart extends StatefulWidget {
  const MoreusDart({super.key});

  @override
  State<MoreusDart> createState() => _MoreusDartState();
}


class _MoreusDartState extends State<MoreusDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('ABOUT US'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text('AllSoccer is your ultimate guide to football mastery,offering comprehensive tutorial across various positions on the field.Elevate your game with expert insights,detailed techniques,and strategic tips tailored for every player,from goalkeepers to forwards.Whether you are a beginner or an experienced player,AllSoccer empowers you to refine your skills and dominate the pitch.Step into world of precision and strategy-become a football maestro with AllSoccer.')
          ],
        ),
      ),

    );
  }
}



import 'package:flutter/material.dart';
import 'package:prosoccer/training.dart';


class StrikerDart extends StatefulWidget {
  const StrikerDart({super.key});

  @override
  State<StrikerDart> createState() => _StrikerDartState();
}

class _StrikerDartState extends State<StrikerDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Screenshot_20231205-213718~2.png')
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('FORWARDS TRAINER'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: '5yk3Gd2arzI')));
                },
                child: const Text('WINGERS'
                    'full coarse'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'O4LmZHYpeME')));
                },
                child: const Text('STRIKERS'
                    'full coarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



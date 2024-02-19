import 'package:flutter/material.dart';
import 'package:prosoccer/training.dart';

class MidfielderDart extends StatefulWidget {
  const MidfielderDart({super.key});

  @override
  State<MidfielderDart> createState() => _MidfielderDartState();
}

class _MidfielderDartState extends State<MidfielderDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Screenshot_20231205-132956~2.png')
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('MIDFIELDER TRAINER'),
        ),
        body: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id:'Yx0NKFJXBDU')));
                },
                child: const Text('CENTRAL DEFENDING MIDFIELDER'
                    'full coarse'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id:'hU95fnqc8WM')));
                },
                child: const Text('CENTRAL ATTACKING MIDFIELDER'
                    'full coarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

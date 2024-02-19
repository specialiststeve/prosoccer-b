import 'package:flutter/material.dart';
import 'package:prosoccer/training.dart';


class DefenderPage extends StatefulWidget {
  const DefenderPage({super.key});

  @override
  State<DefenderPage> createState() => _DefenderPageState();
}

class _DefenderPageState extends State<DefenderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
           image: AssetImage('assets/Screenshot_20231205-220403~2.png')
        )
      ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: const Text('DEFENDER TRAINER'),
    ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'Borf1ZVgwZk')));
                },
                child: const Text('CENTER BACKS '
                    'full course'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: '_0yLHSoQB0I')));
                },
                child: const Text('FULLBACKS'
                'full course'),
              ),
            ],
          ),
        )
    ),


    );
    }
}

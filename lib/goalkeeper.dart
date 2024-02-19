import 'package:flutter/material.dart';
import 'package:prosoccer/training.dart';

class GoalkeeperPage extends StatefulWidget {
  const GoalkeeperPage({Key? key}) : super(key: key);

  @override
  State<GoalkeeperPage> createState() => _GoalkeeperPageState();
}

class _GoalkeeperPageState extends State<GoalkeeperPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Screenshot_20231205-220654~2.png'))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('GOALKEEPER TRAINER'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrainingDart(
                                id: '0WOMxIw0RpI',
                              )));
                },
                child: const Text('WARM UP'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'lQQUrbATlhI')));
                },
                child: const Text('BASIC BALL HANDLING'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'LAMTn_OVQrU')));
                },
                child: const Text('SHOT STOPPING varied angles'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'unnMTJVqATE')));
                },
                child: const Text('CROSSES AND HIGH BALLS'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'UG8Iuk7JSso')));
                },
                child: const Text('ONE-ON-ONE SITUATIONS'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'gfng0lNe7iQ')));
                },
                child: const Text('BALL DISTRIBUTION'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'qumIgBpm2u4')));
                },
                child: const Text('FOOTWORK DRILLS'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'vYQ3a-RLd4c')));
                },
                child: const Text('REACTION DRILLS'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'MBbsWSOgnb8')));
                },
                child: const Text('DIVING TECHNIQUES'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: 'jYl0qMiLnQU')));
                },
                child: const Text('FITNESS AND ENDURANCE'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id: '4zpcRD_UUWk')));
                },
                child: const Text('PRESSURE HANDLING AND DECISION MAKING'),
              ),
            ],
          ))),
    );
  }
}

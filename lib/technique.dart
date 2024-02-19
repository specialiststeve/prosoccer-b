import 'package:flutter/material.dart';
import 'package:prosoccer/training.dart';

class TechniqueDart extends StatefulWidget {
  const TechniqueDart({super.key});

  @override
  State<TechniqueDart> createState() => _TechniqueDartState();
}

class _TechniqueDartState extends State<TechniqueDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Screenshot_20231205-132857~2.png')
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('MAESTRO TECHNIQUES'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id:'s21Hf39-h64')));
                },
                child: const Text('SHOOTING'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrainingDart(id:'YsWxzw7-uv4')));
                },
                child: const Text('PASSING'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const TrainingDart(id:'_uuqsGCiM9I')));
                },
                child: const Text('DRIBBLING'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const TrainingDart(id:'x7DrrSaMkWY')));
                },
                child: const Text('JUGGLING'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const TrainingDart(id:'pUgiAE9SaJI')));
                },
                child: const Text('PHYSICAL'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const TrainingDart(id:'us9XzHgA0f0')));
                },
                child: const Text('PACE'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const TrainingDart(id:'hzzwNbd0Z1c')));
                },
                child: const Text('COORDINATION'),
              ),
            ],

          ),
        ),
      ),

    );
  }
}


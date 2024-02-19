import 'dart:io';

import 'package:flutter/material.dart';
import 'package:prosoccer/contactus.dart';
import 'package:prosoccer/moreus.dart';
import 'package:prosoccer/terms.dart';
import 'package:prosoccer/usersettings.dart';

import 'about.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Screenshot_20231205-221521~2.png'))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('KICKOFF ZONE'),
            actions: [
              PopupMenuButton<MyMenu>(
                onSelected: (value){
                  switch(value){

                    case MyMenu.ContactUs:
                      // TODO: Handle this case.
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const ContactusDart()));
                    break;


                    case MyMenu.AboutUs:
                      // TODO: Handle this case.
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreusDart()));
                      break;
                    case MyMenu.TermsOfUse:
                      // TODO: Handle this case.
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> const TermsDart()));
                      break;
                    case MyMenu.UserSettings:
                      // TODO: Handle this case.
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const UsersettingsDart()));
                      break;
                    case MyMenu.Exit:
                      // TODO: Handle this Case.
                      exit(0);
                  }
                },
                  itemBuilder: (context) => <PopupMenuEntry<MyMenu>>[
                    const PopupMenuItem(
                      value: MyMenu.UserSettings,
                      child: Text("Player Profile"),
                    ),

                    const PopupMenuItem(
                          value: MyMenu.AboutUs,
                          child: Text("About Us"),
                        ),

                    const PopupMenuItem(
                      value: MyMenu.ContactUs,
                      child: Text("Contact Us"),
                    ),
                    const PopupMenuItem(
                      value: MyMenu.TermsOfUse,
                      child: Text("Terms Of Use"),
                    ),

                    const PopupMenuItem(
                      value: MyMenu.Exit,
                      child: Text("Exit The App"),
                    ),

                  ])
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       hintText: 'USERNAME',
                  //       hintTextDirection: TextDirection.ltr,
                  //       fillColor: Colors.white.withOpacity(0.7),
                  //       border: const OutlineInputBorder(),
                  //       filled: true),
                  // ),
                  // const SizedBox(height: 8),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       hintText: 'JERSEY NUMBER',
                  //       hintTextDirection: TextDirection.ltr,
                  //       border: const OutlineInputBorder(),
                  //       fillColor: Colors.white.withOpacity(0.7),
                  //       filled: true),
                  // ),
                  // const SizedBox(height: 8),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       hintText: 'AGE',
                  //       hintTextDirection: TextDirection.ltr,
                  //       border: const OutlineInputBorder(),
                  //       fillColor: Colors.white.withOpacity(0.7),
                  //       filled: true),
                  // ),
                  // const SizedBox(height: 8),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //       hintText: 'STRONG FOOT',
                  //       hintTextDirection: TextDirection.ltr,
                  //       border: const OutlineInputBorder(),
                  //       fillColor: Colors.white.withOpacity(0.7),
                  //       filled: true),
                  // ),
                  // const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> const AboutDart()));
                    },
                    child: const Text('Skip'),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// ignore: constant_identifier_names
enum MyMenu { ContactUs, AboutUs, TermsOfUse, UserSettings, Exit,}

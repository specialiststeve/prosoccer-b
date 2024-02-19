
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactusDart extends StatefulWidget {
  const ContactusDart({super.key});

  @override
  State<ContactusDart> createState() => _ContactusDartState();
}

class _ContactusDartState extends State<ContactusDart> {
  get kennysteven001 async => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('CONTACT US'),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello football enthusiast',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
          const SizedBox(height: 20),
      const Text(
        'For any questions, feedback, or assistance, feel free to reach out to us:'
            'please copy the email provided',
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {_launchEmail();},
        child: const Text(
          'kennysteven001@gmail.com',
          style: TextStyle(fontSize: 16),
        ),
        ),
          ],
        ),
      ),
    );
  }
  void _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'kennysteven001@gmail.com',
      queryParameters: {'subject': 'Prosoccer App Inquiry'},
    );

    if (await canLaunchUrl(emailLaunchUri.toString() as Uri)) {
      await launchUrl(emailLaunchUri.toString() as Uri);
    } else {
      throw 'Could not launch $kennysteven001@gmail.com';
    }
  }
}


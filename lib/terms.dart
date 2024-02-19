import 'package:flutter/material.dart';

class TermsDart extends StatefulWidget {
  const TermsDart({super.key});

  @override
  State<TermsDart> createState() => _TermsDartState();
}

class _TermsDartState extends State<TermsDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('TERMS OF USE'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Terms and conditions',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 16),
            Text('''
**AllSoccer App Terms and Conditions**

1. Using the App
   - Enjoy AllSoccer responsibly for personal use only.
   - Follow the law and respect others while using the app.

2. Account
   - Register and keep your account info secure.
   - You're responsible for all activities under your account.

3. Content
   - Be aware that the app may contain third-party content.
   - You're accountable for your use of any content.

4. Behavior
   - Be respectful; no harmful behavior allowed.
   - We may suspend your account for violations.

5. Privacy
   - Your privacy is crucial; check our Privacy Policy.

6. Updates
   - Expect app updates; your use implies acceptance.

7. Termination
   - We can terminate your account for any un lawful reason.

8. Disclaimer
   - AllSoccer is provided as-is without a warranty.

9. Liability
   - We're not responsible for any damages from using AllSoccer.

10. Governing Law
    - These terms follow the laws of your jurisdiction.
''')

          ],
        ),
      ),
    );
  }
}

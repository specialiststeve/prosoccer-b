
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prosoccer/preferrencesservice.dart';

class UsersettingsDart extends StatefulWidget {
    const UsersettingsDart({super.key});
  @override
  State<UsersettingsDart> createState() => _State();
}

class _State extends State<UsersettingsDart> {
  final _preferencesService = PreferencesService();
  final _usernameController =TextEditingController();
  var _selectedGender =  Gender.fEmale;
  final _ageController =TextEditingController();
  final _jerseynumberController =TextEditingController();
  var _selectedStrongFoot = StrongFoot.rIght;

  @override
  void initState() {
    super.initState();
    _populatedFields();
  }
   void _populatedFields() async {
     final settings = await _preferencesService.getSettings();
     setState(() {
       _usernameController.text = settings.username;
       _selectedGender = settings.gender;
       _selectedStrongFoot= settings.strongfoot;
       _ageController.text =settings.age;
       _jerseynumberController.text = settings .jerseynumber;

     });
   }

  Settings? get newSettings => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('User Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),),
          ListTile(
            title: TextField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: 'Age'),),
          ),
          ListTile(
            title: TextField(
              controller: _jerseynumberController,
              decoration: const InputDecoration(labelText: 'Jersey Number'),
            ),
          ),
          const Text('CHOOSE GENDER'),
          const SizedBox(height:6),
          RadioListTile(
            title: const Text('Male'),
            value: Gender.mAle,
            groupValue: _selectedGender,
            onChanged: (newValue)=>
                setState(() => _selectedGender  = newValue!)),
          RadioListTile(
            title: const Text('Female'),
            value: Gender .fEmale,
            groupValue: _selectedGender,
            onChanged: (newValue)=>
                setState(() => _selectedGender = newValue!)),
          RadioListTile(
            title: const Text('Other'),
            value: Gender .oTher,
            groupValue: _selectedGender,
            onChanged: (newValue)=>
                setState(() => _selectedGender = newValue!)),
          const  Text('CHOOSE STRONG FOOT'),
          const SizedBox(height: 6),
          RadioListTile(
            title: const Text('Right'),
            value: StrongFoot  .rIght,
            groupValue: _selectedStrongFoot,
            onChanged: (newValue)=>
                  setState(() => _selectedStrongFoot = newValue!)),
          RadioListTile(
            title: const Text('Left'),
            value: StrongFoot  .lEft,
            groupValue: _selectedStrongFoot,
            onChanged: (newValue)=>
                   setState(() => _selectedStrongFoot= newValue!)),
          RadioListTile(
            title: const Text('Both'),
            value: StrongFoot   .bOth,
            groupValue: _selectedStrongFoot,
            onChanged: (newValue)=>
                  setState(() => _selectedStrongFoot =newValue!)),
          TextButton(onPressed: _saveSettings, child: const Text('Save Settings'))





        ],
      ),
    );
  }
  void _saveSettings() {
    final newSettings = Settings(
      username: _usernameController.text,
      gender: _selectedGender,
      jerseynumber: _jerseynumberController.text,
      age: _ageController.text,
      strongfoot: _selectedStrongFoot,

    );
    if (kDebugMode) {
      print(newSettings);
    }
    _preferencesService.saveSettings(newSettings);

    }
  }





































// ignore : constant_identifier_names
enum  Gender {mAle, fEmale, oTher}
enum  StrongFoot {rIght, lEft,bOth}


class Settings{
  final String username;
  final String jerseynumber;
  final String age;
  final Gender gender;
  final StrongFoot strongfoot;

  Settings(
  {required this.username,required this.gender,required this.age,required this.jerseynumber,required this.strongfoot});

}
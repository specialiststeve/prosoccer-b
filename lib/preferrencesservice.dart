import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'usersettings.dart';


class PreferencesService {
  Future saveSettings(Settings settings) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('username', settings.username);
    await preferences.setInt('gender', settings.gender.index);
    await preferences.setString('jerseynumber',settings.jerseynumber);
    await preferences.setString('age',settings.age);
    await preferences.setInt('strongfoot', settings.strongfoot.index);

    if (kDebugMode) {
      print('Saved settings');
    }
  }
  Future<Settings> getSettings()  async {
    final preferences = await  SharedPreferences.getInstance();

    final username = preferences.getString('username') ?? "";
    final gender = Gender.values[preferences.getInt('gender')?? 0];
    final age = preferences.getString('age') ?? "";
    final jerseynumber =preferences.getString('jerseynumber') ?? "";
    final strongfoot = StrongFoot.values[preferences.getInt('strongfoot')?? 0];
    return Settings(username: username, gender: gender, age: age, jerseynumber: jerseynumber, strongfoot: strongfoot);
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
    bool _isDarkMode = false;

    bool get isDarkMode => _isDarkMode;

    ThemeProvider(){
      _loadTheme();
    }
    // untuk meng handle konfigurasi perubahan tema secara lokal
  void toggleTheme(bool isDark) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkMode = isDark;
    // setbool => key & value
    // isDark is value
    // isDarkTheme is key
    await prefs.setBool("isDarkTheme", isDark);
    notifyListeners();
  } 

  void _loadTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _isDarkMode = prefs.getBool("isDarkTheme") ?? false;
    notifyListeners();
  }

}


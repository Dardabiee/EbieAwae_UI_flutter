import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier{
    bool _isLoggedIn = false;

    bool get isLoggedIn => _isLoggedIn;

    String _savedEmail = '';
    String get savedEmail => _savedEmail;

    AuthProvider(){
      _loadAuth();
    }
    // untuk meng handle konfigurasi perubahan tema secara lokal
  void setAuth(bool status) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isLoggedIn = status;
    // setbool => key & value
    // isDark is value
    // isDarkTheme is key
    await prefs.setBool("isLoggedIn", status);
    notifyListeners();
  } 

  void _loadAuth() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
    print("loadAuth: $_isLoggedIn");
    notifyListeners();
  }
  void savedEmailUser(String emailUser){
    _savedEmail = emailUser;
    notifyListeners();
  }
}


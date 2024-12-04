import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/state_managements/auth_provider.dart';
import 'package:shop_app/state_managements/cart_provider.dart';
import 'package:shop_app/state_managements/favourite_provider.dart';
import 'package:shop_app/state_managements/theme_provider.dart';
import 'package:shop_app/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:device_preview/device_preview.dart';

Future <void> main() async {
  //untuk memberi tahu flutter untuk meinisialisasi main
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
  runApp(
    DevicePreview(
      enabled:true,
      builder: (context) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => ThemeProvider()),
            ChangeNotifierProvider(create: (context)=> AuthProvider()),
            ChangeNotifierProvider(create: (context)=> CartProvider()),
             ChangeNotifierProvider(create: (context)=> FavouriteProvider())
          ],
          child:  MyApp(isLoggedIn: isLoggedIn,)
        );
      }
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isLoggedIn});
  
  final bool isLoggedIn;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme,child) => MaterialApp(
         useInheritedMediaQuery: true,
         locale: DevicePreview.locale(context),
         builder: DevicePreview.appBuilder,
         theme: themeData(theme.isDarkMode),
         initialRoute: isLoggedIn ? HomeScreen.routeName :SplashScreen.routeName,
         debugShowCheckedModeBanner: false,
         routes: routes,
        )
    );
  }
}


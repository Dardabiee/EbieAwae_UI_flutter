import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'state_managements/theme_provider.dart';

ThemeData themeData(bool isDarkMode) {
    return ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: kTextColor, fontSize: 18)
      ),
      fontFamily: "Muli",
      // scaffoldBackgroundColor: Colors.white,
      textTheme: textTheme(),
      // visualDensity: VisualDensity()
      inputDecorationTheme: inputDecoration()
    );
  }

  TextTheme textTheme() {
    return const TextTheme(
      titleMedium: TextStyle(
        color: kTextColor
      ),
      bodyMedium: TextStyle(
        color: kTextColor
      ),
    );
  }

  InputDecorationTheme inputDecoration() {
  const outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28)),
    borderSide: BorderSide(color: kPrimaryColor),
    gapPadding: 10,
  );

  return const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder
  );
}
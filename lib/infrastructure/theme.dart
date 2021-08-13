import 'package:flutter/material.dart';

import 'app_colors.dart';

const skModernist = 'Sk-Modernist';
const appBarBackButtonForegroundColor = Color.fromARGB(0xFF, 0x28, 0x28, 0x29);
const lightGrey = Color.fromARGB(0xFF, 0xBD, 0xBD, 0xBD);
const darkGrey = Color.fromARGB(0xFF, 0x28, 0x28, 0x29);

final appTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: skModernist,
  brightness: Brightness.light,
  primaryColor: AppColors.primaryBlue,
  accentColor: AppColors.primaryDarkBlue,
  backgroundColor: const Color(0xFFEEEEEE),
  errorColor: Colors.red[400],
  cardColor: const Color(0xFFE0E0E0),
  appBarTheme: const AppBarTheme(
    backwardsCompatibility: false,
    backgroundColor: AppColors.appThemeBlueAccentColor,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: darkGrey,
      fontSize: 20,
      fontFamily: skModernist,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: darkGrey,
    unselectedLabelColor: lightGrey,
    labelStyle: TextStyle(
      fontSize: 17,
      fontFamily: skModernist,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 17,
      fontFamily: skModernist,
    ),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        width: 2,
        color: darkGrey,
      ),
    ),
  ),
);

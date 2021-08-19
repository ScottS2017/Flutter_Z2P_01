import 'package:flutter/material.dart';

import 'app_colors.dart';

const skModernist = 'Sk-Modernist';
const appBarBackButtonForegroundColor = Color.fromARGB(0xFF, 0x28, 0x28, 0x29);
const lightGrey = Color.fromARGB(0xFF, 0xBD, 0xBD, 0xBD);
const darkGrey = Color.fromARGB(0xFF, 0x28, 0x28, 0x29);
const listWheelScrollViewScrim = Color(0x20FEFEFE);

final appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: skModernist,
  brightness: Brightness.light,
  accentColor: const Color(0xFFFB7EE4),
  primaryColor: const Color(0xffaa00ff),
    primaryColorDark: const Color(0xff7200ca),
  primaryColorLight: const  Color(0xFFB7459C),
  backgroundColor: const Color(0xFFFEFEFE),
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

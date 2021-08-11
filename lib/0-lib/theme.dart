import 'package:flutter/material.dart';

const skModernist = 'Sk-Modernist';
const appBarBackButtonForegroundColor = Color.fromARGB(0xFF, 0x28, 0x28, 0x29);
const lightGrey = Color.fromARGB(0xFF, 0xBD, 0xBD, 0xBD);
const darkGrey = Color.fromARGB(0xFF, 0x28, 0x28, 0x29);

final modeTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: skModernist,
  appBarTheme: const AppBarTheme(
    backwardsCompatibility: false,
    backgroundColor: Colors.transparent,
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

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_colors.dart';


class AppThemes {

  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryBlue,
    accentColor: AppColors.primaryDarkBlue,
    backgroundColor: const Color(0xFFEEEEEE),
    errorColor: Colors.red[400],
    cardColor: const Color(0xFFE0E0E0),
  );



}
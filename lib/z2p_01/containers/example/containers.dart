import 'package:flutter/material.dart';

import '../../../infrastructure/app_colors.dart';
import '../../../infrastructure/build_app_bar.dart';


@immutable
class Containers extends StatelessWidget {
  const Containers({
    Key? key,
    required this.onBackPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback onBackPressed;
  final String title;

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);
  final String test = 'test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onBackPressed: onBackPressed,  title: title),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color: AppColors.appThemePrimaryDarkBlue,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color: AppColors.appThemePrimaryDarkBlue,
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 50,
                  color: AppColors.appThemeBlueAccentColor,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color: AppColors.appThemePrimaryDarkBlue,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 50,
                  width: 50,
                  color: AppColors.appThemeBlueAccentColor,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color: AppColors.appThemePrimaryDarkBlue,
                margin: const EdgeInsets.only(left: 150),
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: AppColors.appThemeBlueAccentColor,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color: AppColors.appThemeBlueAccentColor,
                alignment: const Alignment(-0.5, 1.0),
                child: Container(
                  height: 50,
                  width: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

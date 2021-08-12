import 'package:flutter/material.dart';

import '../../../infrastructure/app_colors.dart';
import '../../../infrastructure/build_app_bar.dart';

@immutable
class ContainersSolution extends StatelessWidget {
  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 16);

  const ContainersSolution({
    Key? key,
    required this.onBackPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback onBackPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onBackPressed: onBackPressed,  title: title),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                //TODO 1) Create Container, with height 50, width 150, and make the color appThemePrimaryDarkBlue from the app_colors.dart resource file
                Container(
                  height: 50,
                  width: 150,
                  color: AppColors.appThemePrimaryDarkBlue,
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 2 ) Create a Container that is 100 high, max width, and is appThemePrimaryDarkBlue. Then give it a white child Container that is 50 high and 150 wide, that is aligned center right within its parent.
                Container(
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  color: AppColors.appThemePrimaryDarkBlue,
                  child: Container(
                    height: 50,
                    width: 150,
                    color: Colors.white,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 3) Create Containe 300 high x 200 wide, appThemePrimaryBlue, give it 20 padding all around. Then give it a child Container that is 50 x 50, aligned top center and make the color appThemeBlueAccentColor
                Container(
                  height: 300,
                  width: 200,
                  color: AppColors.appThemePrimaryBlue,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: AppColors.appThemeBlueAccentColor,
                  ),
                ),

                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 4) Create a Container that's appThemePrimaryDarkBlue, 100 high with max width, that aligns its child top right and give it margins of 150 right and 25 left. Then give it a child Container that's 95 high, 100 wide and make the color white54.
                Container(
                  height: 100,
                  width: double.infinity,
                  color: AppColors.appThemePrimaryDarkBlue,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 150, left: 25),
                  child: Container(
                    height: 95,
                    width: 100,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

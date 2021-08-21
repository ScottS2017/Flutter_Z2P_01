import 'package:flutter/material.dart';
import '/infrastructure/app_colors.dart';
import '/infrastructure/app_strings.dart';
import '/infrastructure/app_textstyles.dart';
import '/infrastructure/build_app_bar.dart';

class TextSolution extends StatelessWidget {
  const TextSolution({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 16);

  /// Text: "A run of text with a single style."

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              /// Remember the way we're organizing a Flutter App, we're
              /// using an AppStrings class to hold all of our Strings
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 1) Make a Text, the string is AppStrings.mon. Center the text and make it FF3780, w600, size 18 and italic
              const Text(
                AppStrings.mon,
                semanticsLabel: AppStrings.mon,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF3780),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 2) In a Container that has a color of "AppColors.appThemeSecondaryText", with padding all around of 16, you want text that uses the app string of tu. Make it right aligned, color 0185D0, bold, size 18 and with a letter spacing of 12 and a background color of FB7EE4
              Container(
                padding: const EdgeInsets.all(16),
                color: AppColors.appThemeSecondaryText,
                child: const Text(
                  AppStrings.tu,
                  semanticsLabel: AppStrings.tu,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF0185D0),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 12,
                    backgroundColor: Color(0xFFFB7EE4),
                  ),
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 3) Make a text, the app string is wed, make it centered, size 24 with a drop shadow color of dropShadowColor, blur radius of 2 and an offset of 3, 3
              Text(
                AppStrings.wed,
                semanticsLabel: AppStrings.wed,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      color: AppColors.dropShadowColor,
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 4) Less hand holding here, figure out things that aren't expressly stated... Thurs: color 0185D0, w200, size 48
              Text(
                AppStrings.th,
                semanticsLabel: AppStrings.th,
                style: TextStyle(
                  color: const Color(0xFF0185D0),
                  fontWeight: FontWeight.w200,
                  fontSize: 48,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 5) Even less...AppStrings.fr, bold italic, add a drop shadow with blur 1 and offset 2-2
              Text(
                AppStrings.fr,
                semanticsLabel: AppStrings.fr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                      color: AppColors.dropShadowColor,
                      blurRadius: 1,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 6) AppStrings.sat and use AppTextStyles.dart to implement a bold italic 36 font
              Text(
                AppStrings.sat,
                semanticsLabel: AppStrings.sat,
                style: AppTextStyles.boldItalic36,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 7) AppStrings.sun, align the text right and use AppTextStyles.dart and "copyWith" to implement a bold italic 24 font in primaryRed
              Text(
                AppStrings.sun,
                semanticsLabel: AppStrings.sun,
                textAlign: TextAlign.right,
                style: AppTextStyles.boldItalic24.copyWith(
                  color: AppColors.primaryRed,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 8) Make examples of fade right, fade bottom and ellipsis overflows using the first line of the Gettysburg address (it's in AppStrings.getAd) and use AppTextStyles to set the font to normal 18
              Text(
                AppStrings.getAd,
                semanticsLabel: AppStrings.getAd,

                /// TIP: To fade or use ellipsis, softWrap has to be false. After all, you can't have overflow and wrap at the same time (unless you set maxLines)
                softWrap: false,
                overflow: TextOverflow.fade,
                style: AppTextStyles.normal18,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Text(
                AppStrings.getAd,
                semanticsLabel: AppStrings.getAd,
                style: AppTextStyles.normal18,
                softWrap: true,
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Text(
                AppStrings.getAd,
                semanticsLabel: AppStrings.getAd,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.normal18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

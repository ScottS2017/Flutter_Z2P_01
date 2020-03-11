import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/app/app_colors.dart';
import 'package:o1_widgets_you_can_see/app/app_strings.dart';
import 'package:o1_widgets_you_can_see/app/app_textstyles.dart';

class TextExampleSolution extends StatelessWidget {

  const TextExampleSolution({
    Key key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height:16);

  /// Text: "A run of text with a single style."

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // *************** Make the days of the week. * Use semantics for everything! *
              //
              //TODO 1) Mon: Text, centered, red (pick one), w600, size 18 and italic
              const Text(
                AppStrings.mon,
                semanticsLabel: AppStrings.mon,
                textAlign: TextAlign.center,
                style: TextStyle(              color: AppColors.primaryDarkRed,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 2) Tues: In a Container that has a color of "AppColors.darkTheme24dpElevationOverlay", with padding all around of 16 you want text that is right aligned, blue, bold, size 18 and with a letter spacing of 12 and a background color of dark theme light yellow
              Container(
                padding: const EdgeInsets.all(16),
                color: AppColors.darkTheme24dpElevationOverlay,
                child: const Text(
                  AppStrings.tu,
                  semanticsLabel: AppStrings.tu,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: AppColors.primaryDarkBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 12,
                    backgroundColor: AppColors.primaryDarkLightYellow,
                  ),
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 3) Wed: Text, centered, size 24 with a drop shadow color of dark theme 3dp elevation overlay, blur radius of 2 and an offset of 3, 3
              Text(
                AppStrings.wed,
                semanticsLabel: AppStrings.wed,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      color: AppColors.darkTheme3dpElevationOverlay,
                      blurRadius: 2,
                      offset: const Offset(3, 3),
                    ),
                  ],
                ),
              ),
              //
              // TODO 4) Less hand holding, figure out things that aren't spelled out... Thurs: green w200, size 48
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Text(
                AppStrings.th,
                semanticsLabel: AppStrings.th,
                style: TextStyle(
                  color: AppColors.primaryDarkGreen,
                  fontWeight: FontWeight.w200,
                  fontSize: 48,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 5) Fri: bold italic with a drop shadow color of dropShadowColor(?!), blur 1 offset 2-2
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
              //TODO 6) Sat: ***NEW!!! Use AppTextStyles.dart to implement a bold italic 36 font
              Text(
                AppStrings.sat,
                semanticsLabel: AppStrings.sat,
                style: AppTextStyles.boldItalic36,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 7) Sun Align the text right and use AppTextStyles.dart and "copyWith" to implement a bold italic 24 font in primaryRed
              Text(
                AppStrings.sun,
                semanticsLabel: AppStrings.sun,
                textAlign: TextAlign.right,
                style: AppTextStyles.boldItalic24.copyWith(color: AppColors.primaryRed),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 8) Make examples of fade right, fade bottom and ellipsis overflows using the first line of the Gettysburg address (it's in AppStrings.getAd) and use AppTextStyles to set the font to normal and 18
              Text(
                AppStrings.getAd,
                semanticsLabel: AppStrings.getAd,

                /// To fade right, softWrap has to be false
                softWrap: false,
                overflow: TextOverflow.fade,
                style: AppTextStyles.normal18,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Text(
                AppStrings.getAd,
                semanticsLabel: AppStrings.getAd,
                style: AppTextStyles.normal18,

                /// It's true by default but this is just here to remind you that to fade bottom you need softWrap to be true.
                softWrap: true,
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Text(
                AppStrings.getAd,
                semanticsLabel: AppStrings.getAd,

                /// Again, to use TextOverflow.ellipsis, softWrap has to be false
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.normal18,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            ],
          ),
        ),
    );
  }
}

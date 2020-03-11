import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/app/app_colors.dart';
import 'package:o1_widgets_you_can_see/app/app_strings.dart';
import 'package:o1_widgets_you_can_see/app/app_textstyles.dart';

class TextExampleExercises extends StatelessWidget {

  const TextExampleExercises({
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
            // TODO **** Delete this placeholder
            const Placeholder(
              fallbackHeight: 550,
              fallbackWidth: 500,
            ),


            //TODO 1) Mon: Text, centered, red (pick one), w600, size 18 and italic

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            //TODO 2) Tues: In a Container that has a color of "AppColors.darkTheme24dpElevationOverlay", with padding all around of 16 you want text that is right aligned, blue, bold, size 18 and with a letter spacing of 12 and a background color of dark theme light yellow

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            //TODO 3) Wed: Text, centered, size 24 with a drop shadow color of dark theme 3dp elevation overlay, blur radius of 2 and an offset of 3, 3

            //
            // TODO 4) Less hand holding, figure out things that aren't spelled out... Thurs: green w200, size 48
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            // TODO 5) Fri: bold italic with a drop shadow color of dropShadowColor(?!), blur 1 offset 2-2

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            //TODO 6) Sat: ***NEW!!! Use AppTextStyles.dart to implement a bold italic 36 font

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            //TODO 7) Sun Align the text right and use AppTextStyles.dart and "copyWith" to implement a bold italic 24 font in primaryRed

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            // TODO 8) Make examples of fade right, fade bottom and ellipsis overflows using the first line of the Gettysburg address (it's in AppStrings.getAd) and use AppTextStyles to set the font to normal and 18

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          ],
        ),
      ),
    );
  }
}

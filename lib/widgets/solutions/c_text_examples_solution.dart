import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/res/res_colors.dart';
import 'package:o1_widgets_you_can_see/res/res_strings.dart';
import 'package:o1_widgets_you_can_see/res/res_textstyles.dart';

class TextExampleSolution extends StatelessWidget {
  const TextExampleSolution({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 16);

  /// Text: "A run of text with a single style."

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

            /// Remember the way we're organizing a Flutter App, we're
            /// using an AppStrings class to hold all of our Strings
            //TODO 1) Mon: Text, the app string is mon, centered, FF3780, w600, size 18 and italic
            const Text(
              ResStrings.mon,
              semanticsLabel: ResStrings.mon,
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
            //TODO 2) Tues: In a Container that has a color of "AppColors.darkTheme24dpElevationOverlay", with padding all around of 16 you want text that uses, the app string of tu. Make it right aligned, color 0185D0, bold, size 18 and with a letter spacing of 12 and a background color of FB7EE4
            Container(
              padding: const EdgeInsets.all(16),
              color: ResColors.darkTheme24dpElevationOverlay,
              child: const Text(
                ResStrings.tu,
                semanticsLabel: ResStrings.tu,
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
            //TODO 3) Wed: Text, the app string is wed, make it centered, size 24 with a drop shadow color of dark theme 3dp elevation overlay, blur radius of 2 and an offset of 3, 3
            Text(
              ResStrings.wed,
              semanticsLabel: ResStrings.wed,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                shadows: [
                  Shadow(
                    color: ResColors.darkTheme3dpElevationOverlay,
                    blurRadius: 2,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
            ),
            //
            // TODO 4) Less hand holding, figure out things that aren't spelled out... Thurs: color 0185D0, w200, size 48
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Text(
              ResStrings.th,
              semanticsLabel: ResStrings.th,
              style: TextStyle(
                color: const Color(0xFF0185D0),
                fontWeight: FontWeight.w200,
                fontSize: 48,
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            // TODO 5) Fri: bold italic with a drop shadow color of dropShadowColor(?!), blur 1 offset 2-2
            Text(
              ResStrings.fr,
              semanticsLabel: ResStrings.fr,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    color: ResColors.dropShadowColor,
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
              ResStrings.sat,
              semanticsLabel: ResStrings.sat,
              style: AppTextStyles.boldItalic36,
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            //TODO 7) Sun Align the text right and use AppTextStyles.dart and "copyWith" to implement a bold italic 24 font in primaryRed
            Text(
              ResStrings.sun,
              semanticsLabel: ResStrings.sun,
              textAlign: TextAlign.right,
              style: AppTextStyles.boldItalic24.copyWith(
                color: const Color(0xFFFF3780),
              ),
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            //
            // TODO 8) Make examples of fade right, fade bottom and ellipsis overflows using the first line of the Gettysburg address (it's in AppStrings.getAd) and use AppTextStyles to set the font to normal and 18
            Text(
              ResStrings.getAd,
              semanticsLabel: ResStrings.getAd,

              /// To fade right, softWrap has to be false
              softWrap: false,
              overflow: TextOverflow.fade,
              style: AppTextStyles.normal18,
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Text(
              ResStrings.getAd,
              semanticsLabel: ResStrings.getAd,
              style: AppTextStyles.normal18,

              /// It's true by default but this is just here to remind you that to fade bottom you need softWrap to be true.
              softWrap: true,
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            Text(
              ResStrings.getAd,
              semanticsLabel: ResStrings.getAd,

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

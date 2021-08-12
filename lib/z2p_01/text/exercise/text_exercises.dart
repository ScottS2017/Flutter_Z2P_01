import 'package:flutter/material.dart';
import '../../../../infrastructure/app_colors.dart';
import '../../../../infrastructure/app_strings.dart';
import '../../../../infrastructure/app_textstyles.dart';
import '../../../../infrastructure/build_app_bar.dart';

class TextExampleExercises extends StatelessWidget {
  const TextExampleExercises({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 16);

  /// Text: "A run of text with a single style."

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Solutions'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              /// Remember the way we're organizing a Flutter App, we're
              /// using an AppStrings class to hold all of our Strings.
              ///
              /// Also, if something can be const, make it const.
              //TODO 1) Make a Text, the string is AppStrings.mon. Center the text and make it FF3780, w600, size 18 and italic

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 2) In a Container that has a color of "AppColors.appThemeSecondaryText", with padding all around of 16, you want text that uses the app string of tu. Make it right aligned, color 0185D0, bold, size 18 and with a letter spacing of 12 and a background color of FB7EE4

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 3) Make a text, the app string is wed, make it centered, size 24 with a drop shadow color of dropShadowColor, blur radius of 2 and an offset of 3, 3

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 4) Less hand holding here, figure out things that aren't expressly stated... Thurs: color 0185D0, w200, size 48


              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 5) Even less...AppStrings.fr, bold italic, add a drop shadow with blur 1 and offset 2-2

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 6) AppStrings.sat and use AppTextStyles.dart to implement a bold italic 36 font

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 7) AppStrings.sun, align the text right and use AppTextStyles.dart and "copyWith" to implement a bold italic 24 font in primaryRed

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 8) Make examples of fade right, fade bottom and ellipsis overflows using the first line of the Gettysburg address (it's in AppStrings.getAd) and use AppTextStyles to set the font to normal 18
                /// TIP: To fade or use ellipsis, softWrap has to be false. After all, you can't have overflow and wrap at the same time (unless you set maxLines)

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

            ],
          ),
        ),
      ),
    );
  }
}

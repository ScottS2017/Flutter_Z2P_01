import 'package:flutter/material.dart';

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
        title: const Text('Text Exercises'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              /// Remember the way we're organizing a Flutter App, we're
              /// using an AppStrings class to hold all of our Strings
              //TODO 1) Mon: Text, the app string is mon, centered, FF3780, w600, size 18 and italic

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 2) Tues: In a Container that has a color of "AppColors.darkTheme24dpElevationOverlay", with padding all around of 16 you want text that uses, the app string of tu. Make it right aligned, color 0185D0, bold, size 18 and with a letter spacing of 12 and a background color of FB7EE4

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              //TODO 3) Wed: Text, the app string is wed, make it centered, size 24 with a drop shadow color of dark theme 3dp elevation overlay, blur radius of 2 and an offset of 3, 3
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              //
              // TODO 4) Less hand holding, figure out things that aren't spelled out... Thurs: color 0185D0, w200, size 48

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
              // TODO 8) Make 3 examples: Fade right, fade bottom and ellipsis overflows using the first line of the Gettysburg address (it's in AppStrings.getAd) and use AppTextStyles to set the font to normal and 18

              /// To fade right, softWrap has to be false!

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              /// softWrap is true by default but this is just here to remind you that to fade bottom you need softWrap to be **true**

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              /// Again, to use TextOverflow.ellipsis, softWrap has to be false

              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            ],
          ),
        ),
      ),
    );
  }
}

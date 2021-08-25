import 'package:flutter/material.dart';
import '/infrastructure/app_colors.dart';
import '/infrastructure/app_strings.dart';
import '/infrastructure/build_app_bar.dart';

class TextExamples extends StatelessWidget {
  const TextExamples({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  /// Text: "A run of text with a single style."

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  ///
                  /// After this, all strings will use the AppStrings class
                  'Text',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// Examples of textAlign
                const Text(
                  AppStrings.textAlign,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.notAlignedDefault,
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    AppStrings.notAlignedCenterRight,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppStrings.leftAligned,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppStrings.centerAlign,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppStrings.rightAlign,
                  textAlign: TextAlign.right,
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// softWrap
                const Text(
                  AppStrings.softWrap,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.ifSoftwrapIsNotSpecified,
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// overflow
                const Text(
                  AppStrings.overflow,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.overflowEllipsisTestText,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.overflowClipTestText,
                  softWrap: false,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.overflowFadeTestText,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.overflowDiscuss,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// TextScaleFactor
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.textScaleFactor,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  AppStrings.textScaleFactorTestText,
                  textScaleFactor: 0.75,
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// TextStyle
                const Text(
                  AppStrings.textStyle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// fontWeights
                const Text(
                  AppStrings.fontWeight,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.w100,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w200,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w300,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w400,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w500,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w600,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w700,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w700IsBold,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w800,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.w900,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// fontStyles
                const Text(
                  AppStrings.fontStyle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.italic,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.normal,
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// fontSizes
                const Text(
                  AppStrings.fontSize,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.fs10,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.fs12,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.fs14,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.fs18,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.fs20,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// Wrapping Text
                const Text(
                  AppStrings.adoptOlderDogs,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// Drop Shadows
                const Text(
                  AppStrings.shadowsTakesList,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  AppStrings.shadowsEx1,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 2,
                        color: Colors.black87,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.shadowsEx2,
                  style: TextStyle(shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: AppColors.primaryDarkPurple,
                      offset: Offset(0, 0),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppStrings.multipleShadows,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                        color: AppColors.primaryDarkRed,
                        offset: Offset(5, 5),
                      ),
                      Shadow(
                        blurRadius: 1,
                        color: AppColors.primaryDarkBlue,
                        offset: Offset(-5, -5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// font color
                const Text(
                  AppStrings.colorRed,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryDarkRed,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppStrings.bgBlue,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteTextColor,
                    backgroundColor: AppColors.primaryDarkBlue,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// letter spacing
                const Text(
                  AppStrings.letterSpacingExample,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

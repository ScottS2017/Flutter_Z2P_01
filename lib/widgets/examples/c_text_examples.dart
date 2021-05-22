import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/res/res_colors.dart';
import 'package:o1_widgets_you_can_see/res/res_strings.dart';

class TextExamples extends StatelessWidget {
  const TextExamples({
    Key? key,
  }) : super(key: key);

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
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ///
                /// After this, all strings will use the AppStrings class
                'Text',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// Examples of textAlign
            Container(
              child: const Text(
                ResStrings.textAlign,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.notAlignedDefault,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                ResStrings.notAlignedCenterRight,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              child: const Text(
                ResStrings.leftAligned,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              child: const Text(
                ResStrings.centerAlign,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              child: const Text(
                ResStrings.rightAlign,
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// softWrap
            Container(
              child: const Text(
                ResStrings.softWrap,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.ifSoftwrapIsNotSpecified,
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// overflow
            Container(
              child: const Text(
                ResStrings.overflow,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.overflowElipsisTestText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.overflowClipTestText,
                softWrap: false,
                overflow: TextOverflow.clip,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.overflowFadeTestText,
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.overflowDiscuss,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// TextScaleFactor
            Container(
              child: const Text(
                ResStrings.textScaleFactor,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.textScaleFactorTestText,
                textScaleFactor: 0.75,
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// TextStyle
            Container(
              child: const Text(
                ResStrings.textStyle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// fontWeights
            Container(
              child: const Text(
                ResStrings.fontWeight,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.w100,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w200,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w300,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w400,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w500,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w600,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w700,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w700IsBold,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w800,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.w900,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// fontStyles
            Container(
              child: const Text(
                ResStrings.fontStyle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.italic,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.normal,
                style: TextStyle(fontStyle: FontStyle.normal),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// fontSizes
            Container(
              child: const Text(
                ResStrings.fontSize,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.fs10,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.fs12,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.fs14,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.fs18,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.fs20,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// Drop Shadows
            Container(
              child: const Text(
                ResStrings.shadowsTakesList,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: const Text(
                ResStrings.shadowsEx1,
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
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.shadowsEx2,
                style: TextStyle(shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: ResColors.primaryDarkPurple,
                    offset: Offset(0, 0),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: const Text(
                ResStrings.multipleShadows,
                textAlign: TextAlign.center,
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 1,
                      color: ResColors.primaryDarkRed,
                      offset: Offset(5, 5),
                    ),
                    Shadow(
                      blurRadius: 1,
                      color: ResColors.primaryDarkBlue,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// font color
            Container(
              child: const Text(
                ResStrings.colorRed,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ResColors.primaryDarkRed,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              child: const Text(
                ResStrings.bgBlue,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ResColors.whiteTextColor,
                  backgroundColor: ResColors.primaryDarkBlue,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            ///
            /// letter spacing
            Container(
              child: const Text(
                ResStrings.letterSpacingExample,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'test.dart';

void main() => runApp(WidgetsYouCanSee());

/// Repo URL:  bit.ly/Z2P-1

class WidgetsYouCanSee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Z2P Widgets You Can See',
      // theme: ResThemes.tealTheme,
      home: const Home2(title: 'Zero to Productive'),
      // home: const Welcome(),
    );
  }
}

// ****************************************
// ****************************************
// ****************************************
//             Examples
// ****************************************
// ****************************************
// ****************************************

/// Examples of each Widget in this course
@immutable
class Containers extends StatelessWidget {
  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);
  final String test = 'test';

  const Containers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Examples'),
      ),
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

class IconExamples extends StatelessWidget {
  const IconExamples({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Examples'),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ExampleIconCustomWidget(
                  color: Colors.green,
                  icon: Icon(
                    Icons.traffic,
                    semanticLabel: 'Traffic Light',
                    size: 132,
                    color: Colors.white54,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const SweepGradient(
                      colors: [
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                        Color(0xFF01D9FE),
                        Color(0xFF0185D0),
                        Color(0xFFFB7EE4),
                      ],
                      stops: [0.0, 0.25, 0.5, 0.75, 1],
                    ),
                  ),
                  child: Icon(
                    Icons.audiotrack,
                    size: 132,
                    color: Colors.white24,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const RadialGradient(
                      colors: [
                        Color(0xFF01D9FE),
                        Color(0xFF0185D0),
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                      ],
                      stops: [
                        0.3,
                        0.5,
                        0.8,
                        1,
                      ],
                      center: Alignment(0.0, 1.3),
                      focal: Alignment(0.0, 0.9),
                      focalRadius: 2.0,
                    ),
                  ),
                  child:
                      Icon(Icons.audiotrack, size: 132, color: Colors.black38),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ExampleIconCustomWidget(
                  color: Colors.teal,
                  icon: Icon(
                    Icons.tv,
                    semanticLabel: 'Google Assistant',
                    size: 120,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Image_Examples extends StatelessWidget {
  const Image_Examples({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Basics Example'),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ///
                /// Raw images without any fit
                ///

                TextLabel(
                  text: 'These are the Raw Images',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                  ),
                ),

                ///
                /// BoxFit.fill
                ///

                TextLabel(
                  text: 'BoxFit.fill\n(Aspect Ratio Not Maintained)',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fill,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.fill,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.fill,
                  ),
                ),

                ///
                /// BoxFit.contain
                ///
                TextLabel(
                  text: 'BoxFit.contain\n(Aspect Ratio Is Maintained)',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.contain,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.contain,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.contain,
                  ),
                ),

                ///
                /// BoxFit.cover
                ///
                ///
                TextLabel(
                  text: 'BoxFit.cover',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.cover,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.cover,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.cover,
                  ),
                ),

                ///
                /// BoxFit.fitHeight
                ///
                TextLabel(text: 'BoxFit.fitHeight\n(It could crop the width)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.fitHeight,
                  ),
                ),

                ///
                /// BoxFit.fitWidth
                ///
                TextLabel(text: 'BoxFit.fitWidth\n( It could crop the height)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.fitWidth,
                  ),
                ),

                ///
                /// BoxFit.none
                ///

                TextLabel(text: 'BoxFit.none\n(Let It Overflow)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.none,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.none,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.none,
                  ),
                ),

                ///
                /// BoxFit.scaleDown
                ///

                TextLabel(
                  text:
                      'BoxFit.scaleDown\n(Shrink if too big, else do nothing)',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextLabel extends StatelessWidget {
  const TextLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          border: Border.all(
            width: 2,
            color: AppColors.appThemeDividerColor,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.dropShadowColor,
              offset: const Offset(1, 1),
              blurRadius: 1,
            )
          ]),
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            shadows: [
              Shadow(
                color: AppColors.dropShadowColor,
                offset: const Offset(1, 1),
                blurRadius: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextExamples extends StatelessWidget {
  const TextExamples({
    Key? key,
  }) : super(key: key);

  /// Text: "A run of text with a single style."

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Basics Example'),
      ),
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
                    AppStrings.textAlign,
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
                    AppStrings.notAlignedDefault,
                  ),
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
                Container(
                  child: const Text(
                    AppStrings.leftAligned,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  child: const Text(
                    AppStrings.centerAlign,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  child: const Text(
                    AppStrings.rightAlign,
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
                    AppStrings.softWrap,
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
                    AppStrings.ifSoftwrapIsNotSpecified,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// overflow
                Container(
                  child: const Text(
                    AppStrings.overflow,
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
                    AppStrings.overflowElipsisTestText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: const Text(
                    AppStrings.overflowClipTestText,
                    softWrap: false,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: const Text(
                    AppStrings.overflowFadeTestText,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: const Text(
                    AppStrings.overflowDiscuss,
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
                    AppStrings.textScaleFactor,
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
                    AppStrings.textScaleFactorTestText,
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
                    AppStrings.textStyle,
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
                    AppStrings.fontWeight,
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
                    AppStrings.w100,
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
                    AppStrings.w200,
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
                    AppStrings.w300,
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
                    AppStrings.w400,
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
                    AppStrings.w500,
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
                    AppStrings.w600,
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
                    AppStrings.w700,
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
                    AppStrings.w700IsBold,
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
                    AppStrings.w800,
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
                    AppStrings.w900,
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
                    AppStrings.fontStyle,
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
                    AppStrings.italic,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  child: const Text(
                    AppStrings.normal,
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
                    AppStrings.fontSize,
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
                    AppStrings.fs10,
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
                    AppStrings.fs12,
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
                    AppStrings.fs14,
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
                    AppStrings.fs18,
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
                    AppStrings.fs20,
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
                    AppStrings.shadowsTakesList,
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
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  child: const Text(
                    AppStrings.shadowsEx2,
                    style: TextStyle(shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: AppColors.primaryDarkPurple,
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
                ),
                const SizedBox(
                  height: 32,
                ),

                ///
                /// font color
                Container(
                  child: const Text(
                    AppStrings.colorRed,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryDarkRed,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  child: const Text(
                    AppStrings.bgBlue,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteTextColor,
                      backgroundColor: AppColors.primaryDarkBlue,
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
                    AppStrings.letterSpacingExample,
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
        ),
      ),
    );
  }
}

class BoxDecorations extends StatelessWidget {
  const BoxDecorations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decorations Example'),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),

                /// A basic borders and radius example

                Container(
                  padding: const EdgeInsets.all(30),
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0185D0),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color(0xFFFF3780),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                /// Using BorderSides
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF0185D0),
                      border: Border(
                        top: BorderSide.none,
                        bottom: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide(
                          style: BorderStyle.solid,
                          color: Color(0xFFFF3780),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),

                /// A basic DecorationImage
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/images/F.png',
                      ),
                    ),
                  ),
                ),

                /// Adding a Shadow
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        offset: Offset(8, 8),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),

                /// borderRadius of half height and width will get you a circle. This is used there to create a "3D Medallion" look.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color(0xFF777777),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                  ),
                ),

                /// No Container color results in a transparent Container. Here, we're using it to show you what's really happening with a Shadow, and how the Shadow will be cast from the whole object, regardless of opacity.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: AppColors.appThemePrimaryDarkBlue,
                      width: 3,
                    ),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(16, 16),
                      ),
                    ],
                  ),
                ),

                /// A basic LinearGradient, aligned at an angle
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.appThemePrimaryDarkBlue,
                        const Color(0xFF0185D0),
                      ],
                      stops: [0.0, 1.0],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),

                /// By placing both stops at the same point, the "fade" will take place instantly. By aligning the dark blue to topCenter, but the light blue to bottomRight, we get an angled effect that's not perfectly aligned with the corners.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.appThemePrimaryDarkBlue,
                        const Color(0xFF0185D0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      stops: [0.50, 0.50],
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                  ),
                ),

                /// A SweepGradient, shown in the "3d Medallion". Note that the first and last colors in the list have to be the same to avoid a hard edge.
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const SweepGradient(
                      colors: [
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                        Color(0xFF01D9FE),
                        Color(0xFF0185D0),
                        Color(0xFFFB7EE4),
                      ],
                      stops: [0.0, 0.25, 0.5, 0.75, 1],
                    ),
                  ),
                ),

                /// A basic RadialGradient. ***Note that the radius argument is expressed as a percentage of the *shortest side* of your object. Here, the radius has to be 0.5 in order to make the whole circle fill with the gradient. If you make the number smaller, then the last color will create a band that encloses the gradient. Experiment and see...
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                        spreadRadius: 0,
                      ),
                    ],
                    gradient: const RadialGradient(
                      colors: [
                        Colors.white,
                        Color(0xFFB7459C),
                        Colors.white,
                        Color(0xFFB7459C),
                        Colors.white,
                        Color(0xFFB7459C),
                        Colors.white,
                        Color(0xFFB7459C),
                      ],
                      stops: [0.0, 0.2, 0.2, 0.5, 0.5, 0.75, 0.75, 1.0],
                      radius: .5,
                    ),
                  ),
                ),

                /// By shifting the center, focal and focalRadius of a RadialGradient, we can create a sunrise-type effect for our fake phone screen
                Container(
                  height: 400,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color(0xFFBBBBBB),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const RadialGradient(
                      colors: [
                        Color(0xFF01D9FE),
                        Color(0xFF0185D0),
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                      ],
                      stops: [
                        0.3,
                        0.5,
                        0.8,
                        1,
                      ],
                      center: Alignment(0.0, 1.3),
                      focal: Alignment(0.0, 0.9),
                      focalRadius: 2.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ****************************************
// ****************************************
// ****************************************
//             Exercises
// ****************************************
// ****************************************
// ****************************************

@immutable
class ContainerExercises extends StatelessWidget {
  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);

  const ContainerExercises({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Exercises'),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                //TODO 1) Create Container, with height 50, width 150, and make the color appThemePrimaryDarkBlue from the app_colors.dart resource file

                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 2 ) Create a Container that is 100 high, max width, and is appThemePrimaryDarkBlue. Then give it a white child Container that is 50 high and 150 wide, that is aligned center right within its parent.

                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 3) Create Containe 300 high x 200 wide, appThemePrimaryBlue, give it 20 padding all around. Then give it a child Container that is 50 x 50, aligned top center and make the color appThemeBlueAccentColor

                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 4) Create a Container that's appThemePrimaryDarkBlue, 100 high with max width, that aligns its child top right and give it margins of 150 right and 25 left. Then give it a child Container that's 95 high, 100 wide and make the color white54.
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxDecorationExercises extends StatelessWidget {
  const BoxDecorationExercises({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decoration Exercises'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

            // TODO 1) Create a grey container, 200x200, 30 padding all around
            // TODO 2) Give it a child Container with max height and width

            // TODO 4) Give it a Border with 2 BorderSides: top and right: solid, black 3; bottom and left: none. Test it again.

            // TODO 5) Now we're going to break it. Round the corners by 10 and see what happens to the borders.

            /// **********************************************
            /// A BorderRadius won't work if the borders aren't uniform. Since this
            /// is an error that occurs in the Render layer, you won't see that anything
            /// is wrong until compile time. Then, you get this error:
            ///
            ///           A borderRadius can only be given for uniform borders.
            ///           'package:flutter/src/painting/box_border.dart':
            ///           Failed assertion: line 523 pos 12: 'borderRadius == null'
            ///
            /// Notice two things:
            ///      1) The red container still rendered and rounded your corners
            ///      but didn't render your borders
            ///      2) This error not only stopped the borders from rendering,
            ///      it also caused the child Text to not render, either
            /// Notice that it also refuses to render the text child
            ///
            /// It doesn't matter *how* the borders aren't uniform. They can be
            /// different sizes, "none", or different colors. If they're not all
            /// uniform in any way, the BorderRadius will work but the Borders
            /// and any children will not render

            // TODO 6) Create a Container, 200x200 with 30 top margin and 30 padding all around.
            // TODO 7) Use its decoration to make it grey
            // TODO 8) Give it an image that is a DecorationImage, the fit is "BoxFit.contain" and the image is "AssetImage('assets/images/F.png'),"

            // TODO 9) Make two BoxShadows in the list. The first is Color(0xFFFF3780), blurRadius 5 with offset of -8, 8 and the second is Color(0xFF0185D0), BoxShadow with blurRadius 5 and Offset 8, -8

            // TODO 10) Container, 200x200, top margin of 30, padding 30 all around
            // TODO 11) Add a Linear Gradient that has colors FFFB7EE4 and FFB7459C, is aligned topLeft to bottomRight and has stops of 0.35 and 0.65

            // TODO 12)  Give it an image that is a DecorationImage, the fit is "BoxFit.contain" and the image is "AssetImage('assets/images/F.png'),"

            // TODO 13) Create a circular border all the way around that is solid, 3 wide, has a color of 0xFFDDDDDD and a border radius of 100.

            // TODO 14) Give it a pair of BoxShadows (Hint: Both go in the same list). Their colors are 0xFF009900 and 0xFF990000, blurRadii of 15 and offsets of 4.0, 6.0 and -4.0, -6.0

            // TODO 15) Container, 200x200, top margin of 30, padding 30 all around

            // TODO 16) Solid border all the way around that is 0xFFBBBBBB, 3 wide, with a radius of 70. Give it a shadow of black87 and blur 12, with an offset of  4, 6

            // TODO 17) It's a bright, sunshiny day! Add a RadialGradient, yellow, orange and blue[300]. The stops are 0.3, 0.6 and 0.8

            // TODO 18) What really makes this work: Set the center parameter to an Alignment of 0.8, -0.8

            // TODO 19) Container, 400 high and 200 wide. Again, top margin of 30 and padding 30 all around

            // TODO 20) Solid border all around, 3 wide and the color is FFBBBBBB. Round the corners by 20

            // TODO 21) Make a BoxShadow that's black 87, blurRadius of 12 and offset 4. 6

            // TODO 22) Let's turn this into a cool background for a phone app. Add a SweepGradient with colors: FF0185D0, FFB7459C, FFFF3780  with stops of 0.5, 0.75, and 1

            // TODO 23) Last but not least, make this look really cool by moving the center so the point of origin is centered horizontally and on the bottom edge of the screen. Figure that out yourself... by now, you can do it! Hint: Look at what the center parameter of the SweepGradient takes. If you're in an IDE you can link to the SweepGradient source code.
          ],
        ),
      ),
    );
  }
}

class TextExampleExercises extends StatelessWidget {
  const TextExampleExercises({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);

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

class ImageExercise extends StatelessWidget {
  const ImageExercise({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Exercises'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).cardColor,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // TODO Recreate the examples file using the custom ImageFrame Widget provided
              //
              // The images to use are:
              //        AppImages.jumping,     (It uses Image.asset)
              //        AppImages.owl,     (It uses Image.network)
              //        AppImages.invertedJenny,     (It uses Image.network)
              //
              // Be sure to check if you're dealing with an asset or network image
              //
              // Sample:
              //                ImageFrame(
              //                  heightAndWidth: heightAndWidth,
              //                  image: <YOUR CODE HERE>
              //                ),

              ///
              /// BoxFit.fill
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // Example:
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.contain
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.cover
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.fitHeight
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.fitWidth
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.none
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.scaleDown
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny
            ],
          ),
        ),
      ),
    );
  }
}

class IconExercise extends StatelessWidget {
  const IconExercise({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Exercises'),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: const Color(0xFF777777),
                // TODO 1) Add the icon parameter: Google Translate icon, size is 80 and color is white 54
                // Your code here
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: Colors.purple,
                // TODO 2) Add the icon parameter: Google Assistant icon, size 120 and color is white 54
                // Your code here
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: Colors.white,
                // TODO 3) Add the icon parameter: Alarm icon, size is 80 and color is red and add a semantics label that says Red Alarm
                // Your code here
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: Colors.red,
                // TODO 4) Add the icon parameter: Power Settings icon, size is 80 and color is white
                // Your code here
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            ],
          ),
        ),
      ),
    );
  }
}

class ExampleIconCustomWidget extends StatelessWidget {
  const ExampleIconCustomWidget({
    Key? key,
    this.icon,
    this.color,
  }) : super(key: key);

  final Icon? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          style: BorderStyle.solid,
          color: const Color(0xFFBBBBBB),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          const BoxShadow(
            color: Colors.black87,
            blurRadius: 12,
            offset: Offset(4, 6),
          ),
        ],
      ),
      child: icon,
    );
  }
}

// ****************************************
// ****************************************
// ****************************************
//             Solutions
// ****************************************
// ****************************************
// ****************************************

@immutable
class ContainerSolution extends StatelessWidget {
  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);

  const ContainerSolution({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Solutions'),
      ),
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

class BoxDecorationSolution extends StatelessWidget {
  const BoxDecorationSolution({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decorations Solutions'),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  width: 200,
                  padding: const EdgeInsets.all(30),
                  color: Colors.grey,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                          width: 3,
                        ),
                        right: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),

                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

                Container(
                  height: 200,
                  width: 200,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    boxShadow: [
                      const BoxShadow(
                        color: Color(0xFFFF3780),
                        blurRadius: 5,
                        offset: Offset(-8, 8),
                      ),
                      const BoxShadow(
                        color: Color(0xFF0185D0),
                        blurRadius: 5,
                        offset: Offset(8, -8),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFB7EE4),
                        Color(0xFFB7459C),
                      ],
                      stops: [
                        0.35,
                        0.65,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      width: 3,
                      color: const Color(0xFFDDDDDD),
                    ),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      const BoxShadow(
                        color: const Color(0xFF009900),
                        blurRadius: 15,
                        offset: Offset(4.0, 6.0),
                      ),
                      const BoxShadow(
                        color: const Color(0xFF990000),
                        blurRadius: 15,
                        offset: Offset(-4.0, -6.0),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: const Color(0xFFBBBBBB),
                    ),
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4.0, 6.0),
                      ),
                    ],
                    gradient: RadialGradient(
                      colors: [
                        Colors.yellow,
                        Colors.orange,
                        Colors.blue[300]!,
                      ],
                      stops: [
                        0.3,
                        0.6,
                        0.8,
                      ],
                      center: Alignment(0.8, -0.8),
                    ),
                  ),
                ),

                Container(
                  height: 400,
                  width: 200,
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: const Color(0xFFBBBBBB),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const SweepGradient(
                      colors: [
                        const Color(0xFF0185D0),
                        const Color(0xFFB7459c),
                        const Color(0xFFFF3780),
                      ],
                      stops: [
                        0.5,
                        0.75,
                        1,
                      ],
                    center: Alignment.bottomCenter
                    ),
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

class TextExampleSolution extends StatelessWidget {
  const TextExampleSolution({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);

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

class ImageSolution extends StatelessWidget {
  const ImageSolution({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Solutions'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).cardColor,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // TODO Recreate the examples file using the custom ImageFrame Widget provided
              //
              // The images to use are:
              //        AppImages.jumping,     (It uses Image.asset)
              //        AppImages.owl,     (It uses Image.network)
              //        AppImages.invertedJenny,     (It uses Image.network)
              //
              // Be sure to check if you're dealing with an asset or network image
              //
              // Sample:
              //                ImageFrame(
              //                  heightAndWidth: heightAndWidth,
              //                  image: <YOUR CODE HERE>
              //                ),

              ///
              /// BoxFit.fill
              ///
              // Example:
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.fill,
                ),
              ),

              ///
              /// BoxFit.contain
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.contain,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.contain,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.contain,
                ),
              ),

              ///
              /// BoxFit.cover
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.cover,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.cover,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.cover,
                ),
              ),

              ///
              /// BoxFit.fitHeight
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fitHeight,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.fitHeight,
                ),
              ),

              ///
              /// BoxFit.fitWidth
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fitWidth,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.fitWidth,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.fitWidth,
                ),
              ),

              ///
              /// BoxFit.none
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.none,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.none,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.none,
                ),
              ),

              ///
              /// BoxFit.scaleDown
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.scaleDown,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.scaleDown,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageFrame extends StatelessWidget {
  const ImageFrame({
    Key? key,
    required this.image,
    required this.heightAndWidth,
  }) : super(key: key);

  final Image image;
  final double heightAndWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightAndWidth,
        width: heightAndWidth,
        color: AppColors.primaryRed,
        child: image);
  }
}

class IconSolution extends StatelessWidget {
  const IconSolution({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons Solutions'),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ExampleIconCustomWidget(
                  color: const Color(0xFF777777),
                  // TODO 1) Add the icon parameter: Google Translate icon, size is 80 and color is white 54
                  icon: Icon(
                    Icons.g_translate,
                    semanticLabel: 'Google Translate',
                    size: 80,
                    color: Colors.white54,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ExampleIconCustomWidget(
                  color: Colors.purple,
                  // TODO 2) Add the icon parameter: Google Assistant icon, size 120 and color is white 54
                  icon: Icon(
                    Icons.assistant,
                    semanticLabel: 'Google Assistant',
                    size: 120,
                    color: Colors.white54,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ExampleIconCustomWidget(
                  color: Colors.white,
                  // TODO 3) Add the icon parameter: Alarm icon, size is 80 and color is red and add a semantics label that says Red Alarm
                  icon: Icon(
                    Icons.alarm,
                    semanticLabel: 'Red Alarm',
                    size: 80,
                    color: Colors.red,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ExampleIconCustomWidget(
                  color: Colors.red,
                  // TODO 4) Add the icon parameter: Power Settings icon, size is 80 and color is white
                  icon: Icon(
                    Icons.power_settings_new,
                    semanticLabel: 'Power Button',
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ****************************************
// ****************************************
// ****************************************
//             Support Classes
// ****************************************
// ****************************************
// ****************************************

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
    required this.callback1,
    required this.callback2,
    required this.callback3,
    required this.label,
  }) : super(key: key);

  final String label;
  final VoidCallback callback1;
  final VoidCallback callback2;
  final VoidCallback callback3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                callback: callback1,
                text: 'Example',
                color: Color(0xFFd8d8d8),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback2,
                text: 'Exercise',
                color: Color(0xFFd8d8d8),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                callback: callback3,
                text: 'Solution',
                color: Color(0xFFd8d8d8),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Home2 extends StatelessWidget {
  final String title;

  const Home2({Key? key, required this.title})
      : super(
          key: key,
        );

  static const Widget divider__________________________ = SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Column(
          children: [
            ButtonSection(
              label: 'Containers, Alignment, Padding and Margin',
              callback1: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const Containers(),
                ),
              ),
              callback2: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerExercises(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerSolution(),
                ),
              ),
            ),
            divider__________________________,
            ButtonSection(
              label: 'Decorations and Gradients',
              callback1: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxDecorations(),
                ),
              ),
              callback2: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxDecorationExercises(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxDecorationSolution(),
                ),
              ),
            ),
            divider__________________________,
            ButtonSection(
              label: 'Icons',
              callback1: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const IconExamples(),
                ),
              ),
              callback2: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const IconExercise(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const IconSolution(),
                ),
              ),
            ),
            divider__________________________,
            ButtonSection(
              label: 'Image Basics',
              callback1: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const Image_Examples(),
                ),
              ),
              callback2: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageExercise(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageSolution(),
                ),
              ),
            ),
            divider__________________________,
            ButtonSection(
              label: 'Text and TextStyle',
              callback1: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextExamples(),
                ),
              ),
              callback2: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextExampleExercises(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextExampleSolution(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

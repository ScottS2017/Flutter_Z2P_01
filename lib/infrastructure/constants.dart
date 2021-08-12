// import 'package:flutter/material.dart';
//
// class AppColors {
//
//   static const Color appThemePrimaryDarkBlue = Color(0xFF303F9F);
//   static const Color appThemeLightPrimaryBlue = Color(0xFFC5CAE9);
//   static const Color appThemePrimaryBlue = Color(0xFF3F51B5);
//   static const Color appThemeTextAndIcons = Color(0xFFFFFFFF);
//   static const Color appThemeBlueAccentColor = Color(0xFF448AFF);
//   static const Color appThemePrimaryText = Color(0xFF212121);
//   static const Color appThemeSecondaryText = Color(0xFF757575);
//   static const Color appThemeDividerColor = Color(0xFFBDBDBD);
//
//   // General Colors
//   static const Color whiteTextColor = Color(0xB3FFFFFF);
//   static const Color blackTextColor = Color(0xFF111111);
//   static const Color dropShadowColor = Color(0x33000000);
//   static const Color offWhitePageBackground = Color(0xFFF9F9F9);
//   static const Color whiteScrim = Color(0x44FFFFFF);
//   static const Color blackScrim = Color(0x99000000);
//
//   static const Color bronze = Color(0xFFD6943A);
//   static const Color silver = Color(0xFFD9D9D9);
//   static const Color gold = Color(0xFFF7D44E);
//
//   // Material Design Color Sets
//   static const Color primaryBlue = Color(0xff2962ff);
//   static const Color primaryLightBlue = Color(0xff768fff);
//   static const Color primaryDarkBlue = Color(0xff0039cb);
//
//   static const Color primaryRed = Color(0xffd50000);
//   static const Color primaryLightRed = Color(0xffff5131);
//   static const Color primaryDarkRed = Color(0xff9b0000);
//
//   static const Color primaryGreen = Color(0xff00c853);
//   static const Color primaryLightGreen = Color(0xff5efc82);
//   static const Color primaryDarkGreen = Color(0xff009624);
//
//   static const Color primaryPurple = Color(0xffaa00ff);
//   static const Color primaryLightPurple = Color(0xffe254ff);
//   static const Color primaryDarkPurple = Color(0xff7200ca);
//
//   static const Color primaryYellow = Color(0xffffd600);
//   static const Color primaryLightYellow = Color(0xffffff52);
//   static const Color primaryDarkYellow = Color(0xffc7a500);
// }
//
// class AppImages{
//   static const String flutterLogo = 'assets/images/F.png';
//   static const String blueprint = 'assets/images/blueprint.jpg';
//   static const String dive = 'assets/images/dive CC-0.jpg';
//   static const String keyboardHelp = 'assets/images/help_on_keyboard.jpg';
//   static const String jumping = 'assets/images/jumping1.jpg';
//   static const String invertedJenny = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Inverted_Jenny.jpg/180px-Inverted_Jenny.jpg';
//   static const String owl = 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
// }
//
// class AppStrings {
//
//   // AppBar Titles
//   static const textAlign  = 'textAlign:';
//   static const notAlignedDefault  = 'Not Aligned, (system default)';
//   static const notAlignedCenterRight  ='Not Aligned, (inherits parent Alignment.centerRight)';
//   static const leftAligned  =  'Left Aligned';
//   static const centerAlign  = 'Center Aligned';
//   static const rightAlign= 'Right Aligned';
//   static const softWrap  = 'softWrap:';
//   static const ifSoftwrapIsNotSpecified  =  'If softWrap is not specified then the text will honor the default TextStyle setting. You can set your own default TextStyle, but if you do not specify anything then it will default to true. For the overflow examples below, we turned softWrap off (false).';
//   static const overflow  = 'overflow:';
//   static const String overflowElipsisTestText = 'TextOverflow.ellipsis (test test test test test test test test test test test test test test';
//   static const String overflowClipTestText = 'TextOverflow.clip (test test test test test test test test test test test test test test';
//   static const String overflowFadeTestText = 'TextOverflow.fade: softWrap false (test test test test test test test test test test test test test test';
//   static const String overflowDiscuss = 'DISCUSS: TextOverflow.fade: softWrap true, maxLines 1 (test test test test test test test test test test test test test test ';
//   static const String textScaleFactor = 'textScaleFactor: (IGNORES ACCESSIBILITY!)';
//   static const String textScaleFactorTestText = "Using textScaleFactor does NOT help your accessibility, it overrides it.  Flutter's text adjusts for accessibility by default but this text will not increase in size if the system accessibility settings are changed since it's textScaleFactor is manually set to 0.75";
//   static const String textStyle = 'TextStyle';
//   static const String fontWeight = 'fontWeight:';
//   static const String w100 = 'fontWeight: FontWeight.w100';
//   static const String w200 = 'fontWeight: FontWeight.w200';
//   static const String w300 = 'fontWeight: FontWeight.w300';
//   static const String w400 = 'fontWeight: FontWeight.w400';
//   static const String w500 = 'fontWeight: FontWeight.w500';
//   static const String w600 = 'fontWeight: FontWeight.w600';
//   static const String w700 = 'fontWeight: FontWeight.w700';
//   static const String w700IsBold = 'fontWeight: FontWeight.bold = w700';
//   static const String w800 = 'fontWeight: FontWeight.w800';
//   static const String w900 = 'fontWeight: FontWeight.w900';
//   static const String fontStyle = 'fontStyle:';
//   static const String italic = 'fontStyle: FontStyle.italic';
//   static const String normal = 'fontStyle: FontStyle.normal';
//   static const String fontSize = 'fontSize: (Respects Accessibility)';
//   static const String fs10 = 'fontSize: 10,';
//   static const String fs12 = 'fontSize: 12';
//   static const String fs14 = 'fontSize: 14,';
//   static const String fs18 = 'fontSize: 18,';
//   static const String fs20 = 'fontSize: 20,';
//   static const String shadowsTakesList = 'shadows: (Takes a List of shadows)';
//   static const String shadowsEx1 = 'blurRadius: 2, color: Colors.black38, offset: Offset(1, 1),';
//   static const String shadowsEx2 = 'blurRadius: 5, color: Colors.purple, offset: Offset(0, 0),';
//   static const String multipleShadows = 'M   u   l   t   i   p   l   e     S   h   a   d   o   w   s';
//   static const String colorRed = 'color: Colors.red';
//   static const String bgBlue = ' backgroundColor: Colors.blue ';
//   static const String letterSpacingExample = 'letterSpacing: 10,';
//   static const String textExercises = 'Test Exercises';
//
//   static const String mon = 'Monday';
//   static const String tu = 'Tuesday';
//   static const String wed = 'Wednesday';
//   static const String th = 'Thursday';
//   static const String fr = 'Friday';
//   static const String sat = 'Saturday';
//   static const String sun = 'Sunday';
//   static const String getAd = 'Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal.';
// }
//
//
// /// Text Styles
// class AppTextStyles {
//   const AppTextStyles._();
//
//   static TextStyle appBarTextStyle = TextStyle(
//     color: AppColors.whiteTextColor,
//     shadows: [
//       Shadow(
//         color: AppColors.dropShadowColor,
//         offset: Offset(2, 2),
//         blurRadius: 1,
//       ),
//     ],
//   );
//
//   static const TextStyle normal36 =  TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold36 = TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic36 =  TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic36 =
//   TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal30 =  TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold30 =  TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic30 =  TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic30 =
//   TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal24 =  TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold24 =  TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic24 =  TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic24 =
//   TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal18 =  TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold18 =  TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic18 =  TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic18 =
//   TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal16 =  TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold16 =  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic16 =  TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic16 =
//   TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal14 =  TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold14 =  TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic14 =  TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic14 =
//   TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal12 =  TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold12 =  TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic12 =  TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic12 =
//   TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal10 =  TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold10 =  TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic10 =  TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic10 =
//   TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal8 =  TextStyle(fontSize: 8.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold8 =  TextStyle(fontSize: 8.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic8 =  TextStyle(fontSize: 8.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic8 =
//   TextStyle(fontSize: 8.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//
//   static const TextStyle normal6 =  TextStyle(fontSize: 6.0, fontWeight: FontWeight.normal);
//   static const TextStyle bold6 =  TextStyle(fontSize: 6.0, fontWeight: FontWeight.bold);
//   static const TextStyle italic6 =  TextStyle(fontSize: 6.0, fontStyle: FontStyle.italic);
//   static const TextStyle boldItalic6 =
//   TextStyle(fontSize: 6.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
// }
//
// class AppThemes {
//
//   ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: AppColors.primaryBlue,
//     accentColor: AppColors.primaryDarkBlue,
//     backgroundColor: const Color(0xFFEEEEEE),
//     errorColor: Colors.red[400],
//     cardColor: const Color(0xFFE0E0E0),
//   );
// }
//
// class ImageFrame extends StatelessWidget {
//   const ImageFrame({
//     Key? key,
//     required this.image,
//     required this.heightAndWidth,
//   }) : super(key: key);
//
//   final Image image;
//   final double heightAndWidth;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: heightAndWidth,
//         width: heightAndWidth,
//         color: AppColors.primaryRed,
//         child: image
//     );
//   }
// }
//
//
// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     Key? key,
//     required this.text,
//     required this.callback,
//     this.height = 35,
//     this.color = const Color(0xFFD3DCE4),
//   }) : super(key: key);
//
//   final String text;
//   final double height;
//   final Color color;
//   final VoidCallback callback;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: callback,
//       child: Container(
//         height: height,
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(6),
//           boxShadow: [
//             const BoxShadow(
//               color: AppColors.dropShadowColor,
//               blurRadius: 2,
//               offset: Offset(1,1),
//             ),
//           ],
//         ),
//         child: FittedBox(
//           child: Text(text,
//             style: const TextStyle(
//                 shadows: [
//                   Shadow(
//                     color: AppColors.dropShadowColor,
//                     blurRadius: 1,
//                     offset: Offset(1,1),
//                   ),
//                 ]
//             ),),
//         ),
//       ),
//     );
//   }
// }
//
//
// class ExampleIconCustomWidget extends StatelessWidget {
//   const ExampleIconCustomWidget({
//     Key? key,
//     this.icon,
//     this.color,
//   }) : super(key: key);
//
//   final Icon? icon;
//   final Color? color;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       decoration: BoxDecoration(
//         color: color,
//         border: Border.all(
//           style: BorderStyle.solid,
//           color: const Color(0xFFBBBBBB),
//           width: 3,
//         ),
//         borderRadius: BorderRadius.circular(100),
//         boxShadow: [
//           const BoxShadow(
//             color: Colors.black87,
//             blurRadius: 12,
//             offset: Offset(4, 6),
//           ),
//         ],
//       ),
//       child: icon,
//     );
//   }
// }
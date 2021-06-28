import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_colors.dart';
import 'package:o1_widgets_you_can_see/widgets/common/custom_button.dart';

class Home2 extends StatelessWidget {
  final String title;

  const Home2({Key? key, required this.title}) : super(key: key);

  static const Widget divider__________________________ = SizedBox(height: 16);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
             double buttonWidth = constraints.maxWidth * 0.2;
             return Column(
               children: <Widget>[
                 CustomButton(
                   text: 'Container',
                   width: buttonWidth,
                   color: AppColors.primaryDarkLightYellow,
                 ),
                 divider__________________________
               ],
             );
            },
          )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/build_app_bar.dart';

class IconExercise extends StatelessWidget {
  const IconExercise({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
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

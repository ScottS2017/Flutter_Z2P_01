import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/build_app_bar.dart';
class IconSolution extends StatelessWidget {
  const IconSolution({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                const ExampleIconCustomWidget(
                  color: Color(0xFF777777),
                  // TODO 1) Add the icon parameter: Google Translate icon, size is 80 and color is white 54
                  icon: Icon(
                    Icons.g_translate,
                    semanticLabel: 'Google Translate',
                    size: 80,
                    color: Colors.white54,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                const ExampleIconCustomWidget(
                  color: Colors.purple,
                  // TODO 2) Add the icon parameter: Google Assistant icon, size 120 and color is white 54
                  icon: Icon(
                    Icons.assistant,
                    semanticLabel: 'Google Assistant',
                    size: 120,
                    color: Colors.white54,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                const ExampleIconCustomWidget(
                  color: Colors.white,
                  // TODO 3) Add the icon parameter: Alarm icon, size is 80 and color is red and add a semantics label that says Red Alarm
                  icon: Icon(
                    Icons.alarm,
                    semanticLabel: 'Red Alarm',
                    size: 80,
                    color: Colors.red,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                const ExampleIconCustomWidget(
                  color: Colors.red,
                  // TODO 4) Add the icon parameter: Power Settings icon, size is 80 and color is white
                  icon: Icon(
                    Icons.power_settings_new,
                    semanticLabel: 'Power Button',
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ],
            ),
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
        boxShadow: const [
          BoxShadow(
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

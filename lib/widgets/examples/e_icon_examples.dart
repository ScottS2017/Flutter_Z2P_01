import 'package:flutter/material.dart';

class IconExamples extends StatelessWidget {
  const IconExamples({
    Key key,
  }) : super(key: key);

  final SizedBox _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 32,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          ExampleIconCustomWidget(
            color: const Color(0xFF777777),
            //----------------------------------------------
            //----------------------------------------------
            icon: Icon(
              Icons.g_translate,
              semanticLabel: 'Google Translate',
              size: 80,
              color: Colors.white54,
            ),
            //----------------------------------------------
            //----------------------------------------------
          ),
          _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          ExampleIconCustomWidget(
            color: Colors.purple,
            //----------------------------------------------
            //----------------------------------------------
            icon: Icon(
              Icons.assistant,
              semanticLabel: 'Google Assistant',
              size: 120,
              color: Colors.white54,
            ),
            //----------------------------------------------
            //----------------------------------------------
          ),
          _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          ExampleIconCustomWidget(
            color: Colors.white,
            //----------------------------------------------
            //----------------------------------------------
            icon: Icon(
              Icons.alarm,
              semanticLabel: 'Red Alarm',
              size: 80,
              color: Colors.red,
            ),
            //----------------------------------------------
            //----------------------------------------------
          ),
          _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          ExampleIconCustomWidget(
            color: Colors.red,
            //----------------------------------------------
            //----------------------------------------------
            icon: Icon(
              Icons.power_settings_new,
              semanticLabel: 'Power Button',
              size: 80,
              color: Colors.white,
            ),
            //----------------------------------------------
            //----------------------------------------------
          ),
          _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        ],
      ),
    );
  }
}

class ExampleIconCustomWidget extends StatelessWidget {
  final Icon icon;
  final Color color;

  const ExampleIconCustomWidget({
    Key key,
    this.icon,
    this.color,
  }) : super(key: key);

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

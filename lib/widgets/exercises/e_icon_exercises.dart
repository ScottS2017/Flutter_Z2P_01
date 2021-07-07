import 'package:flutter/material.dart';

class IconExercise extends StatelessWidget {
  const IconExercise({
    Key? key,
  }) : super(key: key);

  final SizedBox _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
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
              _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: const Color(0xFF777777),
                // TODO 1) Add the icon parameter: Google Translate icon, size is 80 and color is white 54
              ),
              _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: Colors.purple,
                // TODO 2) Add the icon parameter: Google Assistant icon, size 120 and color is white 54
              ),
              _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: Colors.white,
                // TODO 3) Add the icon parameter: Alarm icon, size is 80 and color is red and add a semantics label that says Red Alarm
              ),
              _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ExampleIconCustomWidget(
                color: Colors.red,
                // TODO 4) Add the icon parameter: Power Settings icon, size is 80 and color is white
              ),
              _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            ],
          ),
        ),
      ),
    );
  }
}

class ExampleIconCustomWidget extends StatelessWidget {
  final Icon? icon;
  final Color? color;

  const ExampleIconCustomWidget({
    Key? key,
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

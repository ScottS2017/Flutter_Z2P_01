import 'package:flutter/material.dart';

@immutable
class Containers extends StatelessWidget {
  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 16);
  final String test = 'test';

  const Containers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFFB7EE4),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFB7459C),
            alignment: Alignment.center,
            child: Container(
              height: 50,
              width: 50,
              color: const Color(0xFFFB7EE4),
            ),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFFB7EE4),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Container(
              height: 50,
              width: 50,
              color: const Color(0xFFB7459C),
            ),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFB7459C),
            margin: const EdgeInsets.only(left: 150),
            alignment: Alignment.topRight,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: const Color(0xFFFB7EE4),
            ),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFFB7EE4),
            alignment: const Alignment(-0.5, 1.0),
            child: Container(
              height: 50,
              width: 10,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

@immutable
class Containers extends StatelessWidget {

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height:16);

  const Containers({
    Key key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
      Container(
        height: 100,
        width: double.infinity,
        color: Colors.green,
      ),
        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.green,
          alignment: Alignment.center,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
        ),
        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.green,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
        ),
        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.green,
          margin: const EdgeInsets.only(left: 150),
          alignment: Alignment.topRight,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
        ),
        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.green,
          alignment: Alignment(-0.5,1.0),
          child: Container(
            height: 50,
            width: 10,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
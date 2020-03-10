import 'package:flutter/material.dart';

class BoxDecorations extends StatelessWidget {
  const BoxDecorations({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(30),
            width: 200,
            height: 200,
            color: Colors.grey,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
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
                color: Colors.green,
                border: Border(
                  top: BorderSide.none,
                  bottom: BorderSide.none,
                  left: BorderSide.none,
                  right: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.red,
                    width: 3,
                  ),
                ),
              ),
            ),
          ),
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
            ),
          ),
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
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFF990099),
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
                  Colors.green,
                  Colors.red,
                ],
                stops: [0.0, 1.0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.red,
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
                colors: [Colors.red, Colors.purple, Colors.green, Colors.blue, Colors.red],
                stops: [0.0, 0.25, 0.5, 0.75, 1],
              ),
            ),
          ),
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
                  Colors.purple,
                  Colors.white,
                  Colors.purple,
                  Colors.white,
                  Colors.purple,
                  Colors.white,
                  Colors.purple,
                ],
                stops: [0.0, 0.2, 0.2, 0.5, 0.5, 0.75, 0.75, 1.0],
                radius: .5,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
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
              gradient: RadialGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.blue[700],
                  Colors.purple,
                  const Color(
                    0xFF883399,
                  ),
                ],
                stops: [
                  0.3,
                  0.5,
                  0.8,
                  1,
                ],
                center: const Alignment(0.0, 1.3),
                focal: const Alignment(0.0, 0.9),
                focalRadius: 2.0,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

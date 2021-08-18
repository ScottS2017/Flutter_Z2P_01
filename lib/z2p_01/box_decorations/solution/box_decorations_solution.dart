import 'package:flutter/material.dart';

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
                    decoration: const BoxDecoration(
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
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/F.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFF3780),
                        blurRadius: 5,
                        offset: Offset(-8, 8),
                      ),
                      BoxShadow(
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
                    gradient: const LinearGradient(
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
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF009900),
                        blurRadius: 15,
                        offset: Offset(4.0, 6.0),
                      ),
                      BoxShadow(
                        color: Color(0xFF990000),
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
                    boxShadow: const [
                      BoxShadow(
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
                      stops: const [
                        0.3,
                        0.6,
                        0.8,
                      ],
                      center: const Alignment(0.8, -0.8),
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
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 12,
                        offset: Offset(4, 6),
                      ),
                    ],
                    gradient: const SweepGradient(
                        colors: [
                          Color(0xFF0185D0),
                          Color(0xFFB7459c),
                          Color(0xFFFF3780),
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
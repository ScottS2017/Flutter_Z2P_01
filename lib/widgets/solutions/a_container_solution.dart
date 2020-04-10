import 'package:flutter/material.dart';

@immutable
class ContainerSolution extends StatelessWidget {
  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 16);

  const ContainerSolution({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          //TODO 1) Create a basic Container, color 0xFFFB7EE4 with height 50 and width 150
          Container(
            height: 50,
            width: 150,
            color: const Color(0xFFFB7EE4),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          // TODO 2) Create a Container, color 0xFFB7459C that is 100 high, max width and aligns its child center right.
          //TODO 3) Give it a white child Container that is 50 high and 150 wide
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFB7459C),
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              width: 150,
              color: Colors.white,
            ),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          // TODO 4) Create Container, color 0xFFFB7EE4,300 high x 200 wide, aligned top center and give it 20 padding all around
          // TODO 5) Give it a child Container that is 50 x 50 and make the color black54
          Container(
            height: 300,
            width: 200,
            color: const Color(0xFFFB7EE4),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.black26,
            ),
          ),
          divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
          // TODO 6) Create a Container, color 0xFFB7459C, 100 high with max width, top right aligned and give it margins of 150 right and 25 left
          // TODO 7) Give it a child Container that's 95 high, 100 wide and make the color white54
          Container(
            height: 100,
            width: double.infinity,
            color: const Color(0xFFB7459C),
            margin: const EdgeInsets.only(right: 150, left: 25),
            alignment: Alignment.topRight,
            child: Container(
              height: 95,
              width: 100,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}

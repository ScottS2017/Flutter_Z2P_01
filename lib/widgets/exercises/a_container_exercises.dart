import 'package:flutter/material.dart';

@immutable
class ContainerExercises extends StatelessWidget {

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height:16);

  const ContainerExercises({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

        // TODO Delete the placeholder
        Placeholder(
          fallbackHeight: 750,
          fallbackWidth: double.infinity,
        ),
        
        //TODO 1) Create a basic Container, color 0xFFFB7EE4 with height 50 and width 150

        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        // TODO 2) Create a Container, color 0xFFB7459C that is 100 high, max width and aligns its child center right.
        //TODO 3) Give it a white child Container that is 50 high and 150 wide

        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        // TODO 4) Create Container, color 0xFFFB7EE4,300 high x 200 wide, aligned top center and give it 20 padding all around
        // TODO 5) Give it a child Container that is 50 x 50 and make the color black54

        divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
        // TODO 6) Create a Container, color 0xFFB7459C, 100 high with max width, top right aligned and give it margins of 150 right and 25 left
        // TODO 7) Give it a child Container that's 95 high, 100 wide and make the color white54

      ],
    );
  }
}
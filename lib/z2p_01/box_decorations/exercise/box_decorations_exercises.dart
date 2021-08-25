import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/build_app_bar.dart';

class BoxDecorationExercises extends StatelessWidget {
  const BoxDecorationExercises({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 30,
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
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO 1) Create a grey container, 200x200, 30 padding all around

              // TODO 2) Give it a white child Container with max height and width

              // TODO 4) Give the parent Container a Border with 2 BorderSides: top and right: solid, black 3; bottom and left: none. Test it again.

              // TODO 5) Now we're going to break it. Round the corners by 10 and see what happens to the borders.

              /// **********************************************
              /// A BorderRadius won't work if the borders aren't uniform. Since this
              /// is an error that occurs in the Render layer, you won't see that anything
              /// is wrong until compile time. Then, you get this error:
              ///
              ///           "A borderRadius can only be given for a uniform Border."
              ///
              /// Notice two things:
              ///      1) The grey container still rendered and rounded your corners
              ///      but didn't render your borders
              ///      2) This error not only stopped the borders from rendering,
              ///      it also caused the child Text to not render, either
              ///
              /// It doesn't matter *how* the borders aren't uniform. They can be
              /// different sizes, "none", or different colors. If they're not all
              /// uniform in any way, the BorderRadius will work but the Borders
              /// and any children will not render
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO 6) Create a Container, 200x200 with 30 top margin and 30 padding all around.
              // TODO 7) Use its decoration to make it grey
              // TODO 8) Give it an image that is a DecorationImage, the fit is "BoxFit.contain" and the image is "AssetImage('assets/images/F.png'),"

              // TODO 9) Make two BoxShadows in the list. The first is Color(0xFFFF3780), blurRadius 5 with offset of -8, 8 and the second is Color(0xFF0185D0), BoxShadow with blurRadius 5 and Offset 8, -8
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO 10) Container, 200x200, top margin of 30, padding 30 all around
              // TODO 11) Add a Linear Gradient that has colors FFFB7EE4 and FFB7459C, is aligned topLeft to bottomRight and has stops of 0.35 and 0.65

              // TODO 12)  Give it an image that is a DecorationImage, the fit is "BoxFit.contain" and the image is "AssetImage('assets/images/F.png'),"

              // TODO 13) Create a circular border all the way around that is solid, 3 wide, has a color of 0xFFDDDDDD and a border radius of 100.

              // TODO 14) Give it a pair of BoxShadows. Their colors are 0xFF009900 and 0xFF990000, blurRadii of 15 and offsets of 4.0, 6.0 and -4.0, -6.0

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO 15) Container, 200x200, top margin of 30, padding 30 all around

              // TODO 16) Solid border all the way around that is 0xFFBBBBBB, 3 wide, and circular with a radius of 70. Give it a shadow of black87 and blur radius of 12, and an offset of  4, 6

              // TODO 17) It's a bright, sunshiny day! Add a RadialGradient, yellow, orange and blue[300]. The stops are 0.3, 0.6 and 0.8

              // TODO 18) What really makes this work: Set the center parameter to an Alignment of 0.8, -0.8

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO 19) Container, 400 high and 200 wide. Again, top margin of 30 and padding 30 all around

              // TODO 20) Solid border all around, 3 wide and the color is FFBBBBBB. Round the corners by 20

              // TODO 21) Make a BoxShadow that's black 87, blurRadius of 12 and offset 4, 6. Take a moment to look at the result so far, in order to see how the drop shadow is cast even when the Container is transparent.

              // TODO 22) Let's turn this into a cool background for a phone app. Add a SweepGradient with colors: FF0185D0, FFB7459C, FFFF3780  with stops of 0.5, 0.75, and 1. Check out what you have so far. Clearly, it's not finished.

              // TODO 23) Last but not least, move the center so the point of origin is centered horizontally and on the bottom edge of the screen. Figure that out yourself... by now, you can do it! Hint: Look at what the center parameter of the SweepGradient takes. If you're in an IDE you can link to the SweepGradient source code, else Google is your friend.
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
            ],
          ),
        ),
      ),
    );
  }
}

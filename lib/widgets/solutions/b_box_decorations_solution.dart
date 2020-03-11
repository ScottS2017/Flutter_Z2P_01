import 'package:flutter/material.dart';

class BoxDecorationSolution extends StatelessWidget {
  const BoxDecorationSolution({
    Key key,
  }) : super(key: key);

  final SizedBox _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

          /// Exercise #1

          // TODO 1) Create a grey container, 200x200, 30 padding all around
          // TODO 2) Give it a Container with max height and width
          Container(
            padding: const EdgeInsets.all(30),
            height: 200,
            width: 200,
            color: Colors.grey,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              // TODO 3) Create a red BoxDecoration and round the corners by 10 pixels and test it
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),

                // TODO 4) Now we're going to intentionally break it. Give it a Border with BorderSides: top and right: solid, black 3; bottom and left: none
                border: Border(
                  top: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                    width: 3,
                  ),
                  bottom: BorderSide.none,
                  left: BorderSide.none,
                  right: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
              // TODO 5) Just for fun, give it a text child that says 'Fail'
              child: const Text('Fail'),

              /// **********************************************
              /// A BorderRadius won't work if the borders aren't uniform. Since this
              /// is an error that occurs in the Render layer, you won't see that anything
              /// is wrong until compile time. Then, you get this error:
              ///
              ///           A borderRadius can only be given for uniform borders.
              ///           'package:flutter/src/painting/box_border.dart':
              ///           Failed assertion: line 523 pos 12: 'borderRadius == null'
              ///
              /// Notice two things:
              ///      1) The red container still rendered and rounded your corners
              ///      but didn't render your borders
              ///      2) This error not only stopped the borders from rendering,
              ///      it also caused the child Text to not render, either
              /// Notice that it also refuses to render the text child
              ///
              /// It doesn't matter *how* the borders aren't uniform. They can be
              /// different sizes, "none", or different colors. If they're not all
              /// uniform in any way, the BorderRadius will work but the Borders
              /// and any children will not render

              // TODO 6) Comment out the above BorderRadius and see how the Borders and child now render
            ),
          ),

          /// Exercise 2


          // TODO 7) Create a Container, 200x200 with 30 top margin and 30 padding all around.
          // TODO 8) Use its decoration to make it grey
          // TODO 9) If you are using Dartpad then skip this step. Give it an image that is a DecorationImage, the fit is "BoxFit.contain" and the image is "AssetImage('assets/images/F.png'),"
        Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.grey,
            //image: DecorationImage(
            //  fit: BoxFit.contain,
            //  image: AssetImage('assets/images/F.png'),
            //),
              // TODO 10) Make two BoxShadows in the list: Red, blurRadius 5 with offset of -8, 8 and than a blue one with blurRadius 5 and Offset 8, -8
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 5,
                  offset: Offset(-8, 8),
                ),
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 5,
                  offset: Offset(8, -8),
                ),
              ],
            ),
          // TODO 11) If you're using Dartpad, give it a child that is "Icon(Icons.add, size: 96, color: Colors.white),"
          child: Icon(Icons.add,
          size: 96,
          color: Colors.white),
          ),

          /// Exercise 3)

          // TODO 12) Container, 200x200, top margin of 30, padding 30 all around
          // TODO 13) Add a Linear Gradient that is green and red, aligned topLeft to bottomRight with stops of 0.35 and 0.65
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.35, 0.65],
              ),
              // TODO 14) Again, if you're using Dartpad then skip this step. Give it an image that is a DecorationImage, the fit is "BoxFit.contain" and the image is "AssetImage('assets/images/F.png'),"
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/F.png'),
              ),
              // TODO 15) Create a circular border all the way around that is solid, 3 wide, has a color of 0xFFDDDDDD and a border radius of 100.
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFFDDDDDD),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(100),
              // TODO 16) Give it a pair of BoxShadows (Hint: Both go in the same list). Their colors are 0xFF009900 and 0xFF990000, blurRadii of 15 and offsets of 4.0, 6.0 and -4.0, -6.0
              boxShadow: [
                const BoxShadow(
                  color: Color(0xFF009900),
                  blurRadius: 15,
                  offset: Offset(4, 6),
                ),
                const BoxShadow(
                  color: Color(0xFF990000),
                  blurRadius: 15,
                  offset: Offset(-4, -6),
                ),
              ],
            ),
          ),

          /// Exercise 4)

          // TODO 17) Container, 200x200, top margin of 30, padding 30 all around
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              // TODO 18) Solid border all the way around that is 0xFFBBBBBB and circular with a radius of 70. Give it a shadow of black87 and blur 12, with an offset of  4, 6
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFFBBBBBB),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                const BoxShadow(
                  color: Colors.black54,
                  blurRadius: 12,
                  spreadRadius: 2,
                  offset: Offset(4, 6),
                ),
              ],
              // TODO 19) It's a bright, sunshiny day! Add a RadialGradient, yellow, orange and blue[300]. The stops are 0.3, 0.6 and 0.8
              gradient: RadialGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange,
                  Colors.blue[300],
                ],
                stops: [
                  0.3,
                  0.6,
                  0.8,
                ],
                // TODO 20) What really makes this work is setting the center to an Alignment of 0.8, -0.8
                center: const Alignment(0.8, -0.8),
              ),
            ),
          ),

          /// Exercise 5)

          // TODO 21) Container, 400 high and 200 wide. Again, top margin of 30 and padding 30 all around
          // TODO 22) Solid border all around, 3 wide and the color is FFBBBBBB. Round the corners by 20
          Container(
            height: 400,
            width: 200,
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFFBBBBBB),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20),
              // TODO 23) Make a BoxShadow that's black 87, blurRadius of 12 and offset 4. 6
              boxShadow: [
                const BoxShadow(
                  color: Colors.black87,
                  blurRadius: 12,
                  offset: Offset(4, 6),
                ),
              ],
              // TODO 24) Let's turn this into a cool background for a phone app. Add a SweepGradient: red, purple[300], blue[600], purple[300], red[600] with stops of 0.0, 0.25, 0.5, 0.75, and 1
              gradient: SweepGradient(
                colors: [
                  Colors.red,
                  Colors.purple[300],
                  Colors.blue[600],
                  Colors.purple[300],
                  Colors.red[600],
                ],
                stops: [
                  0.0,
                  0.25,
                  0.5,
                  0.75,
                  1,
                ],
                // TODO 25) Last but not least, make this look really cool by moving the center so the point of origin is just barely *above* (not on) the bottom edge of the screen, in the middle. Figure that out yourself... by now, you can do that! Hint: Look at what the center parameter of the SweepGradient takes. If you're in an IDE you can link to the SweepGradient source code. If you're on Dartpad, Google is your friend.
                center: const Alignment(0.0, 0.99),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

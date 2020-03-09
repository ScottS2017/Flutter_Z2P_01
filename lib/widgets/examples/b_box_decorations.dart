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
          ///
          /// *****************************************************************
          /// Decoration 1

          // TODO 1) Make a grey Container 200x200 with 30 padding all around
          Container(
            padding: const EdgeInsets.all(30),
            width: 200,
            height: 200,
            color: Colors.grey,
            // TODO 2) Give it a child that is h&w double.infinity
            child: Container(
              height: double.infinity,
              width: double.infinity,

              // TODO 3) Give it a decoration that is a BoxDecoration with the color blue
              /// You can use a color for the Container or you can use a decoration,
              /// but not both. This is because the decoration provides a color
              /// parameter, and you can't color the Container twice.
              decoration: BoxDecoration(
                color: Colors.blue,

                // TODO 4) Now give the decoration a border parameter that is a red "Border.all" with a BorderStyle of solid and width of 3
                /// Borders are part of the decoration. Here we use them on all sides.
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.red,
                  width: 3,
                ),

                // TODO 5) Finish it off by giving the BoxDecoration a "BorderRadius.circular" of 10
                /// We can only use rounded corners on uniform borders
                /// This won't work when we use different borders on each
                /// side, as shown below
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 2
          ///
          ///  This is how you can put different borders on each side.

          // TODO NOTE: ****************************************************************************************************
          // TODO NOTE: From here on, "Set up" means make a grey Container, 200x200 with 30 top margin and 30 padding all around
          // TODO NOTE: ****************************************************************************************************

          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            height: 200,
            width: 200,
            color: Colors.grey,
            // TODO 6) Set up, then make the child a Container with h&w double.infinity
            child: Container(
              height: double.infinity,
              width: double.infinity,
              // TODO 7) Give it a BoxDecoration, color green
              decoration: const BoxDecoration(
                color: Colors.green,
                // TODO 8 Give the border: a Border with: top, bottom and left set to none and right set to solid, red and width of 3
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

          ///
          /// *****************************************************************
          /// Decoration 3
          ///
          /// This will NOT work. You can't use a BorderRadius if all four sides are not uniform.
          /// Notice how it does round the corners of the Container, but doesn't render the borders.
          ///
          /// ******** This will fail even if you have borders on all four sides but make them
          /// different colors!
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            height: 200,
            width: 200,
            color: Colors.grey,
            // TODO 9) Set up and again create a child Container that is h&w double. infinity.   (Last time, I promise!)
            child: Container(
              height: double.infinity,
              width: double.infinity,
              // TODO 10) Create a red BoxDecoration
              decoration: const BoxDecoration(
                color: Colors.red,
                // TODO 11) This time make the Border have BorderSides that are... top: solid, black 3; bottom: none, left: none, right solid, black and 3
                border: Border(
                  ///
                  /// The BorderSides are not all the same (as in Border.all). Again,
                  /// it doesn't matter if they're different sizes, "none", or colors.
                  /// If they are not uniform in any way, the BorderRadius will fail.
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

                // TODO 12) Now we're going to intentionally break it. Give it a circular BorderRadius of 10.
                /// **********************************************
                /// When you try to add the radius while the borders aren't uniform, it
                /// doesn't blow up and fail, but it does error in the IDE and not render what
                /// you intended. Notice that the third container, a red one, has no border BUT
                /// the BorderRadius did work on all four corners. Here is the error:
                ///
                /// I/flutter (11107): The following assertion was thrown during paint():
                /// I/flutter (11107): A borderRadius can only be given for uniform borders.
                ///
                /// Notice that it also refuses to render the text child
                ///
                /// Comment out the BorderRadius below and see what happens

                ///
                // borderRadius: BorderRadius.circular(10),
              ),

              // TODO 13) Just for fun, give it a text child that says 'Fail'
              ///
              /// Also, the child will not render until you fix the error
              child: const Text('Fail'),
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 4
          ///
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            // TODO 14) Set up, then create a grey box decoration
            decoration: const BoxDecoration(
              color: Colors.grey,
              // TODO 15) Give it a DecorationImage with BoxFit.contain and for the image use an AssetImage called ''assets/images/F.png'', without quotes
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/F.png'),
              ),
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 5
          ///
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            // TODO 16) Again, set up with the the same grey BoxDecoration and AssetImage as the previous one
            decoration: const BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/F.png'),
              ),

              // TODO 17) Now give the BoxDecoration a list of BoxShadows that is just one BoxShadow, black54, blurRadius 10, Offset of 8,8 and spreadRadius 0
              /// PITFALL: boxShadow doesn't take a BoxShadow, it takes a list of BoxShadows
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10,
                  offset: Offset(8, 8),
                  // TODO 18) Play with the spreadRadius, get a feel for it
                  spreadRadius: 0,
                ),
              ],
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 6
          ///
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

              // TODO 19) Again, same setup with a grey box decoration and use 'assets/images/F.png' for the image, fit is contain

              /// Let's get silly:
              // TODO 20) This time make two BoxShadows in the list: Red, blurRadius 5 with offset of -8, 8 and a blue one with blurRadius 5 and Offset 8, -8
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
          ),

          ///
          /// *****************************************************************
          /// Decoration 7
          ///
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            // TODO 21) Set up, then this time make the BoxDecoration color 0xFF777777, same image
            decoration: BoxDecoration(
              color: const Color(0xFF777777),
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/F.png'),
              ),
              // TODO 22) Border.all, solid with a color of 0xFFBBBBBB and a width of 3
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFFBBBBBB),
                width: 3,
              ),
              // TODO 23) Give this one a 'BorderRadius.circular' of 100 and watch what happens. Discuss...
              borderRadius: BorderRadius.circular(100),
              // TODO 24) Now add a BoxShadow, black87, blur 12 and offset of 4, 6
              boxShadow: [
                const BoxShadow(
                  color: Colors.black87,
                  blurRadius: 12,
                  offset: Offset(4, 6),
                ),
              ],
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 8
          ///
          // TODO 25) Set up, BoxDecoration WITHOUT ANY COLOR, Border.all, the border color is 0xFF990099 and width 3
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
              // TODO 26) BoxShadow black87, blur 12 with Offset of 16, 16
              ///  Notice how the box shadow is painted under the ENTIRE box.  It always does that,
              ///  it's just that you normally fill in the box so you don't see it.
              boxShadow: [
                const BoxShadow(
                  color: Colors.black87,
                  blurRadius: 12,
                  offset: Offset(16, 16),
                ),
              ],
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 9
          ///
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            // TODO 27) Set up, BoxDecoration, no color and use the 'assets/images/F.png' image again
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/F.png'),
              ),
              // TODO 28) Now give the BoxDecoration a LinearGradient with the *list of colors* being green and red, the *list of* stops being 0.0 and 1.0, the beginning is Alignment.topLeft and the end is Alignment.bottomRight
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

          /// *****************************************************************
          /// Decoration 10
          ///
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
                // TODO 29) Less hand holding, more brief instructions: Set up, BoxDecoration, LinearGradient, red and green, topCenter and bottomRight, stops at .5 and .5 and then add an image that uses 'assets/images/F.png' again
                /// Observe the line is off center and at an odd angle. Briefly discuss why this happened.
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

          ///
          /// *****************************************************************
          /// Decoration 11
          ///
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
                // TODO 30) Make a mess (These instructions are semi-vague and a little out of order on purpose to get you to think)...... Set up, LinearGradient red and green, topLeft and bottomRight, stops 0.35 and 0.65. Add the 'assets/images/F.png' image and then create a circular border all the way around that is solid, 3 wide, has a radius of 100 and color of 0xFFDDDDDD. Then give it a pair of BoxShadows (Hint: Both go in the same list). Their colors are 0xFF009900 and 0xFF990000, blurRadii of 15 and offsets of 4,6 and -4, -6
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.35, 0.65],
              ),
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/F.png'),
              ),
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color(0xFFDDDDDD),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(100),
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

          /// *****************************************************************
          /// Decoration 12
          ///
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
              // TODO 31) Set up, solid border all the way around that is 0xFFBBBBBB and circular with radius 100. Give it a shadow of black87, blur 12 and offset 4,6
              // TODO 32) Something new! SweepGradient with colors red, purple, green, blue and red needs to be there a second time (first and last)
              // TODO 33) The stops for the SweepGradient are 0.0, 0.25, 0.5, 0.75, and 1
              gradient: const SweepGradient(
                colors: [Colors.red, Colors.purple, Colors.green, Colors.blue, Colors.red],
                stops: [0.0, 0.25, 0.5, 0.75, 1],
              ),
            ),
          ),

          /// *****************************************************************
          /// Decoration 13
          ///
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
              // TODO 34) Set up, solid border all the way around that is 0xFFBBBBBB and circular with radius 100. Give it a shadow of black87, blur 12 and offset 4,6
              // TODO 35) Get psychedelic: RadialGradient, alternate white and purple 4x each. Stops are 0.0, 0.2, 0.2, 0.5, 0.5, 0.75, 0.75, 1.0
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

                // TODO 36) The default radius of a RadialGradient is 0.5 so start with that. Then play with it to see what happens. Discuss.
                radius: .5,
              ),
            ),
          ),

          /// *****************************************************************
          /// Decoration 14
          ///
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              // TODO 37) Set up, solid border all the way around that is 0xFFBBBBBB and circular with radius ***70*** (not 100). Give it a shadow of black87, blur 12 and offset 4,6
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
              // TODO 38) It's a bright, sunshiny day! RadialGradient, yellow, orange and blue[300]. Stops 0.3, 0.6 and 0.8 and the key to it all...
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
                // TODO 39) What makes this work is setting the center to an Alignment of 0.8, -0.8. Check it out and then play with it some.
                center: const Alignment(0.8, -0.8),
              ),
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 15
          ///
          Container(
            // TODO 40) Something that looks more like a phone... Container height 400, width 200, margin top 30 and padding 30 all around
            // TODO 41) Solid border all around, 0xFFBBBBBB with a width of 3 and circular radius of 50. As usual: BoxShadow black87, radius 12, offset 4,6.
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
                // TODO 42) RadialGradient: blueGrey, blue[700], purple, 0xFF883399 and stops are 0.3, 0.5, 0.8 and 1
                // TODO 43) Now add a center Alignment of 0.0, 1.3; focal Alignment of 0.0, 0.9 and a focalRadius of 2.0
                // TODO 44) Play with it, get a feel for what you can make it do
                center: const Alignment(0.0, 1.3),
                focal: const Alignment(0.0, 0.9),
                focalRadius: 2.0,
              ),
            ),
          ),

          ///
          /// *****************************************************************
          /// Decoration 16
          ///
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
              boxShadow: [
                const BoxShadow(
                  color: Colors.black87,
                  blurRadius: 12,
                  offset: Offset(4, 6),
                ),
              ],
              // TODO 45) Is this a home screen? Container height 400, width 200, margin top 30 and padding 30 all around
              // TODO 46) Solid border all around, 0xFFBBBBBB with a width of 3 and circular radius of ***20***. As usual: BoxShadow black87, radius 12, offset 4,6.
              // TODO 47) SweepGradient: red, purple[300], blue[600], purple[300], red[600] and stops are 0.0, 0.25, 0.5, 0.75, and 1
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
                // TODO 48) Last but not least, make this look really cool by moving the center so the point of origin is just barely *above* (not on) the bottom edge of the screen, in the middle. Figure that out yourself... by now, you can do that! (Hint: Think about what the center parameter takes)
                center: const Alignment(0.0, 0.99),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

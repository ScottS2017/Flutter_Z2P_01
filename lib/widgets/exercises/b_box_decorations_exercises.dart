import 'package:flutter/material.dart';

class BoxDecorationExercises extends StatelessWidget {
  const BoxDecorationExercises({
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

          /// This will NOT work. You can't use a BorderRadius if all four sides are not uniform.
          /// Notice how it does round the corners of the Container, but doesn't render the borders.
          ///
          /// ******** This will fail even if you have borders on all four sides but make them
          /// different colors!
          Container(
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

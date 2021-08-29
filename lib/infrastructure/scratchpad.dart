import 'package:flutter/material.dart';

class ScratchPad extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ScratchPad({
    Key? key,
  }) : super(key: key);

  @override
  _ScratchPadState createState() => _ScratchPadState();
}

class _ScratchPadState extends State<ScratchPad> {
  late double topMargin;

  @override
  void initState() {
    // Ignore the To-Do in the autocomplete. It's in the wrong place.
    // Your code goes _under_ the call to super. This is because
    // things are constructed from top-down, but disposed from
    // bottom-up, and you need the super to be the first thing
    // created and the last thing destroyed.
    super.initState();
    // Your initializing code here.
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // We need to  call MediaQuery in didChangeDependencies because
    // we can't call the MediaQuery before intiState completes. This is the
    // correct place to call it.
    //
    // Never use MediaQuery in a build method! MediaQuery is expensive,
    // and anything in the build method is called on every frame rebuild.
    // This will kill your performance if you rebuild often, such as in
    // an animation.
    topMargin = MediaQuery.of(context).padding.top + 16;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: topMargin,
          bottom: 16,
          right: 16,
          left: 16,
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              style: BorderStyle.solid,
              width: 2,
              color: const Color(0xFF888888),
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black87,
                blurRadius: 10,
                offset: Offset(3, 3),
              ),
            ],
          ),
          // TODO Put your experiments here.
          child: const Text('Put your experiments here'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/a_containers.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/b_box_decorations.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/c_text_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/d_image_examples.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    const Containers(),
    const BoxDecorations(),
    const TextExamples(),
    const Image_Examples(),
  ];

  PageController controller = PageController(
    initialPage: 0,
  );

  String titleString = 'Widgets You Can See: Containers';

  void setTitle(int page) {
    if (page == 0) {
      setState(() {
        titleString = 'Container Examples';
      });
    } else if (page == 1) {
      setState(() {
        titleString = 'BoxDecoration Examples';
      });
    } else if (page == 2) {
      setState(() {
        titleString = 'Text & TextStyle Examples';
      });
    } else if (page == 3) {
      setState(() {
        titleString = 'Image Examples';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(titleString),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: PageView(
            onPageChanged: setTitle,
            children: pages,
          ),
        )),
    );
  }
}
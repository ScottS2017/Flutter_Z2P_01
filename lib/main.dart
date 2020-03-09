import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/pages/home.dart';

void main() => runApp(WidgetsYouCanSee());

class WidgetsYouCanSee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Z2P Widgets You Can See',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

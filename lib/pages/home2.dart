import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/pages/button_section.dart';

class Home2 extends StatelessWidget {
  final String title;

  const Home2({Key? key, required this.title})
      : super(
          key: key,
        );

  static const Widget divider__________________________ = SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Column(
          children: [
            ButtonSection(
              label: 'Container Basics',
              callback1: () {
                print('Callback 1-1');
              },
              callback2: () {
                print('Callback 1-2');
              },
              callback3: () {
                print('Callback 1-3');
              },
            ),
            divider__________________________,
            ButtonSection(
              label: 'Decorations',
              callback1: () {
                print('Callback 2-1');
              },
              callback2: () {
                print('Callback 2-2');
              },
              callback3: () {
                print('Callback 2-3');
              },
            ),
            divider__________________________,
            ButtonSection(
              label: 'Gradients',
              callback1: () {
                print('Callback 3-1');
              },
              callback2: () {
                print('Callback 3-2');
              },
              callback3: () {
                print('Callback 3-3');
              },
            ),
            divider__________________________,
            ButtonSection(
              label: 'Icons',
              callback1: () {
                print('Callback 4-1');
              },
              callback2: () {
                print('Callback 4-2');
              },
              callback3: () {
                print('Callback 4-3');
              },
            ),
            divider__________________________,
            ButtonSection(
              label: 'Images',
              callback1: () {
                print('Callback 5-1');
              },
              callback2: () {
                print('Callback 5-2');
              },
              callback3: () {
                print('Callback 5-3');
              },
            ),
            divider__________________________,
            ButtonSection(
              label: 'TextStyle'
                  '',
              callback1: () {
                print('Callback 6-1');
              },
              callback2: () {
                print('Callback 6-2');
              },
              callback3: () {
                print('Callback 6-3');
              },
            ),
          ],
        ),
      ),
    );
  }
}

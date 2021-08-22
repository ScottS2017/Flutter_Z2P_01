import 'package:flutter/material.dart';
import '../../../infrastructure/app_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Z2P Widgets You Can See',
      home: ContainersExample(title: 'Z2P: Containers'),
    );
  }
}

@immutable
class ContainersExample extends StatelessWidget {
  const ContainersExample({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox _dividerxxxxxxxxxxx = const SizedBox(height: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            _dividerxxxxxxxxxxx,
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.appThemePrimaryDarkBlue,
            ),
            _dividerxxxxxxxxxxx,
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.appThemePrimaryDarkBlue,
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: 50,
                color: AppColors.appThemeBlueAccentColor,
              ),
            ),
            _dividerxxxxxxxxxxx,
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.appThemePrimaryDarkBlue,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Container(
                height: 50,
                width: 50,
                color: AppColors.appThemeBlueAccentColor,
              ),
            ),
            _dividerxxxxxxxxxxx,
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.appThemePrimaryDarkBlue,
              margin: const EdgeInsets.only(left: 150),
              alignment: Alignment.topRight,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: AppColors.appThemeBlueAccentColor,
              ),
            ),
            _dividerxxxxxxxxxxx,
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.appThemeBlueAccentColor,
              alignment: const Alignment(-0.5, 1.0),
              child: Container(
                height: 50,
                width: 10,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainersExercises(
                        title: 'Z2P: Containers Exercises'),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFDDDDDD),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFAAAAAA),
                  ),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black87,
                      blurRadius: 3,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: const Text(
                  'Exercises',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class ContainersExercises extends StatelessWidget {
  const ContainersExercises({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox _dividerxxxxxxxxxxx = const SizedBox(height: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _dividerxxxxxxxxxxx,
                //TODO 1) Create Container, with height 50, width 150, and make the color appThemePrimaryDarkBlue from the app_colors.dart resource file

                _dividerxxxxxxxxxxx,
                // TODO 2 ) Create a Container that is 100 high, max width, and is appThemePrimaryDarkBlue. Then give it a white child Container that is 50 high and 150 wide, that is aligned center right within its parent.

                _dividerxxxxxxxxxxx,
                // TODO 3) Create Containe 300 high x 200 wide, appThemePrimaryBlue, give it 20 padding all around. Then give it a child Container that is 50 x 50, aligned top center and make the color appThemeBlueAccentColor

                _dividerxxxxxxxxxxx,
                // TODO 4) Create a Container that's appThemePrimaryDarkBlue, 100 high with max width, that aligns its child top right and give it margins of 150 right and 25 left. Then give it a child Container that's 95 high, 100 wide and make the color white54.
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '/infrastructure/build_app_bar.dart';

@immutable
class ContainersSolution extends StatelessWidget {
  final SizedBox dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);

  const ContainersSolution({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                //TODO 1) Create Container, with height 50, width 150, and make the color the theme's primaryColorDark
                Container(
                  height: 50,
                  width: 150,
                  color: Theme.of(context).primaryColorDark,
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 2 ) Create a Container that is 100 high, max width, and is the theme's primaryColorDark. Then give it a white child Container that is 50 high and 150 wide, that is aligned center right within its parent.
                Container(
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  color: Theme.of(context).primaryColorDark,
                  child: Container(
                    height: 50,
                    width: 150,
                    color: Colors.white,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 3) Create Containe 300 high x 200 wide, accentColor, give it 20 padding all around. Then give it a child Container that is 50 x 50, aligned top center and make the color the theme's primaryColorDark
                Container(
                  height: 300,
                  width: 200,
                  color: Theme.of(context).primaryColorDark,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Theme.of(context).accentColor,
                  ),
                ),

                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                // TODO 4) Create a Container that's the theme's primaryColorDark, 100 high with max width, that aligns its child top right and give it margins of 150 right and 25 left. Then give it a child Container that's 95 high, 100 wide and make the color white54.
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Theme.of(context).primaryColorDark,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 150, left: 25),
                  child: Container(
                    height: 95,
                    width: 100,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

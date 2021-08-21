import 'package:flutter/material.dart';

import '/infrastructure/app_colors.dart';
import '/infrastructure/build_app_bar.dart';

@immutable
class Containers extends StatelessWidget {
  const Containers({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 16);
  final String test = 'test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                key: const ValueKey('simple_blue'),
                height: 100,
                width: double.infinity,
                color:  Theme.of(context).primaryColorDark,
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color:  Theme.of(context).primaryColorDark,
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Theme.of(context).accentColor,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color:  Theme.of(context).primaryColorDark,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Theme.of(context).accentColor,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color:  Theme.of(context).primaryColorDark,
                margin: const EdgeInsets.only(left: 150),
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Theme.of(context).accentColor,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              Container(
                height: 100,
                width: double.infinity,
                color: Theme.of(context).accentColor,
                alignment: const Alignment(-0.5, 1.0),
                child: Container(
                  height: 50,
                  width: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

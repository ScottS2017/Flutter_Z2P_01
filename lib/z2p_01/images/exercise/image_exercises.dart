import 'package:flutter/material.dart';
import '/infrastructure/app_images.dart';
import '/infrastructure/build_app_bar.dart';

class ImageExercise extends StatelessWidget {
  const ImageExercise({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: buildAppBar(title: title),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).cardColor,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // TODO Recreate the examples file using the custom ImageFrame Widget provided. Yes, you're supposed to look at the example source code, don't beat your head on the desk trying to figure this out.
              //
              // The images to use are:
              //        AppImages.jumping,     (It uses Image.asset)
              //        AppImages.owlUrl,     (It uses Image.network)
              //        AppImages.invertedJennyUrl,     (It uses Image.network)
              //
              // Be sure to check if you're dealing with an asset or network image
              //
              // Sample:
              //                ImageFrame(
              //                  heightAndWidth: heightAndWidth,
              //                  image: <YOUR CODE HERE>
              //                ),

              ///
              /// BoxFit.fill
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // Example:
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fill,
                ),
              ),
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny

              ///
              /// BoxFit.contain
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jumping
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny

              ///
              /// BoxFit.cover
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jumping
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny

              ///
              /// BoxFit.fitHeight
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jumping
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny

              ///
              /// BoxFit.fitWidth
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jumping
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny

              ///
              /// BoxFit.none
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jumping
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny

              ///
              /// BoxFit.scaleDown
              ///
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jumping
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Owl
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here

              // TODO Jenny
            ],
          ),
        ),
      ),
    );
  }
}

class ImageFrame extends StatelessWidget {
  const ImageFrame({
    Key? key,
    required this.image,
    required this.heightAndWidth,
  }) : super(key: key);

  final Image image;
  final double heightAndWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heightAndWidth,
        width: heightAndWidth,
        color: Colors.grey,
        child: image);
  }
}
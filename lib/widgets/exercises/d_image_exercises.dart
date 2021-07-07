import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_images.dart';

class ImageExercise extends StatelessWidget {
  const ImageExercise({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Exercises'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).cardColor,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // TODO Recreate the examples file using the custom ImageHolder Widget provided
              //
              // The images to use are:
              //        AppImages.jumping,
              //        AppImages.owl,
              //        AppImages.invertedJenny,
              //
              // Be sure to check if you're dealing with an asset or network image
              //
              // Sample:
              //                ImageHolder(
              //                  heightAndWidth: heightAndWidth,
              //                  image: <YOUR CODE HERE>
              //                ),

              ///
              /// BoxFit.fill
              ///
              // Example:
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.contain
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.cover
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.fitHeight
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.fitWidth
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.none
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny

              ///
              /// BoxFit.scaleDown
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jumping
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Owl
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // TODO Jenny
            ],
          ),
        ),
      ),
    );
  }
}

class ImageHolder extends StatelessWidget {
  const ImageHolder({
    Key? key,
    required this.heightAndWidth,
    required this.image,
  }) : super(key: key);

  final double heightAndWidth;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(height: heightAndWidth, width: heightAndWidth, color: Colors.teal, child: image);
  }
}

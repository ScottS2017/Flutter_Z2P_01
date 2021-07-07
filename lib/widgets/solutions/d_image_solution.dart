import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_colors.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_images.dart';

class ImageSolution extends StatelessWidget {
  const ImageSolution({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx = const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Solutions'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.primaryDarkGreen,
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
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.fill,
                ),
              ),

              ///
              /// BoxFit.contain
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.contain,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.contain,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.contain,
                ),
              ),

              ///
              /// BoxFit.cover
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.cover,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.cover,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.cover,
                ),
              ),

              ///
              /// BoxFit.fitHeight
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fitHeight,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.fitHeight,
                ),
              ),

              ///
              /// BoxFit.fitWidth
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fitWidth,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.fitWidth,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.fitWidth,
                ),
              ),

              ///
              /// BoxFit.none
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.none,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.none,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.none,
                ),
              ),

              ///
              /// BoxFit.scaleDown
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.scaleDown,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owl,
                  fit: BoxFit.scaleDown,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageHolder(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJenny,
                  fit: BoxFit.scaleDown,
                ),
              ),
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

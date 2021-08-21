import 'package:flutter/material.dart';
import '/infrastructure/app_colors.dart';
import '/infrastructure/app_images.dart';
import '/infrastructure/build_app_bar.dart';

class ImageSolution extends StatelessWidget {
  const ImageSolution({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
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
              // TODO Recreate the examples file using the custom ImageFrame Widget provided
              //
              // The images to use are:
              //        AppImages.jumping,     (It uses Image.asset)
              //        AppImages.owl,     (It uses Image.network)
              //        AppImages.invertedJenny,     (It uses Image.network)
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
              // Example:
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.fill,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.fill,
                ),
              ),

              ///
              /// BoxFit.contain
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.contain,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.contain,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.contain,
                ),
              ),

              ///
              /// BoxFit.cover
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.cover,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.cover,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.cover,
                ),
              ),

              ///
              /// BoxFit.fitHeight
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fitHeight,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),

              ///
              /// BoxFit.fitWidth
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.fitWidth,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.fitWidth,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.fitWidth,
                ),
              ),

              ///
              /// BoxFit.none
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.none,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.none,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.none,
                ),
              ),

              ///
              /// BoxFit.scaleDown
              ///
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.asset(
                  AppImages.jumping,
                  fit: BoxFit.scaleDown,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.owlUrl,
                  fit: BoxFit.scaleDown,
                ),
              ),
              divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
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
        color: Theme.of(context).primaryColorDark,
        child: image);
  }
}
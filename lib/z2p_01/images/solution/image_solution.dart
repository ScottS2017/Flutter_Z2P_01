import 'package:flutter/material.dart';
import '/infrastructure/app_images.dart';
import '/infrastructure/build_app_bar.dart';

class ImageSolution extends StatelessWidget {
  const ImageSolution({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  static const SizedBox dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      SizedBox(height: 32);

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
              // ** If you are unable to reach the internet then use Jumping
              // for all of these exercises.
              //
              // Be sure to check if you're dealing with an asset or network image
              //
              // Sample:
              //                ImageFrame(
              //                  heightAndWidth: heightAndWidth,
              //                  image: <YOUR CODE HERE>
              //                ),

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              // Example 1, Jumping with fit fill:
              ImageFrame(
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fill,
                  ),
                  heightAndWidth: heightAndWidth),

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Example 2, Owl with fit fill:
              ImageFrame(
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.fill,
                  ),
                  heightAndWidth: heightAndWidth),

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here
              ImageFrame(
                heightAndWidth: heightAndWidth,
                image: Image.network(
                  AppImages.invertedJennyUrl,
                  fit: BoxFit.contain,
                ),
              ),

              // TODO Jenny fit contain

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here
              ImageFrame(
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.cover,
                  ),
                  heightAndWidth: heightAndWidth),

              // TODO Jumping fit cover
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here
              ImageFrame(
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.fitHeight,
                  ),
                  heightAndWidth: heightAndWidth),

              // TODO Owl fit height
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here
              ImageFrame(
                  image: Image.network(AppImages.invertedJennyUrl,
                      fit: BoxFit.fitWidth),
                  heightAndWidth: heightAndWidth),

              // TODO Jenny fit width

              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

              // Your code here
              ImageFrame(
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.none,
                  ),
                  heightAndWidth: heightAndWidth),

              // TODO Jumping fit none
              dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_colors.dart';
import 'package:o1_widgets_you_can_see/resource_files/app_images.dart';

class Image_Examples extends StatelessWidget {
  const Image_Examples({
    Key? key,
  }) : super(key: key);

  final SizedBox divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx =
      const SizedBox(height: 32);

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = MediaQuery.of(context).size.width - 32;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Basics Example'),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ///
                /// Raw images without any fit
                ///

                TextLabel(
                  text: 'These are the Raw Images',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owl,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                  ),
                ),

                ///
                /// BoxFit.fill
                ///

                TextLabel(
                  text: 'BoxFit.fill\n(Aspect Ratio Not Maintained)',
                ),

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
                  image:  Image.network(
                    AppImages.owl,
                    fit: BoxFit.fill,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.fill,
                  ),
                ),

                ///
                /// BoxFit.contain
                ///
                TextLabel(
                  text: 'BoxFit.contain\n(Aspect Ratio Is Maintained)',
                ),

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
                  image:  Image.network(
                    AppImages.owl,
                    fit: BoxFit.contain,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.contain,
                  ),
                ),


                ///
                /// BoxFit.cover
                ///
                ///
                TextLabel(
                  text: 'BoxFit.cover',
                ),

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
                    AppImages.owl,
                    fit: BoxFit.cover,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.cover,
                  ),
                ),

                ///
                /// BoxFit.fitHeight
                ///
                TextLabel(
                  text: 'BoxFit.fitHeight\n(It could crop the width)'),





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
                  image:Image.network(
                    AppImages.owl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.fitHeight,
                  ),
                ),

                ///
                /// BoxFit.fitWidth
                ///
                TextLabel(
                    text: 'BoxFit.fitWidth\n( It could crop the height)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.owl,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.fitWidth,
                  ),
                ),


                ///
                /// BoxFit.none
                ///

                TextLabel(
                    text: 'BoxFit.none\n(Let It Overflow)'),





                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.none,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.owl,
                    fit: BoxFit.none,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.none,
                  ),
                ),


                ///
                /// BoxFit.scaleDown
                ///

                TextLabel(text:  'BoxFit.scaleDown\n(Shrink if too big, else do nothing)',),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.owl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image:Image.network(
                    AppImages.invertedJenny,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                divider_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextLabel extends StatelessWidget {
  const TextLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          border: Border.all(
            width: 2,
            color: AppColors.appThemeDividerColor,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.dropShadowColor,
              offset: const Offset(1, 1),
              blurRadius: 1,
            )
          ]),
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            shadows: [
              Shadow(
                color: AppColors.dropShadowColor,
                offset: const Offset(1, 1),
                blurRadius: 1,
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
      color: AppColors.primaryRed,
      child: image
    );
  }
}

import 'package:flutter/material.dart';
import '/infrastructure/app_colors.dart';
import '/infrastructure/app_images.dart';
import '/infrastructure/build_app_bar.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({
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
                const TextLabel(
                  text: 'These are the Raw Images',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJennyUrl,
                  ),
                ),

                ///
                /// BoxFit.fill
                ///
                const TextLabel(
                  text: 'BoxFit.fill\n(Aspect Ratio Not Maintained)',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fill,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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
                const TextLabel(
                  text: 'BoxFit.contain\n(Aspect Ratio Is Maintained)',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.contain,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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
                ///
                const TextLabel(
                  text: 'BoxFit.cover',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.cover,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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
                const TextLabel(
                    text: 'BoxFit.fitHeight\n(It could crop the width)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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
                const TextLabel(
                    text: 'BoxFit.fitWidth\n( It could crop the height)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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

                const TextLabel(text: 'BoxFit.none\n(Let It Overflow)'),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.none,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.none,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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

                const TextLabel(
                  text:
                      'BoxFit.scaleDown\n(Shrink if too big, else do nothing)',
                ),

                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.asset(
                    AppImages.jumping,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.owlUrl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
                ImageFrame(
                  heightAndWidth: heightAndWidth,
                  image: Image.network(
                    AppImages.invertedJennyUrl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                dividerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
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
          color: Theme.of(context).primaryColor,
          border: Border.all(
            width: 2,
            color: const Color(0x1F000000),
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: AppColors.dropShadowColor,
              offset: Offset(1, 1),
              blurRadius: 1,
            )
          ]),
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            shadows: [
              Shadow(
                color: AppColors.dropShadowColor,
                offset: Offset(1, 1),
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
        color: Colors.grey,
        child: image);
  }
}

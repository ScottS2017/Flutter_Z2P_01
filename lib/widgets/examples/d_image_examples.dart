import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/app/app_images.dart';

class Image_Examples extends StatelessWidget {
  const Image_Examples({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.grey[600],
        child: Column(
          children: <Widget>[
            ///
            /// Raw images without any fit
            ///
            const SectionText(
              text: 'These are the Raw Images',
              topRowText: true,
            ),
            Image.asset(
              AppImages.jumping,
            ),
            Image.network(
              AppImages.owl,
            ),
            Image.network(
              AppImages.invertedJenny,
            ),

            ///
            /// BoxFit.fill
            ///
            const SectionText(
              text: 'BoxFit.fill\n\nAspect Ratio Not Maintained',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.fill,
              text: 'fill',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.fill,
              text: 'fill',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.fill,
              text: 'fill',
            ),

            ///
            /// BoxFit.contain
            ///
            const SectionText(
              text: 'BoxFit.contain\n\nAspect Ratio Maintained',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.contain,
              text: 'contain',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.contain,
              text: 'contain',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.contain,
              text: 'contain',
            ),

            ///
            /// BoxFit.cover
            ///
            const SectionText(
              text: 'BoxFit.cover\n\nIt will cover the entire Contianer by fitting the smaller side and cropping the larger one',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.cover,
              text: 'cover',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.cover,
              text: 'cover',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.cover,
              text: 'cover',
            ),

            ///
            /// BoxFit.fitHeight
            ///
            const SectionText(
              text: 'BoxFit.fitHeight\n\n It could crop the width',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.fitHeight,
              text: 'fitHeight',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.fitHeight,
              text: 'fitHeight',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.fitHeight,
              text: 'fitHeight',
            ),

            ///
            /// BoxFit.fitWidth
            ///
            const SectionText(
              text: 'BoxFit.fitWidth\n\n It could crop the height',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.fitWidth,
              text: 'fitWidth',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.fitWidth,
              text: 'fitWidth',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.fitWidth,
              text: 'fitWidth',
            ),

            ///
            /// BoxFit.none
            ///
            const SectionText(
              text: 'BoxFit.none\nLet it Overflow',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.none,
              text: 'none',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.none,
              text: 'none',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.none,
              text: 'none',
            ),

            ///
            /// BoxFit.scaleDown
            ///
            const SectionText(
              text: 'BoxFit.scaleDown\nShrink if too big, else do nothing',
            ),
            const ImageSample(
              type: ImageType.asset,
              image: AppImages.jumping,
              fit: BoxFit.scaleDown,
              text: 'scale\nDown',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.owl,
              fit: BoxFit.scaleDown,
              text: 'scale\nDown',
            ),
            const ImageSample(
              type: ImageType.network,
              image: AppImages.invertedJenny,
              fit: BoxFit.scaleDown,
              text: 'scale\nDown',
            ),
          ],
        ),
      ),
    );
  }
}

class ImageSample extends StatelessWidget {
  const ImageSample({
    Key key,
    this.fit,
    this.image,
    this.text,
    this.type,
  }) : super(key: key);

  final BoxFit fit;
  final String image;
  final String text;
  final ImageType type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 250,
      width: 250,
      child: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.red[700],
                  width: 2,
                )),
            child: type == ImageType.network
                ? Image.network(
                    image,
                    fit: fit,
                  )
                : Image.asset(
                    image,
                    fit: fit,
                  ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

@immutable
class SectionText extends StatelessWidget {
  final String text;
  final bool topRowText;

  const SectionText({
    Key key,
    this.text,
    this.topRowText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: topRowText == true ? 16 : 88,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: const Offset(1.5, 1.5),
                blurRadius: 2,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

enum ImageType {
  network,
  asset,
}

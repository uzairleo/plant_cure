import 'package:flutter/material.dart';

/// ImageContainer creates container with specific height and width
/// and use Image as backgroung image of the container
class ImageContainer extends StatelessWidget {
  final double height, width;
  final String assetImage;
  final BoxFit fit;
  ImageContainer(
      {this.height, this.width, this.fit = BoxFit.fill, this.assetImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: fit,
          image: AssetImage(assetImage),
        ),
      ),
    );
  }
}

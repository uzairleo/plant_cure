import 'package:flutter/material.dart';


class ImageCard extends StatelessWidget {
  final imageUrl;
  ImageCard({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    print(imageUrl);
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child:FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: "assets/static_assets/placeholder.png",
                          image: "https://ponasasa.com$imageUrl")
          // Image.asset('assets/static_assets/pfizerImg.png', fit: BoxFit.cover),
    );
  }
}

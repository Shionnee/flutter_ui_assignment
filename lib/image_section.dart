import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({required this.imageUrl, super.key});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl);
  }
}

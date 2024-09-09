import 'package:flutter/material.dart';

class Gesture extends StatelessWidget {
  final String pathImage;
  final VoidCallback optionSelected;

  const Gesture({super.key, required this.pathImage, required this.optionSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: optionSelected,
      child: Image(image: AssetImage(pathImage), height: 100),
    );
  }
}

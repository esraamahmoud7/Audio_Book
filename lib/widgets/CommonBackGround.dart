import 'package:flutter/material.dart';

class ImageBack extends StatelessWidget {
  const ImageBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Background Pattern (1).png', // Your image path in assets folder
      fit: BoxFit.contain,        // To make the image cover the entire screen
      width: MediaQuery.of(context).size.width ,
    );
  }
}

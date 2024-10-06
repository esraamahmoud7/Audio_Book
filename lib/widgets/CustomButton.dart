import 'package:flutter/material.dart';

import '../Constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.colour, required this.title, required this.TextColor,required this.onTap, required this.width, required this.height});

  final Color colour,TextColor;
  final String title;
  final void Function()? onTap;
  final double width,height;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Center(child: Text(title,style: TextStyle(color: TextColor,fontWeight: FontWeight.bold),)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
          border: Border.all(
            color: KColor,
          )
        ),
      ),
    );
  }
}
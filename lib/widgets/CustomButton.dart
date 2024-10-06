import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.colour, required this.title, required this.TextColor,required this.onTap, required this.width});

  final Color colour,TextColor;
  final String title;
  final void Function()? onTap;
  final double width;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 56,
        child: Center(child: Text(title,style: TextStyle(color: TextColor,fontWeight: FontWeight.bold),)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,

        ),
      ),
    );
  }
}
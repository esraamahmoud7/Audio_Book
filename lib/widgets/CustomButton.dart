import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.colour, required this.title, required this.TextColor,
  });

  final Color colour,TextColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 140,
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
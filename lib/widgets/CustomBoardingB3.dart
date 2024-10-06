import 'package:flutter/material.dart';

import '../Constants.dart';
import 'CustomButton.dart';


class CustomBoardingB3 extends StatelessWidget {
  const CustomBoardingB3({
    super.key, required this.image1, required this.Title1, required this.Button1,this.onTap1, required this.imageDotted,
  });

  final String image1,Title1,Button1,imageDotted;
  final void Function()? onTap1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/Background Pattern (1).png', // Your image path in assets folder
          fit: BoxFit.contain,        // To make the image cover the entire screen
          width: MediaQuery.of(context).size.width ,
        ),
        Image.asset(image1),
        SizedBox(height: 10,),
        Text(Title1 , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: color,)),
        Text("Lorem ipsum dolor sit amet la maryame \n \t \t \t \t \t \t   dor sut colondeum.",
            style: TextStyle(fontSize: 16,color: color)),
        SizedBox(height: 60,),
        Image.asset(imageDotted),
        SizedBox(height : 60),
        CustomButton(colour: color,title: Button1,TextColor: Color(0xffffffff),onTap: onTap1,width: 295,),
      ],
    );
  }
}

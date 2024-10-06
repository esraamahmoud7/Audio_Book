import 'package:flutter/material.dart';

import '../Constants.dart';
import 'CustomButton.dart';


class CustomBoarding extends StatelessWidget {
  const CustomBoarding({
    super.key, required this.image, required this.Title1, required this.Button1, required this.Button2,
  });

  final String image,Title1,Button1,Button2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/Background Pattern (1).png', // Your image path in assets folder
          fit: BoxFit.contain,        // To make the image cover the entire screen
          width: MediaQuery.of(context).size.width ,
        ),
        Image.asset(image),
        SizedBox(height: 10,),
        Text(Title1 , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: color,)),
        Text("Lorem ipsum dolor sit amet la maryame \n \t \t \t \t \t \t   dor sut colondeum.",
            style: TextStyle(fontSize: 16,color: color)),
        SizedBox(height: 60,),
        Image.asset('assets/CarouselB1.png'),
        SizedBox(height : 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(colour: Color(0xffffffff),title: Button1,TextColor: color,),
            SizedBox(width: 15,),
            CustomButton(colour: color,title: Button2,TextColor: Color(0xffffffff),),
          ],
        )

      ],
    );
  }
}


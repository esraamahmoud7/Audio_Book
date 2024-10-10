import 'package:flutter/material.dart';

import '../Constants.dart';
import 'CommonBackGround.dart';
import 'CustomButton.dart';


class CustomBoarding extends StatelessWidget {
  const CustomBoarding({
    super.key, required this.image1, required this.Title1, required this.Button1, required this.Button2, this.onTap1, required this.imageDotted, this.onTap2,
  });

  final String image1,Title1,Button1,Button2,imageDotted;
  final void Function()? onTap1,onTap2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageBack(),
        Image.asset(image1),
        SizedBox(height: 10,),
        Text(Title1 , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: KColor,)),
        Text("Lorem ipsum dolor sit amet la maryame \n \t \t \t \t \t \t   dor sut colondeum.",
            style: TextStyle(fontSize: 16,color: KColor)),
        SizedBox(height: 60,),
        Image.asset(imageDotted),
        SizedBox(height : 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(colour: Color(0xffffffff),title: Button1,TextColor: KColor,onTap: onTap1,width: 140,height: 56,),
            SizedBox(width: 15,),
            CustomButton(colour: KColor,title: Button2,TextColor: Color(0xffffffff),onTap: onTap2,width: 140,height: 56,),
          ],
        )

      ],
    );
  }
}


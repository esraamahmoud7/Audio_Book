import 'package:flutter/material.dart';

import '../widgets/CustomBoarding.dart';
import '../widgets/CustomBoardingB3.dart';
import 'logIn.dart';


class Boarding3 extends StatelessWidget {
  const Boarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBoardingB3(image1: 'assets/Boarding3.png',Title1: "Title There",Button1: "Lets Get Started",onTap1: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));}, imageDotted: 'assets/CarouselB3 .png'),
    );
  }
}
import 'package:flutter/material.dart';
import '../widgets/CustomBoarding.dart';
import 'onBoarding3.dart';


class Boarding2 extends StatelessWidget {
  const Boarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBoarding(image1: 'assets/Boarding2.png',Title1: "Title Two",Button1: "Skip",Button2: "Next",onTap1: (){},onTap2: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Boarding3()));}, imageDotted: 'assets/CarouselB2 .png',),
    );
  }
}
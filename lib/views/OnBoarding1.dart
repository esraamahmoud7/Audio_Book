import 'package:flutter/material.dart';
import '../widgets/CustomBoarding.dart';
import 'OnBoarding2.dart';


class Boarding1 extends StatelessWidget {
  const Boarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBoarding(image1: 'assets/Boarding1.png',Title1: "Title One",Button1: "Skip",Button2: "Next",onTap1: (){},onTap2: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Boarding2()));}, imageDotted: 'assets/CarouselB1.png',),
    );
  }
}

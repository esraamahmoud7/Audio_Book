import 'package:flutter/material.dart';
import '../widgets/CustomBoarding.dart';


class Boarding1 extends StatelessWidget {
  const Boarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBoarding(image: 'assets/Boarding1.png',Title1: "Title One",Button1: "Skip",Button2: "Next",),
    );
  }
}

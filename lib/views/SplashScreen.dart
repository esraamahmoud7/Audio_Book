import 'dart:async';

import 'package:flutter/material.dart';

import 'OnBoarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Boarding1()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(child: Image.asset('assets/logo.png')),
          SizedBox(height: 300,),
          Text("version 1.0",style: TextStyle(color: Color(0xff4838D1)),)
        ],
      ),
    );
  }
}

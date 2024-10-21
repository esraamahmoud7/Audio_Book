import 'package:audio_book/Constants.dart';
import 'package:audio_book/views/SplashScreen.dart';
import 'package:audio_book/views/home.dart';
import 'package:audio_book/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

import '../models/UesrSelection.dart';
import '../widgets/CommonBackGround.dart';

class  doneRegister extends StatelessWidget {
  const doneRegister ({super.key, required this.user});
  final UserSelection user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageBack(),
          Image.asset("assets/success.png",),
          SizedBox(height: 25),
          Text("You are ready to go! ",style: TextStyle(color: KTextColor,fontWeight: FontWeight.bold,fontSize: 24),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("Congratulation, any interesting  topics \n \t\t\t\t\t  will be shortly in your hands.",style: TextStyle(color: KTextColor,fontSize: 20),),
          ),
          SizedBox(height: 20,),
          CustomButton(colour: KColor, title: "Finish", TextColor: Color(0xffffffff), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  SplashScreen(page: Home(user: user),)));}, width: 370, height: 65)

        ],
      ),
    );
  }
}

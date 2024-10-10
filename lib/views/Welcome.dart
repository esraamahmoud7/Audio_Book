import 'package:audio_book/Constants.dart';
import 'package:audio_book/views/personalize.dart';
import 'package:audio_book/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

import '../models/UesrSelection.dart';
import '../widgets/CommonBackGround.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key,required this.user});

  final UserSelection user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          ImageBack(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft,child: Text("Welcome !" , style: TextStyle(color: KForgetColor,fontWeight: FontWeight.bold, fontSize: 24),)),
                Align(alignment: Alignment.centerLeft,child: Text("Find what you are looking for",style: TextStyle(color: KColor,fontSize: 65,fontWeight: FontWeight.w100),),),
                Align(alignment: Alignment.centerLeft,child: Text("By personalize your account, we can help you to find what you like.",style: TextStyle(color: KTextColor,fontSize: 20),),),
                SizedBox(height :20),
                CustomButton(colour: KColor, title: "Personlize Your Account", TextColor: Color(0xffffffff), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalizeSuggestion(user: user)));}, width: 370, height: 65),
                SizedBox(height: 20),
                CustomButton(colour: Color(0xffffffff), title: "Skip", TextColor: KColor, onTap: (){}, width: 370, height: 65)

              ],
            ),
          )

        ],
      )
    );
  }
}

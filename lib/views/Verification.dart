import 'package:audio_book/Constants.dart';
import 'package:audio_book/widgets/CustomButton.dart';
import 'package:audio_book/widgets/TextField.dart';
import 'package:flutter/material.dart';

import 'Register.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset("assets/logo.png"),
            Align(
            alignment: Alignment.centerLeft,
            child: Padding(
            padding: const EdgeInsets.only(top: 20.0,bottom: 10),
            child: Text("Confirmation Code  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               ),
            ),
            Align(alignment:Alignment.centerLeft,child: Text("Enter the confirmation code we send to ",style: TextStyle(fontSize: 18))),
            Align(alignment:Alignment.centerLeft,child:Text("your@gmail.com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
            SizedBox(height: 10,),
            CustomTextField(hint: "Confirmation Code",inVisible: false,onChanged: (data){},),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Didn't recieve any code ? ", style: TextStyle(fontSize: 18),),
                Text("Resend",style: TextStyle(color: KForgetColor,fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
          SizedBox(height:15 ,),
          CustomButton(colour: KColor, title: "Submit", TextColor: Color(0xffffffff), onTap: (){}, width: 370, height: 65),
          SizedBox(height: 15,),
          CustomButton(colour: Color(0xffffffff), title: "Cancel", TextColor:KColor, onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));}, width: 370, height: 65),

        ]
      )
    )
    );
  }
}

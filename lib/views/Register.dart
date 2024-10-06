import 'package:audio_book/Constants.dart';
import 'package:audio_book/views/logIn.dart';
import 'package:audio_book/widgets/CustomButton.dart';
import 'package:audio_book/widgets/TextField.dart';
import 'package:flutter/material.dart';

import 'Verification.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
              child: Text("Register" , style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 15,),
            CustomTextField(hint: "Email",inVisible: false,onChanged: (data){},),
            CustomTextField(hint: "Password",inVisible: true,onChanged: (data){},),
            CustomTextField(hint: "Date of Birth",inVisible: false,onChanged: (data){},),
            SizedBox(height: 15,),
            Row(
              children: [
                Text("By signing up, you agree to our ",style: TextStyle(fontSize: 16),),
                Text("Terms ",style: TextStyle(color: KForgetColor,fontSize: 16,fontWeight: FontWeight.bold)),
                Text(",",style: TextStyle(fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Data Policy",style: TextStyle(color: KForgetColor,fontSize: 16,fontWeight: FontWeight.bold)),
                Text(" and",style: TextStyle(fontSize: 16),),
                Text(" Cookies Policy",style: TextStyle(color: KForgetColor,fontSize: 16,fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 20,),
            CustomButton(colour: KColor, title: "Register", TextColor: Color(0xffffffff), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Verification()));}, width: 370, height: 65),
            SizedBox(height: 15,),
            CustomButton(colour: Color(0xffffffff), title: "Cancel", TextColor: KColor, onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));}, width: 370, height: 65)
          ],
        ),
      ),

    );
  }
}

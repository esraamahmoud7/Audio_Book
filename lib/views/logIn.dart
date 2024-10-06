import 'package:audio_book/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';
import '../widgets/TextField.dart';
import 'Register.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                child: Text("Login to Your Account  ",style: TextStyle(fontSize: 18),),
              ),
            ),
            CustomTextField(hint : "Email",inVisible: false,onChanged: (data){},),
            SizedBox(height: 10,),
            CustomTextField(hint : "Password",inVisible: true,onChanged: (data){},),
            SizedBox(height: 70,),
            CustomButton(colour: KColor, TextColor: Color(0xffffffff),title: "Login",onTap: (){},width: 370,height: 65,),
            SizedBox(height: 5,),
            Align(
              alignment:Alignment.centerRight,
              child: Text("Forget Password ? " ,style: TextStyle(color : KForgetColor,fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.center,
              child: Text("Or Login With ?",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomContainer(image: "assets/logos_google.png"),
                CustomContainer(image: "assets/logos_facebook.png"),
                CustomContainer(image: "assets/logos_twitter.png"),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?",style: TextStyle(fontSize: 16),),
                GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text(" Register",style: TextStyle(color: KForgetColor,fontSize:18 ,fontWeight: FontWeight.bold),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 87,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: KColor,
          )
        ),
        child: Image.asset(image),
      ),
    );
  }
}



import 'package:audio_book/Constants.dart';
import 'package:audio_book/views/logIn.dart';
import 'package:audio_book/widgets/CustomButton.dart';
import 'package:audio_book/widgets/TextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../helper/showSnakeBar.dart';
import 'Welcome.dart';

// import 'Verification.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? email,password,date;

  GlobalKey<FormState> formKey=GlobalKey();

  bool isLoading=false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Image.asset("assets/logo.png",height: 280,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child:  Text("Register" , style: TextStyle(fontSize: 18),),
                ),
                const SizedBox(height: 15,),
                CustomTextField(hint: "Email",inVisible: false,onChanged: (data){ email = data; },),
                CustomTextField(hint: "Password",inVisible: true,onChanged: (data){password = data ;},),
                CustomTextField(hint: "Date of Birth",inVisible: false,onChanged: (data){ date = data ;},),
                const SizedBox(height: 15,),
                 Row(
                  children: [
                    const Text("By signing up, you agree to our ",style: TextStyle(fontSize: 16),),
                    Text("Terms ",style: TextStyle(color: KForgetColor,fontSize: 16,fontWeight: FontWeight.bold)),
                    const Text(",",style: TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  children: [
                    Text("Data Policy",style: TextStyle(color: KForgetColor,fontSize: 16,fontWeight: FontWeight.bold)),
                    const Text(" and",style: TextStyle(fontSize: 16),),
                    Text(" Cookies Policy",style: TextStyle(color: KForgetColor,fontSize: 16,fontWeight: FontWeight.bold))
                  ],
                ),
                const SizedBox(height: 20,),
                CustomButton(colour: KColor, title: "Register", TextColor:const Color(0xffffffff), onTap: ()async
                {
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});
                    try {
                        await RegisterUser();
                        showSnakeBar(
                        context, 'The account created successfully.');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                        } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                        showSnakeBar(context,
                        'The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                        showSnakeBar(context,
                        'The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                      showSnakeBar(context, 'There was an error.');
                    }
                    isLoading = true;
                    setState(() {});
                  }
      
                }, width: 370, height: 65),
                const SizedBox(height: 15,),
                CustomButton(colour:const Color(0xffffffff), title: "Cancel", TextColor: KColor, onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn()));}, width: 370, height: 65)
              ],
            ),
          ),
        ),
      
      ),
    );
  }

  Future<void> RegisterUser() async {
    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
    );
  }
}

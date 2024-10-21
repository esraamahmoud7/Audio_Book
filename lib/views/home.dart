import 'package:audio_book/Constants.dart';
import 'package:audio_book/widgets/CategoryList.dart';
import 'package:flutter/material.dart';

import '../models/UesrSelection.dart';
import '../widgets/booksListViewBuilder.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.user});

  final String id="home";
  final UserSelection user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 24),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row
                  (
                  children: [
                    Image.asset("assets/logo.png",width: 60,),
                    // SizedBox(width: 5,),
                    Text("Audi",style: TextStyle(color: KColor,fontWeight: FontWeight.bold,fontSize: 24),),
                    Text("Books",style: TextStyle(color: KColor,fontSize: 24,fontWeight: FontWeight.w300),),
                    Text(".",style:TextStyle(color: KForgetColor,fontWeight: FontWeight.bold,fontSize: 30)),
                  ],
                ),
                Icon(Icons.settings,color: KColor,size: 30,),
              ],
            ),
            SizedBox(height: 25,),
            Text("Categories",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Categorylist(),
            SizedBox(height: 10,),
            // booksListViewBuilder(user: user,),


          ]
        ),
      ),
    );
  }
}

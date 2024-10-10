import 'package:audio_book/widgets/CommonBackGround.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';
import '../models/UesrSelection.dart';
import '../widgets/TextField.dart';
import '../widgets/selectedTopics.dart';

class PersonalizeSuggestion extends StatelessWidget {
  const PersonalizeSuggestion({super.key, required this.user});



  final UserSelection user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageBack(),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              children: [
                Align(alignment:Alignment.centerLeft,child: Text('Personalize Suggestion',style: TextStyle(color: KTextColor,fontWeight: FontWeight.bold,fontSize: 20),)),
                Row(
                  children: [
                    Text('Choose',style: TextStyle(fontSize: 18),),
                    Text(" min. 3 topic ",style: TextStyle(color: KTextColor,fontWeight: FontWeight.bold,fontSize: 18)),
                    Text("you like, we will give ",style: TextStyle(fontSize: 18)),
                  ],
                ),
                Align(alignment: Alignment.centerLeft,child: Text("you more often that relate to it.",style: TextStyle(fontSize: 18))),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: CustomTextField(hint: "Search Categories",inVisible: false,onChanged: (data){},),
          ),
          SelectedTopics(user: user)
          ,
        ],
      ),
    );
  }
}

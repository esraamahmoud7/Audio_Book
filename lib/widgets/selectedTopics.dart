import 'package:audio_book/views/DoneRegister.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

import '../models/UesrSelection.dart';
import 'CustomButton.dart';

class SelectedTopics extends StatefulWidget {
  const SelectedTopics({super.key, required this.user});

  final UserSelection user;

  @override
  State<SelectedTopics> createState() => _SelectedTopicsState();
}

class _SelectedTopicsState extends State<SelectedTopics> {

  List<String> topics = [
    'Art', 'Business', 'Biography', 'Comedy', 'Culture',
    'Education', 'News', 'Philosophy', 'Psychology', 'Technology', 'Travel'
  ];

  List<String> selectedTopics = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 10,
          runSpacing: 5,
          children: topics.map((topic) {
            return ChoiceChip(
              label: Text(topic),
              labelStyle: TextStyle(
                color: selectedTopics.contains(topic)
                    ? Colors.white
                    : KColor,
                fontWeight: FontWeight.bold,
              ),
              selectedColor: KColor,
              backgroundColor: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(color: KColor),
              ),
              selected: selectedTopics.contains(topic),
              onSelected: (bool selected) {
                ToggleSelection(topic);
              },
            );
          }).toList(),
        ),
        SizedBox(height: 40,),
        //to make button disabled or enable
        ElevatedButton(onPressed: (){
          if(selectedTopics.length<3)
            {
              null;
            }
          else
            {
              SaveSelection();
              Navigator.push(context, MaterialPageRoute(builder: (context) => doneRegister()));

            }
        },
            // inherit = false to stop override with another one
          child: Text("Submit",style: TextStyle(color: Color(0xffffffff),inherit: false),),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(370, 65),
            backgroundColor: selectedTopics.length<3 ? Color(0xffdcd4f4) : KColor,
            shape: RoundedRectangleBorder( // Rounded corners
              borderRadius: BorderRadius.circular(10),
            ),
          )

        ),
        SizedBox(height: 20,),
        CustomButton(colour: Color(0xffffffff), title: "Cancel", TextColor: KColor , onTap: (){}, width: 370, height: 65)

      ],
    );
  }

  void ToggleSelection(String topic)
  {
    setState(() {
      if(selectedTopics.contains(topic))
        {
          selectedTopics.remove(topic);
        }
       else {
        selectedTopics.add(topic);
      }
    });

  }
  void SaveSelection()async
  {
    CollectionReference users = FirebaseFirestore.instance.collection(KCollection);
    String userId= FirebaseAuth.instance.currentUser!.uid;
    await users.add({
      'email' : widget.user.ID,
      'selectedTopics': selectedTopics,
    });

    widget.user.selectedTopics=selectedTopics;


  }
}

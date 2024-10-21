import 'package:audio_book/Constants.dart';
import 'package:flutter/material.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({super.key, required this.topic});

  final String topic;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: KTextFieldColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Center(child: Text(topic,style: TextStyle(fontSize: 18 ),)),

      ),
    );
  }
}

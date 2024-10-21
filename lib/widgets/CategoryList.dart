import 'package:audio_book/widgets/categoryCard.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: topics.length,
          itemBuilder: (context,num)
              {
                return categoryCard(topic: topics[num]);

              }

      ),
    );
  }
}

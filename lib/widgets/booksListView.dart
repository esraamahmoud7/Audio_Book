import 'package:flutter/material.dart';

import '../models/bookModel.dart';
import 'bookCard.dart';

class booksListView extends StatelessWidget {
  const booksListView({super.key, required this.books});

  final List<bookModel> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child:SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount:books.length,
            (context,index)
            {
              return BookItem(book: books[index]);
            }
            )
      )
      // child: ListView.builder(
      //         physics: const BouncingScrollPhysics(),
      //         itemCount: books.length,
      //       itemBuilder:(context,num)
      //         {
      //            return BookItem(book: books[num]);
      //         }
      //     ),
    );
  }
}

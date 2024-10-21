import 'package:flutter/material.dart';

import '../Constants.dart';
import '../models/bookModel.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});
  
  final bookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: KTextFieldColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Image.asset(book.image),

      ),
    );
  }
}

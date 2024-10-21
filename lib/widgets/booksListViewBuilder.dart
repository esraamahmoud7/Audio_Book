import 'package:audio_book/models/bookModel.dart';
import 'package:flutter/material.dart';

import '../models/UesrSelection.dart';
import 'booksListView.dart';

class booksListViewBuilder extends StatefulWidget {
  const booksListViewBuilder({super.key,required this.user});

  final UserSelection user;
  @override
  State<booksListViewBuilder> createState() => _booksListViewBuilderState();
}

class _booksListViewBuilderState extends State<booksListViewBuilder> {
  var future;
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    future=widget.user.InterstedBooks();
  }
  Widget build(BuildContext context) {
    
    return FutureBuilder<List<bookModel>>(
        future: future,
        builder: (context,snapshot)
        {
          if(snapshot.hasData)
          {
            return booksListView(books: snapshot.data!);

          }
          else if(snapshot.hasError)
          {
            return SliverToBoxAdapter(child: Text(" Sorry !! SomeThing is wrong , Please try again :))"),);
          }
          else
          {
            return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),);
          }
        }
    );
    // return SizedBox(
    //   height: 60,
    //   child: ListView.builder(
    //       physics: const BouncingScrollPhysics(),
    //       scrollDirection: Axis.horizontal,
    //       itemCount: widget.books.length,
    //       itemBuilder: (context,num)
    //       {
    //         // return categoryCard(topic: topics[num]);
    //
    //       }

    //   ),
    // )
  }
}

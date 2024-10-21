import 'package:audio_book/models/bookModel.dart';
import 'package:dio/dio.dart';

import '../services.dart';

class UserSelection
{

   List<String> selectedTopics;
   String ID;

  UserSelection({required this.selectedTopics,required this.ID});

  Future<List<bookModel>> InterstedBooks()async
  {
    List<bookModel> books=[];
    for (int i=0;i<selectedTopics.length;i++)
      {
        books.addAll(await BookServices(Dio()).getBooks(category: selectedTopics[i]));
      }
    for(int i=0;i<books.length;i++)
      {
        print(books[i].title);
      }
    return books;
  }
}
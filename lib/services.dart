import 'package:dio/dio.dart';

import 'models/bookModel.dart';

class BookServices
{
    final Dio dio;

    BookServices(this.dio);

    Future<List<bookModel>> getBooks({required String category})async
    {
          try {
            Response response = await dio.get(
                'https://www.googleapis.com/books/v1/volumes?q=subject:${category}&filter=free-ebooks');

            Map<String, dynamic> jsonData = response.data;

            List<dynamic> books = jsonData['items'];

            List<bookModel> booksList = [];

            for (var book in books) {
              bookModel articleModel = bookModel.fromJson(book);

              booksList.add(articleModel);
            }
            return booksList;
          }
          catch(e)
          {
            return [];
          }
        }
    }

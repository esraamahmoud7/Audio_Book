class bookModel
{
    final String title,author,type,image,desc;

    bookModel({required this.title,required this.author,required this.type,required this.image,required this.desc});

    factory bookModel.fromJson(json)
    {
      return bookModel(title: json['volumeInfo']['title'], author: json["authors"][0], type: json["categories"][0], image: json["imageLinks"]["thumbnail"],desc: json["volumeInfo"]["description"]);
    }
}
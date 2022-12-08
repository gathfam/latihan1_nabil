// To parse required this JSON data, do
//
//     final bookData = bookDataFromJson(jsonString);

import 'dart:convert';

BookData bookDataFromJson(String str) => BookData.fromJson(json.decode(str));

String bookDataToJson(BookData data) => json.encode(data.toJson());

class BookData {
    BookData({
        required this.data,
    });

    List<Books> data;

    factory BookData.fromJson(Map<String, dynamic> json) => BookData(
        data: List<Books>.from(json["data"].map((x) => Books.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Books {
    Books({
        required this.title,
        required this.img,
        required this.description,
        required this.genre,
        required this.author,
        required this.rating,
        required this.reviews,
    });

    String title;
    String img;
    String description;
    List<String> genre;
    String author;
    double rating;
    int reviews;

    factory Books.fromJson(Map<String, dynamic> json) => Books(
        title: json["title"],
        img: json["img"],
        description: json["description"],
        genre: List<String>.from(json["genre"].map((x) => x)),
        author: json["author"],
        rating: json["rating"].toDouble(),
        reviews: json["reviews"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
        "description": description,
        "genre": List<dynamic>.from(genre.map((x) => x)),
        "author": author,
        "rating": rating,
        "reviews": reviews,
    };
}

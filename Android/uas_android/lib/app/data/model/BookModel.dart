// To parse this JSON data, do
//
//     final bookData = bookDataFromJson(jsonString);

import 'dart:convert';

BookData bookDataFromJson(String str) => BookData.fromJson(json.decode(str));

String bookDataToJson(BookData data) => json.encode(data.toJson());

class BookData {
    BookData({
        required this.data,
    });

    List<Datum> data;

    factory BookData.fromJson(Map<String, dynamic> json) => BookData(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.title,
        required this.img,
        required this.author,
    });

    String title;
    String img;
    String author;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        title: json["title"],
        img: json["img"],
        author: json["author"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
        "author": author,
    };
}

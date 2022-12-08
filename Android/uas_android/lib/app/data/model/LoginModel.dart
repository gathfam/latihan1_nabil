// To parse required this JSON data, do
//
//     final dataLogin = dataLoginFromJson(jsonString);

import 'dart:convert';

DataLogin dataLoginFromJson(String str) => DataLogin.fromJson(json.decode(str));

String dataLoginToJson(DataLogin data) => json.encode(data.toJson());

class DataLogin {
    DataLogin({
        required this.status,
        required this.msg,
        required this.token,
        required this.user,
    });

    String status;
    String msg;
    String token;
    User user;

    factory DataLogin.fromJson(Map<String, dynamic> json) => DataLogin(
        status: json["status"],
        msg: json["msg"],
        token: json["token"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "token": token,
        "user": user.toJson(),
    };
}

class User {
    User({
        required this.id,
        required this.name,
        required this.email,
        required this.password,
        required this.status,
        required this.jenisKelamin,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String name;
    String email;
    String password;
    String status;
    String jenisKelamin;
    DateTime createdAt;
    DateTime updatedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        status: json["status"],
        jenisKelamin: json["jenisKelamin"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "status": status,
        "jenisKelamin": jenisKelamin,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

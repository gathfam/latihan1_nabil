// To parse this JSON data, do
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
        required this.data,
    });

    String status;
    String msg;
    String token;
    Data data;

    factory DataLogin.fromJson(Map<String, dynamic> json) => DataLogin(
        status: json["status"],
        msg: json["msg"],
        token: json["token"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "token": token,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.id,
        required this.username,
        required this.password,
        required this.namaPetugas,
        required this.level,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String username;
    String password;
    String namaPetugas;
    String level;
    DateTime createdAt;
    DateTime updatedAt;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        namaPetugas: json["nama_petugas"],
        level: json["level"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "nama_petugas": namaPetugas,
        "level": level,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

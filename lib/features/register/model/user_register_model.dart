import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

UserRegister userRegisterFromMap(String str) => UserRegister.fromMap(json.decode(str));

String userRegisterToMap(UserRegister data) => json.encode(data.toMap());

class UserRegister {
  UserRegister({
    this.id,
    this.name,
    this.photoUrl,
    this.email,
    this.registerDate,
    this.lastLogin,
  });

  final String? id;
  final String? name;
  final String? photoUrl;
  final String? email;
  final FieldValue? registerDate;
  final FieldValue? lastLogin;


  factory UserRegister.fromMap(Map<String, dynamic> json) => UserRegister(
    id: json["id"],
    name: json["name"],
    photoUrl: json["photo_url"],
    email: json["email"],
    registerDate: json["register_date"],
    lastLogin: json["last_login"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "photo_url": photoUrl,
    "email": email,
    "register_date": registerDate,
    "last_login": lastLogin,
  };
}



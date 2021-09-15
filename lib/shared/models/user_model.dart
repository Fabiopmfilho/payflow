import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, required this.photoURL});

  // convert to map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  // convert to json
  factory UserModel.fromJSON(String json) =>
      UserModel.fromMap(jsonDecode(json));

  // convert to String
  Map<String, dynamic> toMap() => {'name': name, 'photoURL': photoURL};

  String toJson() => jsonEncode(toMap());
}

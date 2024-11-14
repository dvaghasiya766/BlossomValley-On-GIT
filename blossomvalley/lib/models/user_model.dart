import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? role;

  UserModel({this.id, this.name, this.email, this.password, this.role});

  // Convert a User object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'role': role,
    };
  }

  // Create a User object from a Firebase document snapshot
  UserModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    id = documentSnapshot.id;
    name = documentSnapshot['name'];
    email = documentSnapshot['email'];
    password = documentSnapshot['password'];
    role = documentSnapshot['role'];
  }
}

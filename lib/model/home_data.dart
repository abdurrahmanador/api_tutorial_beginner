import 'package:api_beginner/model/location_data.dart';
import 'package:api_beginner/model/user_name.dart';
import 'package:flutter/cupertino.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final UserName userName;
  final LocationData locationData;

  User({required this.gender,required this.locationData,
    required this.email,
    required this.userName,
    required this.phone,});

  factory User.fromJson(Map<String,dynamic> json){
    return User(
      gender: json["gender"],
      email: json["email"],
      phone:  json["phone"],
      userName: UserName.fromJson(json["name"]),
      locationData: LocationData.fromJson(json["location"]),

      
    );
  }
}

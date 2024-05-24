import 'dart:convert';

import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;

import '../model/home_data.dart';
class HomeController extends GetxController{

  var users=<User>[].obs;
  RxBool isLoading=false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAPI();
  }
  final url=Uri.parse("https://randomuser.me/api/?results=20");

  Future<void> fetchAPI() async{
    try{

      var result=await http.get(url);
      if(result.statusCode==200){
        var responseBody=result.body;
        final json=jsonDecode(responseBody);
        final List<dynamic> results=json['results'];
        users.value=results.map((e) => User.fromJson(e)).toList();

      }
    }
    catch(e){
      print("Error fetching API: $e");

    }
}

}
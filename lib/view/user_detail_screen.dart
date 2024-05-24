import 'package:api_beginner/model/home_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailsScreen extends StatelessWidget {

  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user=Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details",style:TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Name_Details
            Center(
                child: Text(
              "Basic Info",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            )),
            Row(
              children: [
                Text(
                  "Title: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.userName.title}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "First Name: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.userName.first}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Last Name: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.userName.last}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Gender: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.gender}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Phone Number: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.phone}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Email: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.email}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),

            SizedBox(
              height: 16,
            ),
            //Location_Details
            Center(
                child: Text(
              "Location",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            )),
            Row(
              children: [
                Text(
                  "Country: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.locationData.country}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "City: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.locationData.city}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "State: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.locationData.state}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Street Name: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.locationData.street.name}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Street Number: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.locationData.street.number}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "PostCode: ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${user.locationData.postCode}",
                  style: TextStyle(color: Color(0xff2155ff), fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:api_beginner/controller/home_controller.dart';
import 'package:api_beginner/view/user_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Obx(
            () {
          if (homeController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: homeController.users.length,
                    itemBuilder: (context, index) {
                      final user = homeController.users[index];
                      return InkWell(
                        onTap: () {
                          Get.to(() => UserDetailsScreen(), arguments: user);
                        },
                        child: ListTile(
                          title: Text(user.userName.first),
                          subtitle: Text(user.locationData.country),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

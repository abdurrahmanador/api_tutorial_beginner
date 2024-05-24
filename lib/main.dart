import 'package:api_beginner/binding/home_binding.dart';
import 'package:api_beginner/controller/home_controller.dart';
import 'package:api_beginner/view/home_screen.dart';
import 'package:api_beginner/view/user_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/', // Set the initial route
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(
          name: '/userDetails', // Define the route name
          page: () => UserDetailsScreen(), // Provide the page widget
          binding: HomeBindings(), // Optionally, provide the binding for dependency injection
          transition: Transition.leftToRight, // Specify transition animation
        ),
      ],
      initialBinding: HomeBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:api_beginner/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
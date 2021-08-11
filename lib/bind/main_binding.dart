import 'package:get/get.dart';
import 'package:learning_app/controller/home_controller.dart';
import 'package:learning_app/controller/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }

}
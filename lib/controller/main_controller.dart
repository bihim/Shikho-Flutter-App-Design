import 'package:get/get.dart';
import 'package:learning_app/view/screens/exam_screen.dart';
import 'package:learning_app/view/screens/home_screen.dart';
import 'package:learning_app/view/screens/live_class_screen.dart';
import 'package:learning_app/view/screens/profile_screen.dart';

class MainController extends GetxController {
  var bottomIndex = 0.obs;
  var pages = [HomeScreen(), LiveClassScreen(), ExamScreen(), ProfileScreen()];

}

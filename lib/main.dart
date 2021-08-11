import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/bind/main_binding.dart';
import 'package:learning_app/view/main_screen.dart';
import 'package:learning_app/view/screens/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          initialBinding: MainBinding(),
          getPages: [
            GetPage(name: '/', page: ()=>MainScreen()),
          ],
        );
      },
    );
  }
}

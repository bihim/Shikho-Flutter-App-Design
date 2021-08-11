import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/controller/main_controller.dart';
import 'package:learning_app/global/global_values.dart';

class MainScreen extends StatelessWidget {
  MainController mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: IndexedStack(
          children: mainController.pages,
          index: mainController.bottomIndex.value,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: GlobalValues.textColorTopAnother,
          unselectedItemColor: Color(0xFFB1BFCA),
          selectedLabelStyle: TextStyle(fontFamily: 'Mukti', fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Mukti',
          ),
          selectedIconTheme: IconThemeData(
            color: GlobalValues.textColorTopAnother,
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFB1BFCA),
          ),
          onTap: (index) {
            mainController.bottomIndex.value = index;
          },
          currentIndex: mainController.bottomIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chair_rounded),
              label: 'হোম',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videocam_rounded),
              label: 'লাইভ ক্লাস',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: 'এক্সাম',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'প্রোফাইল',
            ),
          ],
        ),
      );
    });
  }
}

library main;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xiaoenai/app/features/index/download/views/download_screen.dart';
import 'package:xiaoenai/app/features/index/home/views/home_screen.dart';

// controllers
part '../controllers/main_controller.dart';

// bindings
part '../bindings/main_binding.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(
        currentIndex: controller.currentIndex,
        onTabTapped: controller.onTabTapped,
      ),
      body: Material(
        child: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: controller.pages,
          ),
        ),
      ),
    );
  }
}

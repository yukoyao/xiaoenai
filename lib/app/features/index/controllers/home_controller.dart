part of home;

class HomeController extends GetxController {

  Rx<int> currentIndex = 0.obs;

  void onTabTapped(int index) {
    currentIndex.value = index;
  }
}
part of main;

class MainController extends GetxController {
  Rx<int> currentIndex = 0.obs;

  void onTabTapped(int index) {
    if (currentIndex.value != index) {
      currentIndex.value = index;
    }
  }

  final List<Widget> pages = [
    const HomeScreen(),
    const DownloadScreen(),
  ];

}

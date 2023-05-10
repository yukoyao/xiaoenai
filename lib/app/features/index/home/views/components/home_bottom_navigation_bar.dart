part of home;

class HomeBottomNavigationBar extends StatelessWidget {
  HomeBottomNavigationBar(
      {Key? key, required this.currentIndex, required this.onTabTapped})
      : super(key: key);

  Rx<int> currentIndex;
  Function(int index) onTabTapped;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: currentIndex.value,
        unselectedFontSize: 10.5,
        selectedFontSize: 10.5,
        selectedItemColor: const Color.fromRGBO(253, 80, 104, 1),
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(ImageRasterPath.tabWeNor),
            ),
            label: '小恩爱',
            activeIcon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(ImageRasterPath.tabWeSec),
            ),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(ImageRasterPath.icBottomTabSingleNor),
            ),
            label: '没有另一半',
            activeIcon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(ImageRasterPath.icBottomTabSingleSec),
            ),
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(ImageRasterPath.tabMeNor),
            ),
            label: '我',
            activeIcon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(ImageRasterPath.tabMeSec),
            ),
          ),
        ],
      ),
    );
  }
}

part of home;

class HomeController extends GetxController {

  late List<String> winnerMsgList;
  @override
  void onInit() {
    super.onInit();

    // 模拟跑马灯数据
    winnerMsgList = [
      '恭喜A先生获取现金 10000 元',
      '恭喜B先生获取现金 20000 元',
      '恭喜C先生获取现金 30000 元',
      '恭喜D先生获取现金 40000 元',
      '恭喜E先生获取现金 50000 元',
    ];
  }
}

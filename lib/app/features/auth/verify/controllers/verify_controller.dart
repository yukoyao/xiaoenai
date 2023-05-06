part of verify;

class VerifyController extends GetxController {
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late TextEditingController num3Controller;
  late TextEditingController num4Controller;

  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;

  String? phone;
  late bool decrease;
  RxInt remainingSeconds = 0.obs;
  RxString remainingSecondsText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    Map<String, dynamic> arguments = Get.arguments;
    phone = arguments['phone'];

    decrease = false;

    remainingSeconds.value = 60;
    remainingSecondsText.value = remainingSeconds.value.toString();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      remainingSeconds.value--;
      if (remainingSeconds.value == 0) {
        timer.cancel();
        remainingSecondsText.value = '';
      } else {
        remainingSecondsText.value = remainingSeconds.value.toString();
      }
    });

    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    num3Controller = TextEditingController();
    num4Controller = TextEditingController();

    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();

    focusNode1.requestFocus();

    num1Controller.addListener(() {
      // 输入规则 第一位输入框输入后将焦点给到第二个输入框
      String n1 = num1Controller.text;
      if (n1.length == 1) {
        decrease = false;
        focusNode2.requestFocus();
      }
    });

    num2Controller.addListener(() {
      // 输入规则 第二位输入框输入后将焦点给到第三个输入框
      String n2 = num2Controller.text;
      if (n2.length == 1) {
        focusNode3.requestFocus();
      }
      if (n2.isEmpty && decrease) {
        focusNode1.requestFocus();
      }
    });

    num3Controller.addListener(() {
      // 输入规则 第三位输入框输入后将焦点给到第四个输入框
      String n3 = num3Controller.text;
      if (n3.length == 1) {
        focusNode4.requestFocus();
      }
      if (n3.isEmpty && decrease) {
        focusNode2.requestFocus();
      }
    });

    num4Controller.addListener(() {
      // 撤销规则 第四位输入框撤销后将焦点给到第三个输入框
      String n4 = num4Controller.text;
      if (n4.length == 1) {
        decrease = true;

        // 如果输入数字为 1234 则进入下一个页面
        StringBuffer sb = StringBuffer();
        sb.write(num1Controller.text);
        sb.write(num2Controller.text);
        sb.write(num3Controller.text);
        sb.write(num4Controller.text);
        String str = sb.toString();
        if (str == '1234') {
          Get.toNamed('/register');
        }
      }
      if (n4.isEmpty && decrease) {
        focusNode3.requestFocus();
      }
    });
  }

  onResentTap() {
    if (remainingSeconds.value == 0) {
      remainingSeconds.value = 60;
      remainingSecondsText.value = remainingSeconds.value.toString();
      Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          remainingSeconds.value--;
          if (remainingSeconds.value == 0) {
            timer.cancel();
            remainingSecondsText.value = '';
          } else {
            remainingSecondsText.value = remainingSeconds.value.toString();
          }
        },
      );
    }
  }
}

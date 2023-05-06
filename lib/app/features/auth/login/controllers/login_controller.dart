part of login;

class LoginController extends GetxController {
  RxBool isEnable = false.obs;

  RxBool isChecked = false.obs;

  TextEditingController textEditingController =
      TextEditingController(text: ' +86');

  TextEditingController phoneEditingController = TextEditingController();

  final shakeAnimationKey = GlobalKey<ShakeAnimationState>();

  @override
  void onInit() {
    super.onInit();
    phoneEditingController.addListener(onTextChanged);
  }

  void onTextChanged() {
    String phone = phoneEditingController.text;
    int length = phone.length;
    if (length >= 13) {
      phoneEditingController.value = TextEditingValue(
        text: phone.substring(0, 13),
        selection: TextSelection.collapsed(offset: length),
      );
      isEnable.value = true;
    } else {
      isEnable.value = false;
    }
  }

  void onAgreeCheckBoxChange(bool? newValue) {
    isChecked.value = newValue!;
  }
}

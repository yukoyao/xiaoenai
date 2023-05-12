part of nickname_update;

class NicknameUpdateController extends GetxController {

  String inputNickname = '';
  RxString nickname = ''.obs;

  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void onInit() {
    super.onInit();
    ProfileDetailController profileDetailController = Get.find<ProfileDetailController>();
    nickname = profileDetailController.nickname;
    textEditingController.text = nickname.value;
  }
}


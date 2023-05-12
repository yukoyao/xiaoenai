part of profile_detail;

class ProfileDetailController extends GetxController {
  RxString nickname= '小嘎嘎'.obs;
  RxString sex = '男'.obs;
  late String afterUpdateNickname;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      // 获取修改后的昵称
      Map<String, dynamic> arguments = Get.arguments;
      afterUpdateNickname = arguments['afterUpdateNickname'];

      nickname.value =
      afterUpdateNickname.isEmpty ? nickname.value : afterUpdateNickname;
    }
  }


}

part of nickname_update;

class NicknameUpdateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NicknameUpdateController());
  }

}

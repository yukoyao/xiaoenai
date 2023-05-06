part of verify;

class VerifyBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => VerifyController());
  }
}
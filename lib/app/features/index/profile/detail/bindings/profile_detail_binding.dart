part of profile_detail;

class ProfileDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileDetailController());
  }
}

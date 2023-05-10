part of download;

class DownloadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DownloadController());
  }

}
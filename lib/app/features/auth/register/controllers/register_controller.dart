part of register;

class RegisterController extends GetxController {
  // 昵称编辑 controller
  TextEditingController nickNameEditingController = TextEditingController();

  // 是否选中男性别
  RxBool womenSelected = false.obs;
  // 是否选中女性别
  RxBool manSelected = false.obs;

  // 上传的文件
  Rx<File> imageFile = Rx<File>(File(''));


}

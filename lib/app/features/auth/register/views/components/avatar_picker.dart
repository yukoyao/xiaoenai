part of register;

class AvatarPicker extends StatelessWidget {
  AvatarPicker(
      {Key? key, this.size = 80, required this.manSelect, required this.imageFile})
      : super(key: key);

  final double size;
  RxBool manSelect;
  Rx<File> imageFile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: const Text('拍照'),
                    onTap: () {
                      Navigator.pop(context);
                      _getImage(ImageSource.camera);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('从相册选择'),
                    onTap: () {
                      Navigator.pop(context);
                      _getImage(ImageSource.gallery);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 60),
        child: Stack(
          children: [
            Obx(() =>
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: imageFile.value.path.isNotEmpty
                      ? Image.file(
                    imageFile.value,
                    width: 70.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  )
                      : manSelect.value
                      ? Image.asset(
                    ImageRasterPath.iconDefaultMan,
                    width: 70.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  )
                      : Image.asset(
                    ImageRasterPath.iconDefaultWomen,
                    width: 70.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),),
            // 蒙版
            Positioned.fill(
              top: 55,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0)),
                ),
                child: const Center(
                  child: Text(
                    '点击更换',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        compressQuality: 100,
        maxWidth: 1000,
        maxHeight: 1000,
        compressFormat: ImageCompressFormat.jpg,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: '编辑头像',
            toolbarColor: const Color.fromRGBO(251, 82, 113, 0.7),
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          )
        ],
      );
      imageFile.value = File(croppedFile!.path);
    }
  }
}

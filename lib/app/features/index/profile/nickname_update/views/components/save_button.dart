part of nickname_update;

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key, required this.nickname, required this.textEditingController}) : super(key: key);

  final TextEditingController textEditingController;
  final RxString nickname;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: TextButton(
        onPressed: () {
          nickname.value = textEditingController.text;
          Get.toNamed('/profile_detail');
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(253, 75, 128, 1),
              Color.fromRGBO(253, 100, 91, 1),
            ]),
            borderRadius: BorderRadius.circular(14),
            color: const Color.fromRGBO(215, 216, 217, 1),
          ),
          child: const Center(
            child: Text(
              '保存',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

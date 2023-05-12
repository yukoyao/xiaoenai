part of profile_detail;

class NicknameItem extends StatelessWidget {
  const NicknameItem({Key? key, required this.nickname}) : super(key: key);

  final RxString nickname;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 4),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(200, 200, 200, 1), // 边框颜色
            width: 0.2, // 边框宽度
          ),
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Text(
              '昵称',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              alignment: Alignment.centerRight,
              child: Obx(
                () => Text(
                  nickname.value,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(143, 143, 148, 1),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              iconSize: 15,
              onPressed: () {
                Get.toNamed('/nickname_update',
                    arguments: {'nickname': nickname.value});
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

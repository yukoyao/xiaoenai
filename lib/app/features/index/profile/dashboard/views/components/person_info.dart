part of profile;

class PersonInfo extends StatelessWidget {
  const PersonInfo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          // 头像框 先用图片代替
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 24,
              child: ClipOval(
                child: Image.asset(
                  ImageRasterPath.iconDefaultMan,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '匿名用户001\n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 2.2,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '恩爱号: 8614788310',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {
                  Get.toNamed('/profile_detail');
                },
                icon: const Icon(Icons.arrow_forward_ios),
                iconSize: 14),
          ),
        ],
      ),
    );
  }
}

part of profile_detail;

class AvatarItem extends StatelessWidget {
  const AvatarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(200, 200, 200, 1), // 边框颜色
            width: 0.2, // 边框宽度
          ),
          bottom: BorderSide(
            color: Color.fromRGBO(200, 200, 200, 1), // 边框颜色
            width: 0.2, // 边框宽度
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 12, right: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: Text(
              '头像',
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
              child:  Image.asset(
                ImageRasterPath.iconDefaultMan,
                width: 60,
                height: 60,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              iconSize: 15,
              onPressed: () {
                Get.to(const ImageDisplayScreen(imageUrl:  ImageRasterPath.iconDefaultMan, backUrl: '/profile_detail',));
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

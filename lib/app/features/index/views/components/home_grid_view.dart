part of home;

class HomeGridView extends StatelessWidget {
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //分类导航
      GridView.count(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        childAspectRatio: 1 / 1.1,
        // 控制宽高比例
        crossAxisCount: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // 禁止滚动
        children: [
          _buildSingle(() {}, ImageRasterPath.icYiQiTingDoor, '一起听'),
          _buildSingle(() {}, ImageRasterPath.redPacket, '1520打卡'),
          _buildSingle(() {}, ImageRasterPath.icBtnDairy, '恋爱日记'),
          _buildSingle(() {}, ImageRasterPath.icBtnAnniversary, '纪念日'),
          _buildSingle(() {}, ImageRasterPath.icBtnAlbum, '相册'),
          _buildSingle(() {}, ImageRasterPath.icBtnSleep, '二人地图'),
          _buildSingle(() {}, ImageRasterPath.icBtnGuoYuan, '恩爱果园'),
          _buildSingle(() {}, ImageRasterPath.icBtnPeriod, '小姨妈'),
          _buildSingle(() {}, ImageRasterPath.icBtnOurHome, '我们的家'),
          _buildSingle(() {}, ImageRasterPath.icBtnUniversity, '情侣大学'),
        ],
      );
  }

  Widget _buildSingle(Function() onTap, String imagePath, String text) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 36,
            child:
            Image.asset(imagePath),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}



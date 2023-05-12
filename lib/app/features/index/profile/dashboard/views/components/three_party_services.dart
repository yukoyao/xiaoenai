part of profile;

class ThreePartyServices extends StatelessWidget {
  const ThreePartyServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 30,
                  bottom: 10,
                ),
                child: const Text(
                  '第三方服务',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ),
            ],
          ),
          GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 1 / 1,
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildSingle(
                () {},
                Icons.feedback,
                '天天领红包',
                '幸运砸金蛋',
                const Color.fromRGBO(121, 213, 143, 1),
              ),
              _buildSingle(
                () {},
                Icons.feedback,
                '限量口红',
                '送给小仙女',
                const Color.fromRGBO(121, 213, 143, 1),
              ),
              _buildSingle(
                () {},
                Icons.feedback,
                '情侣酒店',
                '最高立减200元',
                const Color.fromRGBO(121, 213, 143, 1),
              ),
              _buildSingle(
                () {},
                Icons.feedback,
                '情侣手机壳',
                '免费领取一个',
                const Color.fromRGBO(121, 213, 143, 1),
              ),
              _buildSingle(
                () {},
                Icons.feedback,
                '情侣靓号',
                '免费送另一半',
                const Color.fromRGBO(121, 213, 143, 1),
              ),
              _buildSingle(
                () {},
                Icons.feedback,
                '抓娃娃',
                '情侣必玩游戏',
                const Color.fromRGBO(121, 213, 143, 1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSingle(Function() onTap, IconData iconData, String text,
      String subText, Color color) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(ImageAnimationPath.happyInternationalPolarBearDay, width: 40, height: 50, fit: BoxFit.fill),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          ),
          Text(
            subText,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

part of profile;

class OtherServices extends StatelessWidget {
  const OtherServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      childAspectRatio: 1 / 1.1,
      // 控制宽高比例
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildSingle(
          () {},
          FontAwesomeIcons.wallet,
          '钱包',
          const Color.fromRGBO(251, 195, 29, 1),
        ),
        _buildSingle(
          () {},
          Icons.feedback,
          '帮助与反馈',
          const Color.fromRGBO(121, 213, 143, 1),
        ),
      ],
    );
  }

  Widget _buildSingle(
      Function() onTap, IconData iconData, String text, Color color) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromRGBO(246, 246, 246, 1),
                width: 0.05,
              ),
            ),
            height: 50,
            width: 50,
            child: Icon(
              iconData,
              color: color,
            ),
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

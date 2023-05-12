part of profile_detail;

class CodeItem extends StatelessWidget {
  const CodeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 12, right: 4),
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
              '恩爱号',
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
              child: const Text(
                '8614788310',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(143, 143, 148, 1),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}



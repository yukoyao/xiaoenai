part of download;

class DLSubTitle extends StatelessWidget {
  const DLSubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60),
      child: Text.rich(TextSpan(
        children: [
          TextSpan(
            text: '小恩爱初出社交版啦！\n',
            style: TextStyle(
              fontSize: 18,
              color: Color.fromRGBO(255, 145, 162, 1),
            ),
          ),
          TextSpan(
            text: '正在火热下载中',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromRGBO(255, 134, 152, 1),
            ),
          ),
        ],
      )),
    );
  }
}

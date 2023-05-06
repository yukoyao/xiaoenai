part of login;

class _OtherLoginButton extends StatelessWidget {
  const _OtherLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 90,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 0.4,
                      child: Container(
                        color: const Color.fromRGBO(157, 157, 157, 0.4),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: const Text(
                      '其他登录方式',
                      style: TextStyle(
                          color: Color.fromRGBO(159, 159, 159, 1),
                          fontSize: 10),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 0.4,
                      child: Container(
                        color: const Color.fromRGBO(157, 157, 157, 0.4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 20,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _SingleButton(image: ImageRasterPath.qq, way: 'QQ'),
                  _SingleButton(image: ImageRasterPath.wechat, way: '微信'),
                  _SingleButton(image: ImageRasterPath.weibo, way: '微博'),
                  _SingleButton(image: ImageRasterPath.xiaomi, way: '小米'),
                  _SingleButton(image: ImageRasterPath.mima, way: '密码'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SingleButton extends StatelessWidget {
  const _SingleButton({Key? key, required this.image, required this.way}) : super(key: key);

  final String image;
  final String way;

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(image),
            ),
            onPressed: null,
          ),
          Text(
            way,
            style: const TextStyle(
              color: Color.fromRGBO(182, 182, 182, 1),
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}


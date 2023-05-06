part of home;

class MineCodeText extends StatelessWidget {
  const MineCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '我的真爱码 :  331760',
          style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 34,
            height: 19,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(254, 128, 145, 0.7),
                width: 1,
              ),
              borderRadius:
              const BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Text(
              '复制',
              style: TextStyle(
                fontSize: 11,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}



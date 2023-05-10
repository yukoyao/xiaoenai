part of home;

class FullFunctionalityTipText extends StatelessWidget {
  const FullFunctionalityTipText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 22),
      child: const Center(
        child: Text(
          '绑定另一半即可体验一下情侣专属私密功能',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.4),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}



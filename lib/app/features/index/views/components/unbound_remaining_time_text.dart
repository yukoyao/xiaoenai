part of home;

class UnboundRemainingTimeText extends StatelessWidget {
  const UnboundRemainingTimeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 60),
      child: const Center(
        child: Text(
          '47:59:16',
          style: TextStyle(
            fontSize: 11,
            color: Color.fromRGBO(0, 0, 0, 0.5),
          ),
        ),
      ),
    );
  }
}



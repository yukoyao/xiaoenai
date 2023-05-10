part of home;

class UnboundStatusText extends StatelessWidget {
  const UnboundStatusText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: const Center(
        child: Text(
          '还差一步: 绑定另一半',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}



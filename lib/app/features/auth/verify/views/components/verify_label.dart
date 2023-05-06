part of verify;

class VerifyLabel extends StatelessWidget {
  const VerifyLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('请输入验证码',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22)),
      ],
    );
  }
}

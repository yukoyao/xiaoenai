part of verify;

class VerifyPhoneText extends StatelessWidget {
  const VerifyPhoneText({Key? key, required this.phone}) : super(key: key);

  final String? phone;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            '验证码已发送至 $phone',
            style: const TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(145, 146, 151, 1),
            ),
          ),
        ),
      ],
    );
  }
}



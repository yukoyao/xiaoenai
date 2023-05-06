part of verify;

class ResentTextButton extends StatelessWidget {
  ResentTextButton({Key? key, required this.onResentTap, required this.remainingSecondsText}) : super(key: key);

  Function()? onResentTap;

  RxString remainingSecondsText;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 36),
            child: const Text(
              '收不到短信验证码？',
              style: TextStyle(
                fontSize: 11,
                color: Color.fromRGBO(138, 139, 141, 1),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: onResentTap,
            child: Obx(
                  () => Container(
                padding: const EdgeInsets.only(top: 36),
                alignment: Alignment.centerRight,
                child: Text(
                  '重新发送${remainingSecondsText.value}',
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color.fromRGBO(138, 139, 141, 1),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



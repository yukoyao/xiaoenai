part of login;

class _AgreeCheckBox extends StatelessWidget {
  const _AgreeCheckBox({
    Key? key,
    required this.shakeAnimationKey,
    required this.isChecked,
    required this.onAgreeCheckboxChanged,
  }) : super(key: key);

  final shakeAnimationKey;
  final RxBool isChecked;
  final Function(bool? newValue) onAgreeCheckboxChanged;

  @override
  Widget build(BuildContext context) {
    return ShakeAnimation(
        key: shakeAnimationKey,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        width: 30,
                        child: Transform.scale(
                          scale: 3 / 4,
                          child: Checkbox(
                            activeColor: const Color.fromRGBO(253, 80, 104, 1),
                            value: isChecked.value,
                            onChanged: onAgreeCheckboxChanged,
                            shape: const CircleBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text('我已阅读并同意',
                      style: TextStyle(
                          color: Color.fromRGBO(175, 175, 179, 1),
                          fontSize: 12)),
                  const Text(' 用户协议',
                      style: TextStyle(
                          color: Color.fromRGBO(50, 89, 147, 1), fontSize: 12)),
                  const Text(' 和 ',
                      style: TextStyle(
                          color: Color.fromRGBO(175, 175, 179, 1),
                          fontSize: 12)),
                  const Text('隐私政策',
                      style: TextStyle(
                          color: Color.fromRGBO(50, 89, 147, 1), fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
    );
  }
}

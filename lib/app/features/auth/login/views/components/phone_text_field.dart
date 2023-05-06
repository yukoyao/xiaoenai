part of login;

class _PhoneTextField extends StatelessWidget {
  const _PhoneTextField(
      {Key? key,
      required this.textEditingController,
      required this.phoneEditingController})
      : super(key: key);

  final TextEditingController textEditingController;
  final TextEditingController phoneEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.8),
        color: const Color.fromRGBO(187, 187, 187, 0.1),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: TextField(
              enabled: false,
              textAlign: TextAlign.center,
              controller: textEditingController,
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 1.2,
            height: 12,
            child: Container(
              color: const Color.fromRGBO(172, 172, 175, 0.5),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [PhoneInputFormatter()],
                controller: phoneEditingController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '请输入手机号',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(175, 175, 179, 0.7),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

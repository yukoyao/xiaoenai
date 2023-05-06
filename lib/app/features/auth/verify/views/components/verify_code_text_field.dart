part of verify;

class VerifyCodeTextField extends StatelessWidget {
  VerifyCodeTextField({
    Key? key,
    required this.num1Controller,
    required this.num2Controller,
    required this.num3Controller,
    required this.num4Controller,
    required this.focusNode1,
    required this.focusNode2,
    required this.focusNode3,
    required this.focusNode4,
  }) : super(key: key);

  TextEditingController num1Controller;
  TextEditingController num2Controller;
  TextEditingController num3Controller;
  TextEditingController num4Controller;

  FocusNode focusNode1;
  FocusNode focusNode2;
  FocusNode focusNode3;
  FocusNode focusNode4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SingleTextField(
          margin: const EdgeInsets.only(top: 20, right: 5),
          controller: num1Controller,
          focusNode: focusNode1,
        ),
        _SingleTextField(
          margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
          controller: num2Controller,
          focusNode: focusNode2,
        ),
        _SingleTextField(
          margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
          controller: num3Controller,
          focusNode: focusNode3,
        ),
        _SingleTextField(
          margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
          controller: num4Controller,
          focusNode: focusNode4,
        ),
      ],
    );
  }
}

class _SingleTextField extends StatelessWidget {
  _SingleTextField({
    Key? key,
    required this.margin,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);
  EdgeInsetsGeometry? margin;
  TextEditingController controller;
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.center,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          maxLength: 1,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          decoration: const InputDecoration(
            counterText: '',
            contentPadding:
                EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

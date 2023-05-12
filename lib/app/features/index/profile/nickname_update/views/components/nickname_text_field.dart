part of nickname_update;

class NicknameTextField extends StatelessWidget {
  const NicknameTextField({
    Key? key,
    required this.textEditingController,
    required this.focusNode,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: TextField(
        focusNode: focusNode,
        controller: textEditingController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: IconButton(
            icon: Image.asset(
              ImageRasterPath.close,
              width: 16,
              height: 16,
            ),
            onPressed: () {
              textEditingController.text = '';
              focusNode.requestFocus();
            },
          ),
        ),
        style: const TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}

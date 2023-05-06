part of register;

class NicknameTextField extends StatelessWidget {
  const NicknameTextField({Key? key, required this.textEditingController}) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: TextField(
        controller: textEditingController,
        cursorColor: const Color.fromRGBO(253, 73, 128, 1),
        decoration: InputDecoration(
          hintText: '请输入昵称',
          hintStyle: const TextStyle(
            color: Color.fromRGBO(188, 188, 188, 1),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(157, 157, 157, 0.4),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(253, 73, 128, 1),
            ),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 30,
                child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    final wordpair = WordPair.random();
                    textEditingController.text =
                        wordpair.asCamelCase;
                  },
                  icon: const Icon(
                    Icons.loop,
                    color: Color.fromRGBO(253, 73, 128, 1),
                    size: 18,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final wordPair = WordPair.random();
                  textEditingController.text =
                      wordPair.asCamelCase;
                },
                child: const Text(
                  '随机',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(253, 73, 128, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



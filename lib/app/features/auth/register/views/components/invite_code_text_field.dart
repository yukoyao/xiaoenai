part of register;

class InviteCodeTextField extends StatelessWidget {
  const InviteCodeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 10),
      child: const TextField(
        obscureText: true,
        cursorColor: Color.fromRGBO(253, 73, 128, 1),
        decoration: InputDecoration(
          hintText: '邀请码 (选填)',
          hintStyle: TextStyle(
            color: Color.fromRGBO(188, 188, 188, 1),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(157, 157, 157, 0.4),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(253, 73, 128, 1),
            ),
          ),
        ),
      ),
    );
  }
}


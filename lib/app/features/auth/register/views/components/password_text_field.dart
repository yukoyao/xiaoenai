part of register;

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 10),
      child: const TextField(
        obscureText: true,
        cursorColor: Color.fromRGBO(253, 73, 128, 1),
        decoration: InputDecoration(
          hintText: '请输入密码',
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



part of home;

class BindCodeTextField extends StatelessWidget {
  const BindCodeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0, left: 50, right: 50),
      child: Center(
        child: TextField(
          cursorColor: Colors.black,
          cursorWidth: 0.6,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(245, 245, 245, 1),
            hintText: '输入对方提供的真爱码',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(209, 209, 209, 1),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 8.0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(26.0),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(26.0),
              ),
              borderSide: BorderSide(
                color: Color.fromRGBO(236, 236, 236, 1),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(26.0),
              ),
              borderSide: BorderSide(
                color: Color.fromRGBO(236, 236, 236, 1),
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Container(
                margin:
                const EdgeInsets.only(top: 6, bottom: 6, right: 6),
                alignment: Alignment.center,
                width: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(199, 199, 199, 1),
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
                child: const Text(
                  '绑定',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



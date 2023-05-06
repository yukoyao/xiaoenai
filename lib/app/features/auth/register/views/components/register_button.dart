part of register;

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/home');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 40,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(253, 75, 128, 1),
            Color.fromRGBO(253, 100, 91, 1),
          ]),
          borderRadius: BorderRadius.circular(3),
          color: const Color.fromRGBO(215, 216, 217, 1),
        ),
        child: const Center(
          child: Text(
            '完成',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

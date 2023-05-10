part of download;

class DLButton extends StatelessWidget {
  DLButton({Key? key, required this.onBtnPressed}) : super(key: key);

  Function() onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromRGBO(253, 80, 119, 1),
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 13, bottom: 13),
          ),
          onPressed: onBtnPressed,
          child: const Text(
            '我要下载',
            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

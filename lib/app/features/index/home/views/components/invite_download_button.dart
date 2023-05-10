part of home;

class InviteDownloadButton extends StatelessWidget {
  const InviteDownloadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20.0, left: 50, right: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: const Color.fromRGBO(143, 219, 146, 1),
        ),
      ),
      child: GestureDetector(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
                width: 20,
                child: Image.asset(ImageRasterPath.icInviteDownloadBtn),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '邀请对方下载',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(143, 219, 146, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

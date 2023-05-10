part of download;

class DLTitle extends StatelessWidget {
  const DLTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Text(
        '单身专属',
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}

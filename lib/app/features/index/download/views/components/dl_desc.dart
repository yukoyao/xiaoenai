part of download;

class DLDesc extends StatelessWidget {
  const DLDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Center(
        child: Column(
          children: [
            // 图片
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                ImageRasterPath.logo02,
                width: 80,
                height: 80,
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                '小恩爱社交版',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),
              ),
            ),

            const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  '治愈失恋的游乐园',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 7.5,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

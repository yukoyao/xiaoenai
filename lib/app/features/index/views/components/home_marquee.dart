part of home;

class HomeMarquee extends StatelessWidget {
  const HomeMarquee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      child: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          _buildMarquee(),
        ].map(_wrapWithStuff).toList(),
      ),
    );
  }

  Widget _buildMarquee() {
    return Row(
      children: [
        Expanded(
          child: Marquee(
            text: '这是一条滚动公告',
            style: const TextStyle(fontSize: 16),
            scrollAxis: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            blankSpace: 20.0,
            velocity: 50.0,
            pauseAfterRound: const Duration(seconds: 1),
            startPadding: 10.0,
          ),
        ),
      ],
    );
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(height: 50, color: Colors.white, child: child),
    );
  }
}

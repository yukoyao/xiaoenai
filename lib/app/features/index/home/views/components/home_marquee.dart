part of home;

class HomeMarquee extends StatefulWidget {
  const HomeMarquee({Key? key, required this.msgList}) : super(key: key);

  final List<String> msgList;

  @override
  State<HomeMarquee> createState() => _HomeMarqueeState();
}

class _HomeMarqueeState extends State<HomeMarquee>
    with TickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController animationController;
  late String curText;
  late int curIndex;

  @override
  void initState() {
    super.initState();
    curIndex = 0;
    curText = widget.msgList[0];

    animationController =
        AnimationController(duration: const Duration(seconds: 4), vsync: this);
    animation = TweenSequence<Offset>([
      TweenSequenceItem<Offset>(
          tween: Tween(
            begin: const Offset(0.0, 1.0),
            end: const Offset(0.0, 0),
          ),
          weight: 0.5),
      TweenSequenceItem<Offset>(
          tween: ConstantTween(
            const Offset(0.0, 0),
          ),
          weight: 1),
      TweenSequenceItem<Offset>(
          tween: Tween(
            begin: const Offset(0.0, 0.0),
            end: const Offset(0, -1.0),
          ),
          weight: 0.5),
    ]).animate(animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          // 单次动画完成 切换显示文字
          curIndex++;
          int relIndex = curIndex % widget.msgList.length;
          setState(() {
            curText = widget.msgList[relIndex];
          });
          animationController.reset();
          animationController.forward();
        }
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 17, right: 17),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 235, 194, 1),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        height: 24,
        child: ClipRect(
          child: OverflowBox(
            child: SlideTransition(
              position: animation,
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      FontAwesomeIcons.volumeUp,
                      color: Color.fromRGBO(254, 165, 0, 1),
                      size: 13,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                      child: Text(
                        curText,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(147, 91, 38, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

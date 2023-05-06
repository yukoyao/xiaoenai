import 'package:flutter/material.dart';

class ShakeAnimation extends StatefulWidget {
  final Widget child;
  final double offset;
  final int duration;
  final double fromValue;
  final double toValue;

  const ShakeAnimation({
    Key? key,
    required this.child,
    this.offset = 8.0,
    this.duration = 200,
    this.fromValue = 0.0,
    this.toValue = 1.0,
  }) : super(key: key);

  @override
  State<ShakeAnimation> createState() => ShakeAnimationState();
}

class ShakeAnimationState extends State<ShakeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration));
    _animation = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: widget.offset), weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: widget.offset, end: -widget.offset), weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: -widget.offset, end: 0.0), weight: 1),
    ]).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void startAnimation() async {
    await _animationController.forward(from: 0.0);
    await _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: startAnimation,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => Transform.translate(
          offset: Offset(_animation.value, 0),
          child: child,
        ),
        child: widget.child,
      ),
    );
  }
}



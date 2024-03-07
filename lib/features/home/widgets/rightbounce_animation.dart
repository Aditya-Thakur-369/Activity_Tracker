import 'package:flutter/material.dart';

class BounceFromRightAnimation extends StatefulWidget {
  const BounceFromRightAnimation({Key? key, required this.child, required this.delay});

  final Widget child;
  final double delay;

  @override
  _BounceFromRightAnimationState createState() => _BounceFromRightAnimationState();
}

class _BounceFromRightAnimationState extends State<BounceFromRightAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: (1500 * widget.delay).round()),
      vsync: this,
    );

    final Animation<double> curve = 
        CurvedAnimation(parent: controller, curve: Curves.easeOutCubic);

    animation = Tween<double>(begin: 100.0, end: 0.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(animation.value, 0),
      child: widget.child,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

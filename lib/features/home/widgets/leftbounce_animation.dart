import 'package:flutter/material.dart';

class BounceFromLeftAnimation extends StatefulWidget {
  const BounceFromLeftAnimation({Key? key, required this.child, required this.delay});

  final Widget child;
  final double delay;

  @override
  _BounceFromLeftAnimationState createState() => _BounceFromLeftAnimationState();
}

class _BounceFromLeftAnimationState extends State<BounceFromLeftAnimation>
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

    animation = Tween<double>(begin: -100.0, end: 0.0).animate(curve)
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

import 'package:flutter/material.dart';

class AnimatedLinearProgressIndicator extends StatefulWidget {
  final double value;
  final double delay;

  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.value,
    required this.delay,
  }) : super(key: key);

  @override
  _AnimatedLinearProgressIndicatorState createState() =>
      _AnimatedLinearProgressIndicatorState();
}

class _AnimatedLinearProgressIndicatorState
    extends State<AnimatedLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
         duration: Duration(milliseconds: (1500 * widget.delay).round()),
    );

    _animation = Tween<double>(begin: 0.0, end: widget.value).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return LinearProgressIndicator(
          value: _animation.value,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          minHeight: 4,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
          backgroundColor: Colors.transparent.withOpacity(0.1),
        );
      },
    );
  }
}

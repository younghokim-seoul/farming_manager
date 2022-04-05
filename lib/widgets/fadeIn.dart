
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import '../main.dart';

enum AniProps { opacity, translateX }

class FadeIn extends StatelessWidget {
  final Widget child;
  final double delay;

  FadeIn({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final TimelineTween<AniProps> _tween = TimelineTween<AniProps>()
      ..addScene(
              begin: const Duration(milliseconds: 0),
              end: const Duration(milliseconds: 500))
          .animate(AniProps.opacity, tween: Tween(begin: 0.0, end: 1.0))
      ..addScene(
              begin: const Duration(milliseconds: 0),
              end: const Duration(milliseconds: 500))
          .animate(AniProps.translateX, tween: Tween(begin: 130.0, end: 0.0));

    logger.i("duration " + _tween.duration.toString());

    return PlayAnimation<TimelineValue<AniProps>>(
      delay: Duration(milliseconds: (300 * delay).round()),
      tween: _tween,
      duration: _tween.duration,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(value.get(AniProps.translateX), 0),
          child: child,
        ),
      ),
    );
  }
}

import 'package:animated_reorderable_list/src/animation/provider/animation_effect.dart';
import 'package:flutter/cupertino.dart';

class ScaleInLeft extends AnimationEffect<double> {
  static const double beginValue = 0.0;
  static const double endValue = 1.0;
  final double? begin;
  final double? end;

  /// A scaling effect originating from the left.
  ScaleInLeft({super.delay, super.duration, super.curve, this.begin, this.end});

  @override
  Widget build(BuildContext context, Widget child, Animation<double> animation,
      EffectEntry entry, Duration totalDuration) {
    final Animation<double> scale = buildAnimation(entry, totalDuration,
            begin: begin ?? beginValue, end: endValue)
        .animate(animation);
    return ScaleTransition(
      alignment: Alignment.centerLeft,
      scale: scale,
      child: child,
    );
  }
}

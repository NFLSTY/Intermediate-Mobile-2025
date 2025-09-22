import 'package:flutter/material.dart';
import 'package:serene/shared/theme.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            blue, 
            lavender,
            lightPink,
            peach,
            white
          ])
      ),
    );
  }
}
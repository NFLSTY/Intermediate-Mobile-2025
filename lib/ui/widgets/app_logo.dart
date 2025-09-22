import 'package:flutter/material.dart';
import 'package:serene/shared/theme.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = 100});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: black,
            blurRadius: 15,
            offset: const Offset(0, 5)
          )
        ]
      ),
      child: Image.asset(
        'assets/logo.png', 
        height: size,
        width: size,
      ),
    );
  }
}
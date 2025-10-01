import 'package:flutter/material.dart';
import 'package:serene/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightPink,
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}
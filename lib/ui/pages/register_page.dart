import 'package:flutter/material.dart';
import 'package:serene/ui/widgets/gradient_background.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                GradientBackground(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 120,
                        height: 120,
                      ),),
                  ),
              )
            ],
          )],
        )),
    );
  }
}
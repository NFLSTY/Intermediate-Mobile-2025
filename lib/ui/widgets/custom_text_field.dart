import 'package:flutter/material.dart';
import 'package:serene/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  final IconData icon;

  const CustomTextField({super.key, required this.controller,
  required this.hintText,
  required this.obscureText,
  required this.icon, 
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        filled: true,
        fillColor: white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: softGray
        ),
        prefixIcon: Icon(Icons.person, color: softGray),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,horizontal: 10
        )
      ),
    );
  }
}
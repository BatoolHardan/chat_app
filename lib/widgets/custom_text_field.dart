import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  final String hintText;

  const CustomTextfeild({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}

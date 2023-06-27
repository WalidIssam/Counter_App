import 'package:flutter/material.dart';
import 'package:counter_app/components/custom_txt.dart';

class CustomText extends StatelessWidget {
  CustomText({required this.text, required this.size});
  String text;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

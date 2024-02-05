import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({super.key, required this.name, this.obscureText = false});
  String name;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.input,
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: name,
          // icon: Icon(Icons.password),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}

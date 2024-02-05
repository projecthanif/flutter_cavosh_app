import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  AuthBtn({super.key, required this.imageName});
  String imageName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        width: 115,
        decoration: BoxDecoration(
          color: AppColors.buttonTwo.withOpacity(0.4),
          border: Border.all(
            color: AppColors.buttonTwo.withOpacity(0.9),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Image.asset('images/$imageName'),
        ),
      ),
    );
  }
}

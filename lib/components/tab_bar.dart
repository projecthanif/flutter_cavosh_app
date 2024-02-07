import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  AppTabBar({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
        color: index == 2 ? AppColors.buttonTwo : AppColors.buttonOne,
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
      ),
    );
  }
}

import 'package:cavosh_app/components/app_tabs.dart';
import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTabBar extends StatelessWidget {
  AppTabBar({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.tabName,
  });
  final int index;
  final int currentIndex;
  final String tabName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            index == currentIndex ? AppColors.buttonTwo : AppColors.buttonOne,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 170,
      height: 60,
      child: Row(
        children: [
          const SizedBox(width: 1),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Icon(Icons.coffee),
          ),
          const SizedBox(width: 5),
          Text(
            tabName,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

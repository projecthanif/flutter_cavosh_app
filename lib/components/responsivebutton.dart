import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class ReponsiveBtn extends StatelessWidget {
  ReponsiveBtn({
    super.key,
    required this.height,
    required this.width,
    required this.raduis,
    required this.name,
    this.color = AppColors.buttonOne,
  });
  double height;
  double width;
  double raduis;
  String name;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(raduis),
      ),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

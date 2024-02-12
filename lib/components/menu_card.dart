import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: AppColors.txtInput,
          ),
          child: const Column(
            children: [],
          ),
        );
      },
    );
  }
}

import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.txt1.withOpacity(0.8),
    );
  }
}

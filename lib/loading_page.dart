import 'package:cavosh_app/components/responsivebutton.dart';
import 'package:cavosh_app/misc/color.dart';
import 'package:cavosh_app/pages/splash/signin_page.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 550),
              const Text(
                "Welcome to",
                style: TextStyle(
                  color: AppColors.color1,
                  fontSize: 40,
                ),
              ),
              const Text(
                "Cavosh",
                style: TextStyle(
                  color: AppColors.buttonTwo,
                  fontSize: 70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const AppSignIn(),
                    ),
                  );
                },
                child: ReponsiveBtn(
                  height: 65,
                  width: 250,
                  raduis: 20,
                  name: "Get Started",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

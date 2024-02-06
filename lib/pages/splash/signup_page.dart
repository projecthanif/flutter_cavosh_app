import 'package:cavosh_app/components/alternative_auth_btn.dart';
import 'package:cavosh_app/components/responsivebutton.dart';
import 'package:cavosh_app/components/textfield.dart';
import 'package:cavosh_app/misc/color.dart';
import 'package:cavosh_app/pages/splash/signin_page.dart';
import 'package:flutter/material.dart';

class AppSignUp extends StatelessWidget {
  const AppSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(top: 80, left: 8),
                    child: const Text(
                      "Let's get you Registered!",
                      style: TextStyle(
                        color: AppColors.color1,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 160, left: 20),
                  height: 70,
                  width: 370,
                  decoration: BoxDecoration(
                    color: AppColors.input,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        margin: const EdgeInsets.only(left: 40),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AppSignIn(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      ReponsiveBtn(
                        height: 70,
                        width: 200,
                        raduis: 40,
                        name: "Register",
                        color: AppColors.buttonTwo,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(height: 10),
            AppTextField(name: "Full Name"),
            AppTextField(name: "Email"),
            AppTextField(
              name: "Password",
              obscureText: true,
            ),
            AppTextField(
              name: "Password",
              obscureText: true,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, top: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.buttonTwo,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            ReponsiveBtn(
              height: 50,
              width: 380,
              raduis: 20,
              name: "Register",
            ),
            const SizedBox(height: 10),
            AlternativeBtn(auth: "Login"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                      color: AppColors.buttonTwo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

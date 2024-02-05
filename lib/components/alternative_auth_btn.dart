import 'package:cavosh_app/components/auth_btn.dart';
import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class AlternativeBtn extends StatelessWidget {
  AlternativeBtn({super.key, required this.auth});
  String auth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 110,
                child: Divider(
                  height: 10,
                  color: AppColors.buttonTwo,
                  thickness: 1,
                ),
              ),
              Text("Or $auth with"),
              const SizedBox(
                width: 110,
                child: Divider(
                  height: 10,
                  color: AppColors.buttonTwo,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AuthBtn(imageName: 'facebook.png'),
              AuthBtn(imageName: 'google.png'),
              AuthBtn(imageName: 'apple.png'),
            ],
          ),
        ),
      ],
    );
  }
}

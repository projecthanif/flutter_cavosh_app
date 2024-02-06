import 'package:cavosh_app/components/textfield.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  AppSearchBar({super.key, required this.height});
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height),
      child: AppTextField(name: "Search"),
    );
  }
}

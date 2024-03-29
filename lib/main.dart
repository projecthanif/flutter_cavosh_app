// import 'package:cavosh_app/loading_page.dart';
import 'package:cavosh_app/pages/navpages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const MainNavPage(),
      // home: const LoadingPage(),
    );
  }
}

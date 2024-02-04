import 'package:cavosh_app/pages/splash/signin_page.dart';
import 'package:cavosh_app/loading_page.dart';
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
      home: const LoadingPageWrapper(),
    );
  }
}

class LoadingPageWrapper extends StatefulWidget {
  const LoadingPageWrapper({super.key});

  @override
  State<LoadingPageWrapper> createState() => _LoadingPageWrapperState();
}

class _LoadingPageWrapperState extends State<LoadingPageWrapper> {
  bool _initialized = false;
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _initialized = true;
    });
    _redirectNavigation();
  }

  void _redirectNavigation() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AppSignIn(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _initialized ? const AppSignIn() : const LoadingPage(),
    );
  }
}

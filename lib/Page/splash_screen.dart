import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preference_for_login/Page/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text('Shared Preference'),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Stack(
        children: [
          Positioned(
            left: 123,
            top: 147,
            child: Text(
              'HEALTHY',
              style: const TextStyle(
                fontFamily: 'SairaSemiCondensed',
                fontWeight: FontWeight.w600, // SemiBold
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 126.09,
            top: 185,
            child: Text(
              'CAMPUS',
              style: const TextStyle(
                fontFamily: 'SairaSemiCondensed',
                fontWeight: FontWeight.w900, // Black
                fontSize: 29,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 120,
            top: 230,
            child: Image.asset('assets/images/remov1.png', width: 200),
          ),
        ],
      ),
    );
  }
}

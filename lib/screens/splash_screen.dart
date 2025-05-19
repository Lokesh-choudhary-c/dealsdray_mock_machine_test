// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:mock_machine_test/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 3), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/deals_splash_cropped.png',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            bottom: 100,
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

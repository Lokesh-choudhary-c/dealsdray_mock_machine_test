import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const DealsDrayApp());
}

class DealsDrayApp extends StatelessWidget {
  const DealsDrayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DealsDray',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // optional if you're matching font
      ),
      home: SplashScreen(),
    );
  }
}

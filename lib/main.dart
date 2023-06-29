import 'package:flutter/material.dart';
import 'package:untitled10/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,// Set SplashScreen as the initial route
    );
  }
}

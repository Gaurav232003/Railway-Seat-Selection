import 'package:flutter/material.dart';
import 'selectedseats.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SizedBox(
        height: 150.0,
        width: 150.0,
        child: AnimatedSplashScreen(
          backgroundColor: Colors.white,
          splash: const Icon(
            Icons.train,
            color: Colors.deepPurple,
            size: 100.0,
          ),
          nextScreen: const SelectedSeats(),
          splashTransition: SplashTransition.fadeTransition,
          curve: Curves.easeInExpo,
          animationDuration: const Duration(seconds: 1, milliseconds: 500),
        ),
      ),
    );
  }
}

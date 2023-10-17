import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:evaluationui/views/login.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        backgroundColor: Color(0xff260305),
        splash: SizedBox(
          width: 200,
          height: 500,
          child: Image.asset(
            "assets/images/logo-512.png",
            fit: BoxFit.cover,
          ),
        ),
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        nextScreen: Login(),
      ),
    );
  }
}

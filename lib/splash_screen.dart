
import 'package:flutter/material.dart';
import 'package:flutter_animation/home_screen.dart';
import 'package:flutter_animation/navbar_screen.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  nextScreen(){
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Get.to(const NavBarScreen());
    });
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network("https://lottie.host/f9559e76-1b4a-4bc2-80e9-9cbfa780a675/58iuZXAF6t.json",height: 100),
      ),
    );
  }
}

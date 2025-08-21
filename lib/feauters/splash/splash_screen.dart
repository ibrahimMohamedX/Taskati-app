import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati_app/core/screens.dart';
import 'package:taskati_app/core/variables.dart';
import 'package:taskati_app/utils/helper/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(milliseconds: 5500),
      () => {NavigationData.pushReplacment(context, ScreenData.loginScreen)},
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(width: double.infinity, height: 200),
          Lottie.asset(variablesData.logo, width: 250, repeat: false),
        ],
      ),
    );
  }
}

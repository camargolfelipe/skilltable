import 'package:flutter/material.dart';
import 'package:avanapp/helper/preferences.dart';
import 'package:avanapp/helper/routes.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 4),
        () {
          simpleRoute(context, '/home');
        },
      ),
      builder: (context, snapshot) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: mainColor,
          child: Lottie.asset('assets/splash.json', height: 400.0),
        );
      },
    );
  }
}

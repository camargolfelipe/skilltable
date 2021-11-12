import 'package:flutter/material.dart';
import 'package:avanapp/components/splashscreen.dart';
import 'package:avanapp/pages/badge.dart';
import 'package:avanapp/pages/home.dart';
import 'package:avanapp/pages/login.dart';
import 'package:url_launcher/url_launcher.dart';

final appRoutes = {
  '/': (context) => LoginPage(),
  '/badge': (context) => BadgePage(),
  '/home': (context) => HomePage(),
  '/splash': (context) => Splashscreen(),
};

//FUNCTIONS

simpleRoute(context, String route) {
  return Navigator.pushNamed(context, route);
}

constructRoute(context, Widget route) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => route),
  );
}

webRoute(url) async {
  return await canLaunch(url)
      ? await launch(url)
      : throw 'Could not launch $url';
}

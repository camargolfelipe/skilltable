import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avanapp/components/buttons/primaryButton.dart';
import 'package:avanapp/components/forms/primaryForm.dart';
import 'package:avanapp/helper/preferences.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _login = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: const [mainColor, secondColor],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ListView(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 136.0,
                    width: 136.0,
                  ),
                  SizedBox(height: 80.0),
                  PrimaryForm('Login', _login, 1, false, FontAwesomeIcons.user),
                  PrimaryForm(
                      'Password', _pass, 1, true, FontAwesomeIcons.lock),
                  PrimaryButton('Sign-in', '/splash'),
                ],
              ),
            )));
  }
}

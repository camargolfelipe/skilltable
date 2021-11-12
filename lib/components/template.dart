import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:avanapp/helper/preferences.dart';
import 'package:flutter/material.dart';
import 'package:avanapp/helper/routes.dart';

class Template extends StatelessWidget {
  List<Widget> widget;
  Template(this.widget);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondColor,
        appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: Text(
            'Luís Felipe Camargo',
            style: TextStyle(fontSize: 16.0),
          ),
          backgroundColor: mainColor,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  simpleRoute(context, '/badge');
                },
                icon: Icon(
                  FontAwesomeIcons.idBadge,
                  color: white,
                ))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: const [mainColor, secondColor],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget)),
          ),
        ));
  }
}

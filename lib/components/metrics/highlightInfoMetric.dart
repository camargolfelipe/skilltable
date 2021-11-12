import 'package:avanapp/helper/preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HighlightInfo extends StatelessWidget {
  String title;
  String label;
  HighlightInfo(this.title, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
          ),
        ),
        Expanded(
            flex: 7,
            child: Center(
              child: Text(
                label,
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}

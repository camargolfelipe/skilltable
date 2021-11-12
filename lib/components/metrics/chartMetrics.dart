import 'package:avanapp/helper/preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChartMetrics extends StatelessWidget {
  String title;
  List<String> labels;
  ChartMetrics(this.title, this.labels);

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: CircleAvatar(radius: 40.0)),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChartMetricsItems(true, labels[0]),
                  ChartMetricsItems(false, labels[1])
                ],
              ))
            ],
          ),
        )
      ],
    );
  }
}

class ChartMetricsItems extends StatelessWidget {
  bool isDone;
  String label;
  ChartMetricsItems(this.isDone, this.label);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Icon(FontAwesomeIcons.flag,
                size: 8.0, color: isDone ? orange : grey)),
        Expanded(flex: 6, child: Text(label, style: TextStyle(fontSize: 12.0)))
      ],
    );
  }
}

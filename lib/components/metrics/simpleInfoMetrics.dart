import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SimpleInfo extends StatelessWidget {
  String title;
  List<String> labels;
  SimpleInfo(this.title, this.labels);

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: SimpleInfoItems(false, labels[0], labels[1])),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: SimpleInfoItems(false, labels[2], labels[3])),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SimpleInfoItems extends StatelessWidget {
  bool isDone;
  String label;
  String result;
  SimpleInfoItems(this.isDone, this.label, this.result);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 6,
            child: Text(label,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))),
        Expanded(flex: 6, child: Text(result, style: TextStyle(fontSize: 12.0)))
      ],
    );
  }
}

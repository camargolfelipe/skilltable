import 'package:avanapp/components/metrics/chartMetrics.dart';
import 'package:avanapp/components/metrics/highlightInfoMetric.dart';
import 'package:avanapp/components/metrics/simpleInfoMetrics.dart';
import 'package:avanapp/helper/preferences.dart';
import 'package:flutter/material.dart';

class MainTabItems extends StatelessWidget {
  String type;
  MainTabItems(this.type);
  @override
  Widget build(BuildContext context) {
    chooseWidget() {
      switch (type) {
        case 'chart':
          return ChartMetrics('Chargeability', ['Target', 'Target']);

        case 'simpleInfo':
          return SimpleInfo(
              'Password', ['Expires', '56 days', 'Date', '08 jan, 2022']);
        case 'highlightInfo':
          return HighlightInfo('People after you', '10%');

        default:
          return Center(child: Text('Not Found'));
      }
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 2.2),
      ),
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                color: whitegrey, borderRadius: BorderRadius.circular(10.0)),
            child: chooseWidget()),
      ),
      itemCount: 2,
    );
  }
}

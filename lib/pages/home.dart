import 'package:avanapp/components/metrics/chartMetrics.dart';
import 'package:avanapp/components/metrics/mainBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avanapp/components/template.dart';
import 'package:avanapp/helper/preferences.dart';
import 'package:avanapp/pages/profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Widget> _widgetOptions = <Widget>[
    MainTab(),
    EspecialityTab(
      'Front-End',
      'Senior',
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 14,
        itemBuilder: (context, index) {
          return HomeSimpleCard('asd');
        },
      ),
    ),
    ProfileTab()
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template([
        _widgetOptions.elementAt(_selectedIndex),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        elevation: 1,
        backgroundColor: secondColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.laptopCode),
            label: 'Your especiality',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: thirdColor,
        unselectedItemColor: whitegrey,
      ),
    );
  }
}

class HomeSimpleCard extends StatelessWidget {
  String info;
  HomeSimpleCard(this.info);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        shadowColor: Colors.transparent,
        color: black.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(color: whitegrey, fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}

class EspecialityTab extends StatelessWidget {
  String position;
  String title;
  Widget widget;
  EspecialityTab(this.title, this.position, this.widget);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$title | $position',
            style: const TextStyle(
                color: whitegrey, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 24.0),
        widget
      ],
    );
  }
}

class MainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'My Metrics',
          style: const TextStyle(color: whitegrey, fontSize: 20.0),
        ),
      ),
      MainTabItems('chart'),
      MainTabItems('simpleInfo'),
      MainTabItems('highlightInfo'),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            color: whitegrey,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('My Skills vs My Role Family',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'My Skills',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w500),
                        )),
                        Expanded(child: Text('')),
                        Expanded(
                            child: Text(
                          'Average Number of Skills for my Role Family',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w500),
                        ))
                      ],
                    )),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          '21',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: thirdColor),
                        )),
                        Expanded(
                            child: Text(
                          '>',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        )),
                        Expanded(
                            child: Text(
                          '27',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28.0, fontWeight: FontWeight.bold),
                        ))
                      ],
                    )),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}

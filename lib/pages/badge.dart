import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avanapp/helper/preferences.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BadgePage extends StatefulWidget {
  @override
  State<BadgePage> createState() => _BadgePageState();
}

bool isFrontal = true;

class _BadgePageState extends State<BadgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondColor,
        elevation: 0,
        title: Text('Your Badge'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: thirdColor,
        onPressed: () {
          setState(() {
            isFrontal = !isFrontal;
          });
        },
        child: Icon(FontAwesomeIcons.syncAlt),
      ),
      backgroundColor: mainColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: black, blurRadius: 16.0)],
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(isFrontal
                            ? 'assets/cracha/frente.png'
                            : 'assets/cracha/verso.png'))),
                child: isFrontal
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 24.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: mainColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: CircleAvatar(
                              radius: 95.0,
                              backgroundColor: secondColor,
                              child: CircleAvatar(
                                radius: 90.0,
                                backgroundColor: secondColor,
                                backgroundImage:
                                    AssetImage('assets/profile.jpg'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Text(
                              "Luis Felipe P S Camargo".toUpperCase(),
                              style: TextStyle(
                                  color: white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 32.0, bottom: 8.0),
                            child: Text(
                              "Sr Anls, Mobile & Device Dev",
                              style: TextStyle(
                                color: white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Text(
                            "Software Engineer - Sao Paulo".toUpperCase(),
                            style: TextStyle(
                              color: white,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 24.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: mainColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: QrImage(
                              data: "ESTE É O LUIS FELIPE!",
                              version: QrVersions.auto,
                              size: 200.0,
                            ),
                          ),
                        ],
                      )),
          ),
        ],
      ),
    );
  }
}

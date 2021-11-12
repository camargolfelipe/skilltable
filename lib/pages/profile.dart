import 'package:flutter/material.dart';
import 'package:avanapp/helper/preferences.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 64.0,
              backgroundColor: thirdColor,
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Luís Felipe Camargo".toUpperCase(),
                        style: TextStyle(
                            color: whitegrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)),
                  ),
                  Text("luis.felipe.camargo@avanade.com",
                      style: TextStyle(
                          color: whitegrey.withOpacity(0.7),
                          fontSize: 12.0,
                          fontStyle: FontStyle.italic)),
                  Divider(),
                  Text("Sr Anls, Mobile & Device Dev",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: thirdColor.withOpacity(0.7),
                          fontStyle: FontStyle.italic)),
                  Text("Software Engineer",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: thirdColor.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ],
        ),
        Divider(),
        ProfileTitle('Job Information'),
        ProfileElement('Const Center', '0015070032'),
        ProfileElement('Personal number', '13283527'),
        ProfileElement('Career Adviser', 'N/A'),
        ProfileElement('TC Lead', 'André Gomes'),
        ProfileElement('SubTC Lead', 'Danilo Barreto'),
        Row(
          children: [
            Expanded(child: ProfileElement('Hire since', '22/09/2021')),
            Expanded(child: ProfileElement('Orange for', '1 month')),
          ],
        ),
        ProfileElement('Current Project', 'SuperDigital - Santander'),
        ProfileElement('Project Manager', 'Mario Akira'),
        Row(
          children: [
            Expanded(child: ProfileElement('Project type', 'Long Term')),
            Expanded(child: ProfileElement('Project WBS', 'BWXIE006')),
          ],
        ),
        ProfileTitle('Personal Information'),
        ProfileElement('Personal Email', 'camargo.lfelipe@gmail.com'),
        Row(
          children: [
            Expanded(child: ProfileElement('National ID', '592624250')),
            Expanded(child: ProfileElement('Born date', '2000-02-07')),
          ],
        ),
        Row(
          children: [
            Expanded(child: ProfileElement('Genre', 'Male')),
            Expanded(child: ProfileElement('Marital status', 'Single')),
          ],
        ),
        ProfileElement('Total of skills', '21 skills'),
        ProfileElement('Total of certification', '0 certifications'),
        ProfileElement('Password CountDown', '18 days'),
      ],
    );
  }
}

class ProfileTitle extends StatelessWidget {
  String label;

  ProfileTitle(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        label,
        style: TextStyle(
          color: thirdColor.withOpacity(0.4),
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class ProfileElement extends StatelessWidget {
  String label;
  String data;

  ProfileElement(this.label, this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(color: whitegrey, fontWeight: FontWeight.bold),
          ),
          Text(
            data,
            style: TextStyle(
                color: whitegrey.withOpacity(0.7), fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}

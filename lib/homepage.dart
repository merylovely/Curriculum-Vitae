import 'package:lovely_lu/secondpage.dart';
import 'package:lovely_lu/skills.dart';
import 'package:lovely_lu/educ.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Curriculum Vitae",
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Curriculum Vitae'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 72,
                child: CircleAvatar(
                  radius: 68,
                  backgroundImage: AssetImage('image/Profile.jpg'),
                ),
              ),
            ),
            const Divider(
              height: 0,
              color: Colors.red,
            ),
            buildInfoRow("NAME:", 'Mery Lovely Jana Lu'),
            buildInfoRow("WORK INDUSTRY:", 'Technical Support'),
            const Divider(
              height: 10,
              color: Colors.red,
            ),
            buildContactRow(Icons.phone, '09914751377'),
            buildContactRow(Icons.email, 'merylovelyjana8317@gmail.com'),
            const Divider(
              height: 10,
              color: Colors.red,
            ),
            buildSocialMediaRow(Icons.tiktok, 'Lab_ley17'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIconButton(Icons.info, Colors.green, () {
                  navigateToPage(context, secondpage());
                }),
                SizedBox(width: 20),
                buildIconButton(Icons.school, Colors.green, () {
                  navigateToPage(context, educpage());
                }),
                SizedBox(width: 20),
                buildIconButton(Icons.build_circle, Colors.green, () {
                  navigateToPage(context, skillspage());
                }),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontFamily: 'RobotoMono',
            ),
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContactRow(IconData icon, String value) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.green,
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSocialMediaRow(IconData icon, String value) {
    return Padding(
      padding: EdgeInsets.fromLTRB(80, 20, 0, 0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.green,
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'RobotoMono',
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(IconData icon, Color color, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: IconButton(
        iconSize: 40,
        icon: Icon(
          icon,
          color: color,
        ),
        onPressed: () => onPressed(),
      ),
    );
  }

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

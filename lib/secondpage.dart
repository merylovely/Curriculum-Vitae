import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Text(
              'Name: Mery Lovely Jana Lu',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 19,
                color: Color.fromRGBO(247, 246, 244, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Age: 22 Years Old',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: const Color.fromARGB(255, 248, 246, 242),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Date of Birth: March 08, 2001',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: const Color.fromARGB(255, 250, 248, 245),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Add: 597 Malta Village Dagupan City Pangasinan',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: const Color.fromARGB(255, 240, 238, 235),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Religion: Roman Catholic',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: const Color.fromARGB(255, 240, 238, 235),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Height: 5 1',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: const Color.fromARGB(255, 250, 247, 243),
                fontSize: 19,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              'Weight: 46kg',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                color: const Color.fromARGB(255, 238, 236, 232),
                fontSize: 19,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

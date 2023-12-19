import 'package:flutter/material.dart';

class educpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Educational Attainment"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(110, 20, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: Color.fromRGBO(247, 234, 235, 1),
                      size: 40,
                    ),
                    Text(
                      ' College',
                      style: TextStyle(
                          color: Color.fromARGB(255, 233, 240, 234),
                          fontFamily: 'RobotoMono',
                          fontSize: 30),
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
            height: 20,
            color: Color.fromARGB(255, 253, 5, 5),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: Column(
              children: [
                Text(
                  'Philippines College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromRGBO(239, 245, 240, 1),
                    fontFamily: 'RobotoMono',
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Color.fromRGBO(42, 231, 4, 1),
                      size: 15,
                    ),
                    Text(
                      'Bachelor of Information And Technology',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoMono',
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Color.fromARGB(255, 231, 6, 6),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.school_outlined,
                  color: Color.fromARGB(255, 246, 250, 245),
                  size: 40,
                ),
                Text(
                  ' High School/SHS',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Color.fromARGB(255, 240, 239, 237),
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: Column(
              children: [
                Text(
                  'Dagupan City National High School',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 241, 241, 239),
                    fontFamily: 'RobotoMono',
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Color.fromARGB(255, 29, 233, 10),
                      size: 15,
                    ),
                    Text(
                      'Information Communication and Technology',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoMono',
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Color.fromARGB(255, 236, 5, 5),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: const Color.fromARGB(255, 245, 241, 235),
                      size: 40,
                    ),
                    Text(
                      ' Elementary',
                      style: TextStyle(
                          fontFamily: 'RobotoMono',
                          color: Color.fromARGB(255, 240, 233, 233),
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Cabungan Anda Pangasinan',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 238, 236, 233),
                        fontFamily: 'RobotoMono',
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
///Continueeeeeee 
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/smart_home_app/sm_container.dart';

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SMHome(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        backgroundColor: Colors.grey.shade200,
        dialogBackgroundColor: Colors.grey.shade200,
      ),
    );
  }
}

class SMHome extends StatefulWidget {
  @override
  _SMHomeState createState() => _SMHomeState();
}

class _SMHomeState extends State<SMHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 160,
            decoration: BoxDecoration(
//                color: Colors.grey.shade400,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.grey.shade50,
                      Colors.grey.shade200,
                      Colors.grey.shade200,
                    ]),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(48),
                  topLeft: Radius.circular(48),
                )),
          ),
        ),
      ],
    ));
  }
}

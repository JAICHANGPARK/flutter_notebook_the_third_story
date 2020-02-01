import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/smart_home_app/sm_container.dart';

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SMHome(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey.shade200,
        backgroundColor: Colors.blueGrey.shade200,
        dialogBackgroundColor: Colors.blueGrey.shade200,
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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            SMContainer(
//              child: Text("Hello"),
//            ),
            SMContainerV2(
              child:
                  SizedBox(height: 160, width: 160, child: Text("Hello world")),
            )
          ],
        ),
      ),
    );
  }
}

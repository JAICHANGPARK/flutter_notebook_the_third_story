import 'package:flutter/material.dart';

class JobFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context)=>JopFinderMainPage(),
      },
    );
  }
}
class JopFinderMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<JopFinderMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


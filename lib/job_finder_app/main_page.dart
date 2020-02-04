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
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {  },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search), onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.tune,), onPressed: () {  },
          )
        ],
      ),
    );
  }
}






























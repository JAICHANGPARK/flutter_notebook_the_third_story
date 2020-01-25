import 'package:flutter/material.dart';

class KoalaWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text("Flutter Web"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Placeholder(),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}




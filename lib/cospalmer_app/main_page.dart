import 'package:flutter/material.dart';


class OnlineShopApp extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Placeholder(),
          ),
          Expanded(
            flex: 3,
            child: Placeholder(),
          ),
          Expanded(
            flex: 10,
            child: Placeholder(),
          ),
          Expanded(
            flex: 4,
            child: Placeholder(),
          ),
          Expanded(
            flex: 1,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}

































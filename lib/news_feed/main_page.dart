import 'package:flutter/material.dart';

class NewsFeedApp extends StatelessWidget {
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

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.view_carousel,
        color: Colors.white,),
        backgroundColor: Colors.black,

      ),
    );
  }
}






























import 'package:flutter/material.dart';

class HotelBookingApp extends StatelessWidget {
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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 9,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (newValue) {
          setState(() {
            currentIndex = newValue;
          });
        },
        selectedItemColor: Colors.greenAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Explore")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text("Trips")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Profile")),
        ],
      ),
    );
  }
}

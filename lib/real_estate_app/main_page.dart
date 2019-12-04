import 'package:flutter/material.dart';

class RealEstateApp extends StatelessWidget {
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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text("Trips"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("Saved"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text("Chats"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Profile"),
            ),
          ]),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 12,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.red,
                        shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

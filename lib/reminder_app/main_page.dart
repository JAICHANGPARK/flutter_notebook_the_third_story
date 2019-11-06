import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ReminderApp extends StatelessWidget {
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
            child: Container(
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [
                  
                   Colors.blue[100],
                   Colors.blue[300],
                   Colors.blue[400],
                 ],
                 begin: Alignment.centerLeft,
                 end: Alignment.centerRight,
                 tileMode: TileMode.mirror
               )
             ),
            ),
          ),
          Positioned(
            top: 34,
            left: 24,
            right: 24,
            child: Container(
              height: 38,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black,),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.red[300],
      ),

    );
  }
}

































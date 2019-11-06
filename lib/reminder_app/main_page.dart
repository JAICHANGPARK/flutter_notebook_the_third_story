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

                   Colors.blue[200],
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
            top: 62,
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
          ),
          Positioned(
            left: 32,
            top: 140,
            child: Container(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Daily",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    letterSpacing: 1.3
                  ),),
                  Text("Reminders",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      letterSpacing: 1.3
                  ),),
                  Spacer(),
                  Text("TODAY",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1.3
                  ),)
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

































import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/fitness_activity_tracker/main_page.dart';

class CameraShopApp extends StatelessWidget {
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
      backgroundColor: Colors.blue[50],
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  Text("Camera",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
           child: Row(
             children: <Widget>[
               
             ],
           ),
          ),
          Expanded(
            flex: 10,
            child: Placeholder(),
          ),
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}



























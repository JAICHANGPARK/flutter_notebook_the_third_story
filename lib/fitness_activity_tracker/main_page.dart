import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/fitness_activity_tracker/static_page.dart';
import 'package:page_transition/page_transition.dart';

class FitnessActivityTracker extends StatelessWidget {
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
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            top: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  )),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: (){},
                      ),
                      CircleAvatar(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Statistics",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_up,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context)
                          .push(PageTransition(child: StatisticsPage(), type: PageTransitionType.downToUp));
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}














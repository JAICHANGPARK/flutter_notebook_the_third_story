import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/note_utils.dart';

class FoodReceiptsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FoodMainPage extends StatefulWidget {
  @override
  _FoodMainPageState createState() => _FoodMainPageState();
}

class _FoodMainPageState extends State<FoodMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Badge(
                      badgeColor: Colors.yellow[700],
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(dreamwalkerImg))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: Placeholder(),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Good",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      " evening",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

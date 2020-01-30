import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
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
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 100,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Good",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      " evening!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 64,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 38,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "5 ingredients or less",
                          ),
                          Icon(
                            Icons.clear,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Placeholder(),
                                  ),
                                  Expanded(
                                    child: Placeholder(),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Placeholder(),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Placeholder(),
                            ),
                            Expanded(
                              child: Placeholder(),
                            ),
                            Expanded(
                              child: Placeholder(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Your special",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "recommendations",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

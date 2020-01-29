import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

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
          child:
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16,
              top: 24),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.menu),
                      Badge(
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
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


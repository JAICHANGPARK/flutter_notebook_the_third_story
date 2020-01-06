import 'package:flutter/cupertino.dart';
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
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            left: 8,
            right: 0,
            top: 0,
            bottom: 0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(color: Colors.blue),
                    );
                  }).toList()),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(color: Colors.red),
                    );
                  }).toList()),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(color: Colors.green),
                    );
                  }).toList()),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: ListView(
                      children: List.generate(10, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(color: Colors.yellow),
                    );
                  }).toList()),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.only(top: 24, bottom: 16, left: 16),
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Stories",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 28,
                          width: 68,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(32),
                              gradient: LinearGradient(
                                colors: [Colors.blue, Colors.blue[200]],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              )),
                          child: Center(
                              child: Text("LASTEST",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.view_carousel,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        onPressed: () {},
      ),
    );
  }
}

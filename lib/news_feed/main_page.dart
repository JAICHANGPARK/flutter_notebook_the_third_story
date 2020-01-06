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
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width /2.3,
                  child: ListView(
                    children: List.generate(10, (index){
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                          color: Colors.blue
                        ),
                      );
                    }).toList()
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width /2.3,
                  color: Colors.grey,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width /2.3,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 4.5,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.view_carousel,
        color: Colors.white,),
        backgroundColor: Colors.black, onPressed: () {  },

      ),
    );
  }
}






























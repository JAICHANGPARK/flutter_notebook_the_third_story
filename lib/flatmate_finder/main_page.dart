import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/reminder_app/main_page.dart';

class FlatmateFinder extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              child: Container(
                height: 32,
              ),
            ),
            Container(
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hi,Dreamwalker",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Advertise your room or find",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[300],
                        fontSize: 18,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "housemates with similar interests.",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo[300],
                        fontSize: 18,
                        letterSpacing: 1.2),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 19,
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16),
//          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.indigoAccent,
              ),
              IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {},
              ),
              Container(
                height: 52,
                width: 52,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red[100],
                          spreadRadius: 4,
                          blurRadius: 6)
                    ]),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Text(
                      "HomeChef",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )
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
                    "Hi Mike",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Good afternoon",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

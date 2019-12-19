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
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Suggestion for you now",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                            color: Colors.red,
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                          width: MediaQuery.of(context).size.width / 2.3,
                          decoration: BoxDecoration(
                            color: Colors.red,
                              borderRadius: BorderRadius.circular(8)
                          ),

                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Top 10 home chef of this month",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    )),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        )

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}






















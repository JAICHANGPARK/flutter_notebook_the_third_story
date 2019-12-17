import 'package:flutter/material.dart';

class ASMainPage extends StatefulWidget {
  @override
  _ASMainPageState createState() => _ASMainPageState();
}

class _ASMainPageState extends State<ASMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          top: true,
          left: true,
          right: true,
          bottom: true,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Hi, Dreamwalker",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),),
                      CircleAvatar(backgroundColor: Colors.red,)
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 0, right: 12, bottom: 16, top: 16),
                        width: MediaQuery.of(context).size.width - 120,
                        decoration: BoxDecoration(
                          color: Colors.blue
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0, right: 12, bottom: 16, top: 16),
                        width: MediaQuery.of(context).size.width - 120,
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0, right: 12, bottom: 16, top: 16),
                        width: MediaQuery.of(context).size.width - 120,
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Today's Appointment",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(
                        color: Colors.black
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(
                          color: Colors.black
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 12,
          child: Container(
            height: 72,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 32,
                    ),
                    Container(
                      height: 3,
                      width: 8,
                      decoration: BoxDecoration(color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 32,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.chat,
                      size: 32,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 32,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

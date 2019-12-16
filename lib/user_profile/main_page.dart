import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/11/02/13/01/winter-1791370__340.jpg"),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: MediaQuery.of(context).size.height / 4.5 - 28,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                  right: 24,
                  top: MediaQuery.of(context).size.height / 4.5 + 16,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text("F", style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text("T", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text("I", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Center(
                          child: Text("Y", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 24,
                  top: MediaQuery.of(context).size.height / 3,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Placeholder(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Placeholder(),
                        ),
                        Expanded(
                          flex: 8,
                          child: Placeholder(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.teal),
              child: Center(
                child: Text(
                  "Contact Dreamwalker",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
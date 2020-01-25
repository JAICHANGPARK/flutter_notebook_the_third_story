import 'package:flutter/material.dart';

class KoalaWebApp extends StatelessWidget {
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
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2019/09/04/00/16/koala-4450420_960_720.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 48, right: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Welcome, let's",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "watch some cool",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Koalas",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            hoverColor: Colors.black
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: 160,
                          height: 58,
                          decoration: BoxDecoration(color: Colors.brown[300]),
                          child: Center(
                            child: Text("LOGIN", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: <Widget>[
                            Text("Don't have an accout?",
                              style: TextStyle(
                                letterSpacing: 1.2,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),),
                            Text("Sign Up", style: TextStyle(
                              color: Colors.grey
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

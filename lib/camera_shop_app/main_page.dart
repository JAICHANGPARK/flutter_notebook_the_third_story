import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:notebook_the_third_story/camera_shop_app/detail_page.dart';
import 'package:notebook_the_third_story/fitness_activity_tracker/main_page.dart';
import 'package:page_transition/page_transition.dart';

class CameraShopApp extends StatelessWidget {
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
      backgroundColor: Colors.blue[50],
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Text(
                    "Camera",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 42,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Newest",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 42,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Oldest",
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 42,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Price",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 14,
            child: Padding(
              padding: const EdgeInsets.only(left: 48),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, PageTransition(child: DetailPage(), type: PageTransitionType.downToUp,
                      ));
                    },
                    child: Container(
                      width: 240,
                      margin: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                spreadRadius: 1)
                          ]),
                      padding: EdgeInsets.only(top: 32, bottom: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Canon RF Lenses",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Text(
                            "EF-M to RF adapter design",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 170,
                            margin: EdgeInsets.all(16),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(""
                                    "https://img.vistek.net/prodimgalt/large/427066_7.jpg?tr=w-495,h-495"),
                                fit: BoxFit.fitHeight,
                              )),
                            ),
                          ),
                          Text(
                            "\$544.99",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "2mm sharter flange back\ndistance 20mm",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 38,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 240,
                    margin: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ]),
                    padding: EdgeInsets.only(top: 32, bottom: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Canon RF Lenses",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "EF-M to RF adapter design",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 170,
                          margin: EdgeInsets.all(16),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(""
                                  "https://img.vistek.net/prodimgalt/large/427066_7.jpg?tr=w-495,h-495"),
                              fit: BoxFit.fitHeight,
                            )),
                          ),
                        ),
                        Text(
                          "\$544.99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "2mm sharter flange back\ndistance 20mm",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 38,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

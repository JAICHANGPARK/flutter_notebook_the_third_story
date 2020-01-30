import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/note_utils.dart';

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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Badge(
                      badgeColor: Colors.yellow[700],
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(dreamwalkerImg))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Good",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      " evening!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 64,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 38,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "5 ingredients or less",
                          ),
                          Icon(
                            Icons.clear,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__340.jpg"),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305__340.jpg"),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__340.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707__340.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2014/05/05/19/52/jause-338498__340.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
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
                      "Your special",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "recommendations",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SizedBox(
                        height: 100,
                        child: Container(
                          color: Colors.red,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 100,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage("https://cdn.pixabay.com/photo/2014/09/22/14/49/fried-eggs-456351__340.jpg"),
                                      fit: BoxFit.cover)),
                                );
                              }),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

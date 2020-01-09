import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook_the_third_story/note_utils.dart';

class MobileShopApp extends StatelessWidget {
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 90,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.grey[300], shape: BoxShape.circle),
                          child: Center(
                            child: Icon(Icons.card_travel),
                          ),
                        ),
                        Text("Shop", style: TextStyle(
                            color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 32,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text("Search", style: TextStyle(
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.location_searching,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text("Discover", style: TextStyle(
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text("Wishlist", style: TextStyle(
                          color: Colors.grey
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 42,
                          width: 42,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2
                              ),
                              shape: BoxShape.circle),
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(dreamwalkerImg),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    width: 150,
                    margin: EdgeInsets.only(top: 17, bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

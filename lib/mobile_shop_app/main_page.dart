import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Container(height: 80,
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
                            color: Colors.grey,
                            shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Icon(Icons.card_travel),
                          ),
                        ),
                        Text("Shop")
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
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Icon(Icons.search, size: 32,),
                          ),
                        ),
                        Text("Search")
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
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Icon(Icons.search),
                          ),
                        ),
                        Text("Shop")
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
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Icon(Icons.search),
                          ),
                        ),
                        Text("Shop")
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
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Icon(Icons.search),
                          ),
                        ),
                        Text("Shop")
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    width: 180,
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                    ),
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



















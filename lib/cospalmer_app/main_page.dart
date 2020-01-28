import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlineShopApp extends StatelessWidget {
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
  Widget _buildMainWidget() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "COSPALMER",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "バルセロナ",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.card_giftcard),
                  Text("(0)")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/03/30/18/17/girl-2189247_960_720.jpg"),
                          fit: BoxFit.cover,
                        )),
                  );
                }),
          ),
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 16,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOKYO FRENSH",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "HOODIE",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "\$149.00",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 24,
                  child: Row(
                    children: <Widget>[
                      Text("S"),
                      SizedBox(
                        width: 24,
                      ),
                      Text("M"),
                      SizedBox(
                        width: 24,
                      ),
                      Text("L"),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        height: 32,
                        width: 92,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Center(
                          child: Text(
                            "BUY",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "バルセロナ／東京",
                style: TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _buildMainWidget(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Text(
                    "THE cospalmer peach sweet hoodie is a one"
                            "of a kind piece(only 10 units) is handmade. wear it up with pride"
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 72,
                  ),
                  Text(
                    "Use a promocode".toUpperCase(),
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "To win more".toUpperCase(),
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 72,
                  ),
                  Text(
                    "INFO",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                    height: 50,
                  ),
                  Text(
                    "SIZE CHART",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                    height: 50,
                  ),
                  Text(
                    "SHIPPING",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                    height: 50,
                  )
                ],
              ),
            ),
          )
        ],
      ),
//      body: _buildMainWidget(),
    );
  }
}

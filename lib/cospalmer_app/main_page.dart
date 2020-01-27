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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text("Menu"),
                    Spacer(),
                    Row(
                      children: <Widget>[Text("COSPALMER"), Text("バルセロナ")],
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
                      decoration: BoxDecoration(color: Colors.red),
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
                        Text("TOKYO FRENSH"),
                        Text("HOODIE"),
                        Text("\$149.00")
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
      ),
    );
  }
}

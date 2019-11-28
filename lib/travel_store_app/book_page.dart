import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        title: Text("Product"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.apps),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(left: 24, right: 24,
                        bottom: 16),
                        child: Placeholder(),
                      ),
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(left: 24, right: 24,
                            bottom: 16),
                        child: Placeholder(),
                      ),
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(left: 24, right: 24,
                            bottom: 16),
                        child: Placeholder(),
                      ),
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(left: 24, right: 24,
                            bottom: 16),
                        child: Placeholder(),
                      ),
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(left: 24, right: 24,
                            bottom: 16),
                        child: Placeholder(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        Divider(
                          color: Colors.grey,
                          height: 16,
                          thickness: 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Total", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                            Text("\$420", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Placeholder(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Center(
                child: Text(
                  "Pay",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

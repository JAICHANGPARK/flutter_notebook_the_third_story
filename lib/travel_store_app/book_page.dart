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
                        height: 100,
                        margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Icon(Icons.cancel),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Jacket",style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.brown,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 0, bottom: 24, top: 16),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$ 210",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$ 610",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "-64%",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Icon(Icons.cancel),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Jacket",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.brown,
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 0, bottom: 24, top: 16),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$ 210",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$ 610",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "-64%",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Icon(Icons.cancel),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Jacket",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.brown,
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 0, bottom: 24, top: 16),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$ 210",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$ 610",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "-64%",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Icon(Icons.cancel),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Jacket",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.brown,
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 0, bottom: 24, top: 16),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$ 210",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$ 610",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "-64%",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Icon(Icons.cancel),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Jacket",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            height: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.brown,
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 0, bottom: 24, top: 16),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$ 210",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$ 610",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "-64%",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
                            Text(
                              "Total",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "\$420",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
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
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Select Card",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 8, bottom: 8, top: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.indigo,
                                        borderRadius: BorderRadius.circular(7)),
                                  )),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      right: 8, bottom: 8, top: 8),
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.yellow,
                                      border: Border.all(
                                          color: Colors.orangeAccent)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 8, bottom: 8, top: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.indigo[300],
                                        borderRadius: BorderRadius.circular(7)),
                                  )),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      right: 8, bottom: 8, top: 8),
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey)),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 8, bottom: 8, top: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.indigo[300],
                                        borderRadius: BorderRadius.circular(7)),
                                  )),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      right: 8, bottom: 8, top: 8),
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
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

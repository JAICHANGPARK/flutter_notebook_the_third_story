import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
            flex: 4,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Winter Jacket",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "Best jacket for winter",
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        Text(
                          "season",
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "\$210-320",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
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
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Available shop in sylet"
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Placeholder(),
                )

              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 16, top: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Adidas Shop",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Available",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "From 10:00 A.M. Until 12:00 A.M",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star,
                                color: Colors.orange[100], size: 20),
                            Icon(Icons.star,
                                color: Colors.orange[100], size: 20),
                            Spacer(),
                            Text(
                              "37 ratings",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            )
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
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Center(
                child: Text(
                  "Book now",
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

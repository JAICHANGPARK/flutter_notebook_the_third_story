import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    Text(
                      "Details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                      iconSize: 32,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32),
                      ),
                    ),
                    padding: EdgeInsets.only(
                        left: 24, top: 48, right: 24, bottom: 24),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "\$399.10",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            Text(
                              "40% OFF",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(width: 24,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Before",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "\$459.60",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}











import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Folders",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          Container(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 16, bottom: 16, top: 16),
                                  width: 120,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 16, bottom: 16, top: 16),
                                  width: 120,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.grey,
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 16, bottom: 16, top: 16),
                                  width: 120,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
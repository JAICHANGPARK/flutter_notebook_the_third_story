import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AirtimeMainPage extends StatefulWidget {
  @override
  _AirtimeMainPageState createState() => _AirtimeMainPageState();
}

class _AirtimeMainPageState extends State<AirtimeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 4.5,
                decoration: BoxDecoration(
                    color: Colors.brown[100],
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/06/01/00/20/woman-792818__340.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 5.5,
              bottom: MediaQuery.of(context).size.height / 6,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Container(
                              height: 28,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(32)
                              ),
                              child: Center(
                                child: Text("Requested"),
                              ),
                            ),
                            SizedBox(width: 16,),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)
                              ),
                              child: Icon(Icons.more_horiz, size: 18,),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                        ],
                      ),
                    ),
                    Divider(),
                    Expanded(
                      flex: 3,
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
